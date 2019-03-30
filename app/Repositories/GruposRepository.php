<?php

namespace App\Repositories;

use App\Models\Grupos;
use InfyOm\Generator\Common\BaseRepository;

class GruposRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'nombre',
        'horario_id'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Grupos::class;
    }
}
