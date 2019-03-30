<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateHorariosRequest;
use App\Http\Requests\UpdateHorariosRequest;
use App\Repositories\HorariosRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class HorariosController extends AppBaseController
{
    /** @var  HorariosRepository */
    private $horariosRepository;

    public function __construct(HorariosRepository $horariosRepo)
    {
        $this->horariosRepository = $horariosRepo;
    }

    /**
     * Display a listing of the Horarios.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->horariosRepository->pushCriteria(new RequestCriteria($request));
        $horarios = $this->horariosRepository->all();

        return view('horarios.index')
            ->with('horarios', $horarios);
    }

    /**
     * Show the form for creating a new Horarios.
     *
     * @return Response
     */
    public function create()
    {
        return view('horarios.create');
    }

    /**
     * Store a newly created Horarios in storage.
     *
     * @param CreateHorariosRequest $request
     *
     * @return Response
     */
    public function store(CreateHorariosRequest $request)
    {
        $input = $request->all();

        $horarios = $this->horariosRepository->create($input);

        Flash::success('Horarios saved successfully.');

        return redirect(route('horarios.index'));
    }

    /**
     * Display the specified Horarios.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $horarios = $this->horariosRepository->findWithoutFail($id);

        if (empty($horarios)) {
            Flash::error('Horarios not found');

            return redirect(route('horarios.index'));
        }

        return view('horarios.show')->with('horarios', $horarios);
    }

    /**
     * Show the form for editing the specified Horarios.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $horarios = $this->horariosRepository->findWithoutFail($id);

        if (empty($horarios)) {
            Flash::error('Horarios not found');

            return redirect(route('horarios.index'));
        }

        return view('horarios.edit')->with('horarios', $horarios);
    }

    /**
     * Update the specified Horarios in storage.
     *
     * @param  int              $id
     * @param UpdateHorariosRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateHorariosRequest $request)
    {
        $horarios = $this->horariosRepository->findWithoutFail($id);

        if (empty($horarios)) {
            Flash::error('Horarios not found');

            return redirect(route('horarios.index'));
        }

        $horarios = $this->horariosRepository->update($request->all(), $id);

        Flash::success('Horarios updated successfully.');

        return redirect(route('horarios.index'));
    }

    /**
     * Remove the specified Horarios from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $horarios = $this->horariosRepository->findWithoutFail($id);

        if (empty($horarios)) {
            Flash::error('Horarios not found');

            return redirect(route('horarios.index'));
        }

        $this->horariosRepository->delete($id);

        Flash::success('Horarios deleted successfully.');

        return redirect(route('horarios.index'));
    }
}
