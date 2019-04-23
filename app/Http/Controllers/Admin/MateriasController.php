<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Materia;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;
use App\User;

class MateriasController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $materias = Materia::paginate(15);

        return view('admin.materias.index', compact('materias'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $docentes = User::pluck('name', 'id');

        return view('admin.materias.create', compact('docentes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['nombre' => 'required', 'grupo' => 'required', 'id_docente' => 'required', ]);

        Materia::create($request->all());

        Session::flash('flash_message', 'Materia added!');

        return redirect('admin/materias');
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
        $materia = Materia::findOrFail($id);

        return view('admin.materias.show', compact('materia'));
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
        $docentes = User::pluck('name', 'id');

        $materia = Materia::findOrFail($id);

        return view('admin.materias.edit', compact('materia', 'docentes'));
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
        $this->validate($request, ['nombre' => 'required', 'grupo' => 'required', 'id_docente' => 'required', ]);

        $materia = Materia::findOrFail($id);
        $materia->update($request->all());

        Session::flash('flash_message', 'Materia updated!');

        return redirect('admin/materias');
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
        Materia::destroy($id);

        Session::flash('flash_message', 'Materia deleted!');

        return redirect('admin/materias');
    }

}
