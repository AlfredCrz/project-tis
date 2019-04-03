<?php

namespace App\Repositories;

use App\Models\usuarios;
use InfyOm\Generator\Common\BaseRepository;

class usuariosRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'tipo_usuario',
        'nombre',
        'apellido',
        'codigo_sis',
        'direccion',
        'cedula',
        'telefono',
        'email',
        'password'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return usuarios::class;
    }
}
