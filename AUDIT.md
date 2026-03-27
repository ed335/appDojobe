# Auditoria Técnica e Engenharia Reversa - DOJobe.com

Este documento contém a engenharia reversa e o mapeamento técnico da plataforma DOJobe.com, realizado para garantir a segurança e a integridade de futuras implementações.

---

### 1. Resumo executivo do sistema
O DOJobe.com é uma plataforma de **Creator Economy** baseada em assinaturas e venda de conteúdo premium. O sistema gerencia o ciclo completo de um criador: verificação de identidade, publicação de mídia protegida, monetização via múltiplos canais (assinaturas, PPV, gorjetas) e o processamento de saques. A arquitetura é centrada no controle rigoroso de acesso à mídia e na integridade do log financeiro.

### 2. Stack e arquitetura identificadas
*   **Backend:** PHP 8.2+ / **Laravel 12.0** (Arquitetura Monolítica MVC).
*   **Frontend:** Blade Templates + **Livewire 3.0** (componentes reativos) + Bootstrap 5 + Vite.
*   **Banco de Dados:** MySQL/MariaDB.
*   **Autenticação:** Laravel UI/Socialite (Google, FB, Twitter).
*   **Processamento de Mídia:** Intervention Image 3, Laravel-FFMPEG e integração opcional com **Coconut.co** para encoding em nuvem.
*   **Pagamentos:** Ecossistema complexo com Stripe (Cashier/Connect), PayPal, Mercado Pago, OpenPix (Pix), Paystack, CCBill e Mollie.
*   **Realtime:** Pusher/Websockets para chat e notificações globais.

### 3. Estrutura de pastas e responsabilidades
*   `app/Http/Controllers/`: orquestração da lógica. `UserController`, `UpdatesController` (posts) e `SubscriptionsController` são os mais críticos.
*   `app/Http/Controllers/Traits/Functions.php`: **Ponto Crítico.** Trait massiva que centraliza cálculos de comissão, lógica de transação e ativação de assinaturas.
*   `app/Models/`: entidades core. `User.php` e `Updates.php` concentram métodos de verificação de permissão.
*   `app/Http/Middleware/`: `PrivateContent` (bloqueio de visitantes) e `Role` (permissões de admin).
*   `routes/web.php`: mapa de todos os endpoints e orquestração de middlewares.

### 4. Mapa de módulos e funcionalidades
1.  **Feed e Updates:** posts com suporte a fotos, vídeos, áudio, ZIP e EPUB.
2.  **Monetização:** assinaturas recorrentes, PPV (posts e mensagens), Tips (gorjetas) e Wallet interna.
3.  **Comunicação:** DMs, chamadas de vídeo/voz (Agora.io) e Live Streaming.
4.  **Shop:** e-commerce para produtos físicos e digitais.
5.  **Painel Admin:** gestão de usuários, saques, verificações e configurações globais.

### 5. Regras de negócio encontradas
*   **Divisão de Lucros:** a função `earningsAdminUser` desconta as taxas do gateway antes de aplicar a comissão da plataforma.
*   **Controle de Acesso:** o acesso à mídia física é protegido por tokens dinâmicos (`getFileMedia`).
*   **Verificação de Identidade:** criadores só podem receber pagamentos após aprovação manual de documentos.
*   **Bloqueio por País:** criadores podem impedir acesso de países específicos via IP/Cache.

### 6. Fluxos críticos do sistema
1.  **Ciclo de Assinatura:** `buy()` -> Redirecionamento -> Webhook -> `activateSubscription()`.
2.  **Fluxo de PPV:** validação de compra em `PayPerViews` -> processamento financeiro -> registro de acesso.
3.  **Saque:** `Withdrawal` -> débito imediato no `balance` -> aprovação do Admin -> pagamento manual -> confirmação.

### 7. Mapa de dados e entidades
*   `users`: perfis, saldos (`balance`, `wallet`), status de verificação.
*   `updates`: posts, metadados de bloqueio e preço.
*   `subscriptions`: relação fã-criador com expiração.
*   `transactions`: log financeiro imutável.
*   `media`: referências aos arquivos físicos e tokens.

### 8. APIs, serviços e integrações
*   **Pagamentos:** Stripe, PayPal, Mercado Pago, OpenPix.
*   **Notificações:** OneSignal (Push), Mailgun/SMTP.
*   **Mídia:** FFMPEG local e API Coconut.co.

### 9. Pontos frágeis, dívida técnica e riscos
*   **CRÍTICO:** Acoplamento excessivo na `trait Functions`.
*   **ALTO:** Consultas pesadas no `HomeController` (falta de eager loading otimizado).
*   **ALTO:** Lógica de permissão duplicada em vários controllers.
*   **MÉDIO:** Uso de funções depreciadas (`str_random`).

### 10. O que precisa ser preservado
*   O log de `transactions`.
*   A lógica de `Helper::amountGross` para cálculo de taxas.
*   A proteção de mídias via redirecionamento PHP.

### 11. Melhor estratégia para evolução
1.  **Migração para Services:** mover lógicas da trait para classes de serviço.
2.  **Interface de Gateways:** padronizar a entrada de novos meios de pagamento.
3.  **Testes de Integração:** cobrir os fluxos de webhook.

### 12. Perguntas em aberto
1.  Qual o driver de fila ativo em produção para encoding de vídeo?
2.  O agendamento de posts (`scheduled_date`) possui monitoramento de falhas no Cron?

---
*Documentação gerada em 2024.*
