<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => 'O campo :attribute deve ser aceito.',
    'active_url'           => 'O campo :attribute não é uma URL válida.',
    'after'                => 'O campo :attribute deve ser uma data posterior a :date.',
    'after_or_equal'       => 'O campo :attribute deve ser uma data posterior ou igual a :date.',
    'alpha'                => 'O campo :attribute deve conter apenas letras.',
    'alpha_dash'           => 'O campo :attribute deve conter apenas letras, números e traços.',
    "ascii_only"           => "O campo :attribute deve conter apenas letras, números e traços.",
    'alpha_num'            => 'O campo :attribute deve conter apenas letras e números.',
    'array'                => 'O campo :attribute deve ser um array.',
    'before'               => 'O campo :attribute deve ser uma data anterior a :date.',
    'before_or_equal'      => 'O campo :attribute deve ser uma data anterior ou igual a :date.',
    'between'              => [
        'numeric' => 'O campo :attribute deve estar entre :min e :max.',
        'file'    => 'O campo :attribute deve ter entre :min e :max kilobytes.',
        'string'  => 'O campo :attribute deve ter entre :min e :max caracteres.',
        'array'   => 'O campo :attribute deve ter entre :min e :max itens.',
    ],
  'boolean'              => 'O campo :attribute deve ser verdadeiro ou falso.',
  'confirmed'            => 'A confirmação do campo :attribute não confere.',
  'date'                 => 'O campo :attribute não é uma data válida.',
  'date_format'          => 'O campo :attribute não corresponde ao formato :format.',
  'different'            => 'Os campos :attribute e :other devem ser diferentes.',
    'digits'               => 'O campo :attribute deve ter :digits dígitos.',
    'digits_between'       => 'O campo :attribute deve ter entre :min e :max dígitos.',
  'dimensions'           => 'O campo :attribute possui dimensões de imagem inválidas (:min_width x :min_height px).',
  'distinct'             => 'O campo :attribute possui um valor duplicado.',
    'email'                => 'O campo :attribute deve ser um endereço de e-mail válido.',
  'exists'               => 'O :attribute selecionado é inválido.',
    'file'                 => 'O campo :attribute deve ser um arquivo.',
  'filled'               => 'O campo :attribute deve ter um valor.',
  'gt'                   => [
    'numeric' => 'O campo :attribute deve ser maior que :value.',
    'file'    => 'O campo :attribute deve ser maior que :value kilobytes.',
    'string'  => 'O campo :attribute deve ser maior que :value caracteres.',
    'array'   => 'O campo :attribute deve ter mais de :value itens.',
  ],
  'gte'                  => [
    'numeric' => 'O campo :attribute deve ser maior ou igual a :value.',
    'file'    => 'O campo :attribute deve ser maior ou igual a :value kilobytes.',
    'string'  => 'O campo :attribute deve ser maior ou igual a :value caracteres.',
    'array'   => 'O campo :attribute deve ter :value itens ou mais.',
  ],
    'image'                => 'O campo :attribute deve ser uma imagem.',
  'in'                   => 'O :attribute selecionado é inválido.',
  'in_array'             => 'O campo :attribute não existe em :other.',
    'integer'              => 'O campo :attribute deve ser um número inteiro.',
    'ip'                   => 'O campo :attribute deve ser um endereço IP válido.',
  'ipv4'                 => 'O campo :attribute deve ser um endereço IPv4 válido.',
  'ipv6'                 => 'O campo :attribute deve ser um endereço IPv6 válido.',
    'json'                 => 'O campo :attribute deve ser uma string JSON válida.',
  'lt'                   => [
    'numeric' => 'O campo :attribute deve ser menor que :value.',
    'file'    => 'O campo :attribute deve ser menor que :value kilobytes.',
    'string'  => 'O campo :attribute deve ser menor que :value caracteres.',
    'array'   => 'O campo :attribute deve ter menos de :value itens.',
  ],
  'lte'                  => [
    'numeric' => 'O campo :attribute deve ser menor ou igual a :value.',
    'file'    => 'O campo :attribute deve ser menor ou igual a :value kilobytes.',
    'string'  => 'O campo :attribute deve ser menor ou igual a :value caracteres.',
    'array'   => 'O campo :attribute não deve ter mais que :value itens.',
  ],
  'max'                  => [
    'numeric' => 'O campo :attribute não pode ser maior que :max.',
    'file'    => 'O campo :attribute não pode ser maior que :max kilobytes.',
    'string'  => 'O campo :attribute não pode ser maior que :max caracteres.',
    'array'   => 'O campo :attribute não pode ter mais que :max itens.',
  ],
  'mimes'                => 'O campo :attribute deve ser um arquivo do tipo: :values.',
  'mimetypes'            => 'O campo :attribute deve ser um arquivo do tipo: :values.',
    'min'                  => [
        'numeric' => 'O campo :attribute deve ser no mínimo :min.',
        'file'    => 'O campo :attribute deve ter no mínimo :min kilobytes.',
        'string'  => 'O campo :attribute deve ter no mínimo :min caracteres.',
        'array'   => 'O campo :attribute deve ter no mínimo :min itens.',
    ],
  'not_in'               => 'O :attribute selecionado é inválido.',
    'not_regex'            => 'O formato do campo :attribute é inválido.',
  'numeric'              => 'O campo :attribute deve ser um número.',
  'present'              => 'O campo :attribute deve estar presente.',
    'regex'                => 'O formato do campo :attribute é inválido.',
    'required'             => 'O campo :attribute é obrigatório.',
    'required_if'          => 'O campo :attribute é obrigatório quando :other é :value.',
    'required_unless'      => 'O campo :attribute é obrigatório a menos que :other esteja em :values.',
  'required_with'        => 'O campo :attribute é obrigatório quando :values está presente.',
  'required_with_all'    => 'O campo :attribute é obrigatório quando :values está presente.',
  'required_without'     => 'O campo :attribute é obrigatório quando :values não está presente.',
  'required_without_all' => 'O campo :attribute é obrigatório quando nenhum dos :values está presente.',
  'same'                 => 'Os campos :attribute e :other devem corresponder.',
  'size'                 => [
    'numeric' => 'O campo :attribute deve ser :size.',
    'file'    => 'O campo :attribute deve ter :size kilobytes.',
    'string'  => 'O campo :attribute deve ter :size caracteres.',
    'array'   => 'O campo :attribute deve conter :size itens.',
  ],
    'string'               => 'O campo :attribute deve ser uma string.',
  'timezone'             => 'O campo :attribute deve ser uma zona válida.',
  'unique'               => 'O campo :attribute já está em uso.',
  'uploaded'             => 'Falha ao enviar o campo :attribute.',
    'url'                  => 'O formato do campo :attribute é inválido.',
    "account_not_confirmed" => "Sua conta não está confirmada, por favor verifique seu e-mail",
    "user_suspended"        => "Sua conta foi suspensa, entre em contato conosco se for um erro",
    "letters"              => "O campo :attribute deve conter pelo menos uma letra ou número",
    'video_url'          => 'URL inválida, só é permitido Youtube e Vimeo.',
    'update_max_length' => 'O post não pode ter mais que :max caracteres.',
    'update_min_length' => 'O post deve ter pelo menos :min caracteres.',
    'video_url_required'   => 'O campo URL do vídeo é obrigatório quando o conteúdo em destaque é vídeo.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

  'attributes' => [
    'agree_gdpr' => 'caixa Concordo com o tratamento de dados pessoais',
    'agree_terms' => 'caixa Concordo com os Termos e Condições',
    'agree_terms_privacy' => 'caixa Concordo com os Termos, Condições e Política de Privacidade',
    'full_name' => 'Nome completo',
    'name' => 'Nome',
    'username'  => 'Nome de usuário',
    'username_email' => 'Nome de usuário ou E-mail',
    'email'     => 'E-mail',
    'password'  => 'Senha',
    'password_confirmation' => 'Confirmação de senha',
    'website'   => 'Site',
    'location' => 'Localização',
    'countries_id' => 'País',
    'twitter'   => 'Twitter',
    'facebook'   => 'Facebook',
    'google'   => 'Google',
    'instagram'   => 'Instagram',
    'comment' => 'Comentário',
    'title' => 'Título',
    'description' => 'Descrição',
    'old_password' => 'Senha antiga',
    'new_password' => 'Nova senha',
    'email_paypal' => 'E-mail PayPal',
    'email_paypal_confirmation' => 'Confirmação do E-mail PayPal',
    'bank_details' => 'Dados bancários',
    'video_url' => 'URL do vídeo',
    'categories_id' => 'Categoria',
    'story' => 'Story',
    'image' => 'Imagem',
    'avatar' => 'Avatar',
    'message' => 'Mensagem',
    'profession' => 'Profissão',
    'thumbnail' => 'Miniatura',
    'address' => 'Endereço',
    'city' => 'Cidade',
    'zip' => 'CEP',
    'payment_gateway' => 'Gateway de pagamento',
    'payment_gateway_tip' => 'Gateway de pagamento',
    'MAIL_FROM_ADDRESS' => 'E-mail no-reply',
    'FILESYSTEM_DRIVER' => 'Disco',
    'price' => 'Preço',
    'amount' => 'Valor',
    'birthdate' => 'Data de nascimento',
    'navbar_background_color' => 'Cor de fundo da navbar',
    'navbar_text_color' => 'Cor do texto da navbar',
    'footer_background_color' => 'Cor de fundo do rodapé',
    'footer_text_color' => 'Cor do texto do rodapé',

      'AWS_ACCESS_KEY_ID' => 'Amazon Key', // Not necessary edit
      'AWS_SECRET_ACCESS_KEY' => 'Amazon Secret', // Not necessary edit
      'AWS_DEFAULT_REGION' => 'Amazon Region', // Not necessary edit
      'AWS_BUCKET' => 'Amazon Bucket', // Not necessary edit

      'DOS_ACCESS_KEY_ID' => 'DigitalOcean Key', // Not necessary edit
      'DOS_SECRET_ACCESS_KEY' => 'DigitalOcean Secret', // Not necessary edit
      'DOS_DEFAULT_REGION' => 'DigitalOcean Region', // Not necessary edit
      'DOS_BUCKET' => 'DigitalOcean Bucket', // Not necessary edit

      'WAS_ACCESS_KEY_ID' => 'Wasabi Key', // Not necessary edit
      'WAS_SECRET_ACCESS_KEY' => 'Wasabi Secret', // Not necessary edit
      'WAS_DEFAULT_REGION' => 'Wasabi Region', // Not necessary edit
      'WAS_BUCKET' => 'Wasabi Bucket', // Not necessary edit

      //===== v2.0
      'BACKBLAZE_ACCOUNT_ID' => 'Backblaze Account ID', // Not necessary edit
      'BACKBLAZE_APP_KEY' => 'Backblaze Master Application Key', // Not necessary edit
      'BACKBLAZE_BUCKET' => 'Backblaze Bucket Name', // Not necessary edit
      'BACKBLAZE_BUCKET_REGION' => 'Backblaze Bucket Region', // Not necessary edit
      'BACKBLAZE_BUCKET_ID' => 'Backblaze Bucket Endpoint', // Not necessary edit

      'VULTR_ACCESS_KEY' => 'Vultr Key', // Not necessary edit
      'VULTR_SECRET_KEY' => 'Vultr Secret', // Not necessary edit
      'VULTR_REGION' => 'Vultr Region', // Not necessary edit
      'VULTR_BUCKET' => 'Vultr Bucket', // Not necessary edit
  	],

];
