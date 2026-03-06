<?php

//App\Models\Settings.php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    // Defina a tabela associada ao modelo, se necessário
    protected $table = 'settings';

    // Defina os campos que podem ser preenchidos
    protected $fillable = [
        'tax_on_wallet',
        // Outros campos de configuração
    ];
}