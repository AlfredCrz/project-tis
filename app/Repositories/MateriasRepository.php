<?php

namespace App\Repositories;

use App\Models\Materias;
use InfyOm\Generator\Common\BaseRepository;

class MateriasRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'nombre',
        'codigo',
        'gestion',
        'grupo_id'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Materias::class;
    }
}
