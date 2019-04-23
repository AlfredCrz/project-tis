<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Portafolio;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Session;

class PortafolioController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $portafolio = Portafolio::paginate(15);

        return view('admin.portafolio.index', compact('portafolio'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        return view('admin.portafolio.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validate($request, ['nombre' => 'required', ]);

        Portafolio::create($request->all());

        Session::flash('flash_message', 'Portafolio added!');

        return redirect('admin/portafolio');
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
        $portafolio = Portafolio::findOrFail($id);

        return view('admin.portafolio.show', compact('portafolio'));
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
        $portafolio = Portafolio::findOrFail($id);

        return view('admin.portafolio.edit', compact('portafolio'));
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
        $this->validate($request, ['nombre' => 'required', ]);

        $portafolio = Portafolio::findOrFail($id);
        $portafolio->update($request->all());

        Session::flash('flash_message', 'Portafolio updated!');

        return redirect('admin/portafolio');
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
        Portafolio::destroy($id);

        Session::flash('flash_message', 'Portafolio deleted!');

        return redirect('admin/portafolio');
    }

}
