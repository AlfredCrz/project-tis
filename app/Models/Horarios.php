<?php

namespace App\Models;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * @SWG\Definition(
 *      definition="Horarios",
 *      required={""},
 *      @SWG\Property(
 *          property="id",
 *          description="id",
 *          type="integer",
 *          format="int32"
 *      ),
 *      @SWG\Property(
 *          property="horaInicio",
 *          description="horaInicio",
 *          type="string",
 *          format="date"
 *      ),
 *      @SWG\Property(
 *          property="horaFinal",
 *          description="horaFinal",
 *          type="string",
 *          format="date"
 *      ),
 *      @SWG\Property(
 *          property="created_at",
 *          description="created_at",
 *          type="string",
 *          format="date-time"
 *      ),
 *      @SWG\Property(
 *          property="updated_at",
 *          description="updated_at",
 *          type="string",
 *          format="date-time"
 *      )
 * )
 */
class Horarios extends Model
{
    use SoftDeletes;

    public $table = 'horarios';
    

    protected $dates = ['deleted_at'];


    public $fillable = [
        'horaInicio',
        'horaFinal'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'horaInicio' => 'date',
        'horaFinal' => 'date'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    
}
