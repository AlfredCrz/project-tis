<?php

namespace App\Repositories;

use App\Models\grupos;
use InfyOm\Generator\Common\BaseRepository;

class gruposRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'dia',
        'horario_id'
    ];

    /**
     * Configure the Model
     **/
    public function model()
    {
        return grupos::class;
    }
}
