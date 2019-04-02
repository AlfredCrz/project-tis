<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreatehorasRequest;
use App\Http\Requests\UpdatehorasRequest;
use App\Repositories\horasRepository;
use App\Http\Controllers\AppBaseController;
use Illuminate\Http\Request;
use Flash;
use Prettus\Repository\Criteria\RequestCriteria;
use Response;

class horasController extends AppBaseController
{
    /** @var  horasRepository */
    private $horasRepository;

    public function __construct(horasRepository $horasRepo)
    {
        $this->horasRepository = $horasRepo;
    }

    /**
     * Display a listing of the horas.
     *
     * @param Request $request
     * @return Response
     */
    public function index(Request $request)
    {
        $this->horasRepository->pushCriteria(new RequestCriteria($request));
        $horas = $this->horasRepository->all();

        return view('horas.index')
            ->with('horas', $horas);
    }

    /**
     * Show the form for creating a new horas.
     *
     * @return Response
     */
    public function create()
    {
        return view('horas.create');
    }

    /**
     * Store a newly created horas in storage.
     *
     * @param CreatehorasRequest $request
     *
     * @return Response
     */
    public function store(CreatehorasRequest $request)
    {
        $input = $request->all();

        $horas = $this->horasRepository->create($input);

        Flash::success('Horas saved successfully.');

        return redirect(route('horas.index'));
    }

    /**
     * Display the specified horas.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $horas = $this->horasRepository->findWithoutFail($id);

        if (empty($horas)) {
            Flash::error('Horas not found');

            return redirect(route('horas.index'));
        }

        return view('horas.show')->with('horas', $horas);
    }

    /**
     * Show the form for editing the specified horas.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $horas = $this->horasRepository->findWithoutFail($id);

        if (empty($horas)) {
            Flash::error('Horas not found');

            return redirect(route('horas.index'));
        }

        return view('horas.edit')->with('horas', $horas);
    }

    /**
     * Update the specified horas in storage.
     *
     * @param  int              $id
     * @param UpdatehorasRequest $request
     *
     * @return Response
     */
    public function update($id, UpdatehorasRequest $request)
    {
        $horas = $this->horasRepository->findWithoutFail($id);

        if (empty($horas)) {
            Flash::error('Horas not found');

            return redirect(route('horas.index'));
        }

        $horas = $this->horasRepository->update($request->all(), $id);

        Flash::success('Horas updated successfully.');

        return redirect(route('horas.index'));
    }

    /**
     * Remove the specified horas from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $horas = $this->horasRepository->findWithoutFail($id);

        if (empty($horas)) {
            Flash::error('Horas not found');

            return redirect(route('horas.index'));
        }

        $this->horasRepository->delete($id);

        Flash::success('Horas deleted successfully.');

        return redirect(route('horas.index'));
    }
}
