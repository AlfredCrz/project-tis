<?php

namespace App\Repositories;

use App\Models\Horarios;
use InfyOm\Generator\Common\BaseRepository;

class HorariosRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'horaInicio',
        'horaFinal'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return Horarios::class;
    }
}
