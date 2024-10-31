<?php

namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;
use App\Models\ModelKonfigurasi;
use App\Models\M_Dge_grupakses;

class Validasilogin implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        $maintenanceModel   = new ModelKonfigurasi();
        // $grupakses          = new M_Dge_grupakses();
        $this->grupakses    = new M_Dge_grupakses();
        $id_grup            = session()->get('id_grup');
        $url                = 'konfigurasi';
        $listgrupf          = $this->grupakses->viewgrupakses($id_grup, $url);
        $maintenanceStatus  = $maintenanceModel->first();

        $uri        = service('uri');
        $request    = $uri->getSegment(1);
        if ($request != 'login') {
            # code...
            if (session()->get('id') == '') {
                // return redirect()->to('/');

                if ($maintenanceStatus && $maintenanceStatus['is_maintenance']) {
                    echo view('maintenance');
                    exit;
                    // return redirect()->to('/');
                }
            } else {
                # login
                if ($listgrupf) {
                    $akses              = $listgrupf->akses;
                } else {
                    $akses              = 0;
                }
                if ($maintenanceStatus && $maintenanceStatus['is_maintenance'] && $akses != 1) {
                    echo view('maintenance');
                    exit;
                    // return redirect()->to('/');
                }
            }
        }
    }

    //--------------------------------------------------------------------

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
    }
}
