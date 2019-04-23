<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Materia extends Model
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'materias';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nombre', 'grupo', 'id_docente'];

}
