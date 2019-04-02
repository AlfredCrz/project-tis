<?php

namespace App\Repositories;

use App\Models\materias;
use InfyOm\Generator\Common\BaseRepository;

class materiasRepository extends BaseRepository
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
        return materias::class;
    }
}
