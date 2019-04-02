<?php

namespace App\Repositories;

use App\Models\horas;
use InfyOm\Generator\Common\BaseRepository;

class horasRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'hora_inicio',
        'hora_final'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return horas::class;
    }
}
