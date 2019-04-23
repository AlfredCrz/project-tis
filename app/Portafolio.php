<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Portafolio extends Model
{

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'portafolios';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nombre'];

}
