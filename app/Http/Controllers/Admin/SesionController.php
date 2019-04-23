<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Sesion;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;

class SesionController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $sesion = Sesion::paginate(15);

        return view('admin.sesion.index', compact('sesion'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('admin.sesion.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        
        Sesion::create($request->all());

        Session::flash('flash_message', 'Sesion added!');

        return redirect('admin/sesion');
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
        $sesion = Sesion::findOrFail($id);

        return view('admin.sesion.show', compact('sesion'));
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
        $sesion = Sesion::findOrFail($id);

        return view('admin.sesion.edit', compact('sesion'));
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
        
        $sesion = Sesion::findOrFail($id);
        $sesion->update($request->all());

        Session::flash('flash_message', 'Sesion updated!');

        return redirect('admin/sesion');
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
        Sesion::destroy($id);

        Session::flash('flash_message', 'Sesion deleted!');

        return redirect('admin/sesion');
    }

}
