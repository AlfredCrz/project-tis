<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Horario;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;

class HorariosController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $horarios = Horario::paginate(15);

        return view('admin.horarios.index', compact('horarios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('admin.horarios.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['dia' => 'required', 'hora_inicio' => 'required', 'hora_final' => 'required', ]);

        Horario::create($request->all());

        Session::flash('flash_message', 'Horario added!');

        return redirect('admin/horarios');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function show($id)
    {
        $horario = Horario::findOrFail($id);

        return view('admin.horarios.show', compact('horario'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $horario = Horario::findOrFail($id);

        return view('admin.horarios.edit', compact('horario'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function update($id, Request $request)
    {
        $this->validate($request, ['dia' => 'required', 'hora_inicio' => 'required', 'hora_final' => 'required', ]);

        $horario = Horario::findOrFail($id);
        $horario->update($request->all());

        Session::flash('flash_message', 'Horario updated!');

        return redirect('admin/horarios');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        Horario::destroy($id);

        Session::flash('flash_message', 'Horario deleted!');

        return redirect('admin/horarios');
    }

}
