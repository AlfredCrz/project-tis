<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Grupo;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;
use App\Horario;

class GruposController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $grupos = Grupo::paginate(15);

        return view('admin.grupos.index', compact('grupos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $horarios = Horario::pluck('dia', 'id');
        
        return view('admin.grupos.create', compact('horarios'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['laborario' => 'required', ]);

        Grupo::create($request->all());

        Session::flash('flash_message', 'Grupo added!');

        return redirect('admin/grupos');
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
        $grupo = Grupo::findOrFail($id);

        return view('admin.grupos.show', compact('grupo'));
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
        $grupo = Grupo::findOrFail($id);

        return view('admin.grupos.edit', compact('grupo'));
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
        $this->validate($request, ['laborario' => 'required', ]);

        $grupo = Grupo::findOrFail($id);
        $grupo->update($request->all());

        Session::flash('flash_message', 'Grupo updated!');

        return redirect('admin/grupos');
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
        Grupo::destroy($id);

        Session::flash('flash_message', 'Grupo deleted!');

        return redirect('admin/grupos');
    }

}
