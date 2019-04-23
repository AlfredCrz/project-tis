<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Horario extends Model
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'horarios';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['dia', 'hora_inicio', 'hora_final'];

    public function grupos()
    {
        return $this->belongsTo('App\Grupo');
    }
}
