<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Grupo extends Model
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'grupos';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['laborario', 'id_horario'];

    public function horarios()
    {
        return $this->belongsTo('App\Horario');
    }
}
