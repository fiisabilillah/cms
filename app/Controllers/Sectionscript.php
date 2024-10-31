<?php

namespace App\Controllers;

class Sectionscript extends BaseController
{

    public function index()
    {
        if (session()->get('id') == '') {
            return redirect()->to('');
        }
        $tadmin = $this->template->tempadminaktif();
        $data = [
            'title'           => 'Setting',
            'subtitle'        => 'Section',
            'folder'        => $tadmin['folder']
        ];

        return view('backend/' . $tadmin['folder'] . '/' . 'setkonten/section-script/index', $data);
    }

    public function getdata()
    {
        if (session()->get('id') == '') {
            return redirect()->to('');
        }
        if ($this->request->isAJAX()) {
            $id_grup = session()->get('id_grup');

            $url        = 'section-script';
            $tadmin     = $this->template->tempadminaktif();
            $listgrupf  = $this->grupakses->viewgrupakses($id_grup, $url);

            $akses  = $listgrupf->akses;
            $hapus  = $listgrupf->hapus;
            $ubah   = $listgrupf->ubah;
            $tambah = $listgrupf->tambah;
            $ikonmn = $listgrupf->ikonmn;
            // jika temukan maka eksekusi
            if ($listgrupf) {
                # cek akses
                if ($akses == '1' || $akses == '2') {
                    $data = [
                        'title'     => 'Section',
                        'list'      => $this->section->list_script(),
                        'akses'     => $akses,
                        'hapus'     => $hapus,
                        'ubah'      => $ubah,
                        'tambah'    => $tambah,
                        'ikonmn'    => $ikonmn,

                    ];
                    $msg = [
                        'data' => view('backend/' . $tadmin['folder'] . '/' . 'setkonten/section-script/list', $data)
                    ];
                } else {
                    $msg = [
                        'noakses' => []
                    ];
                }
            } else {

                $msg = [
                    'blmakses' => []
                ];
            }
            echo json_encode($msg);
        }
    }


    public function formtambah()
    {
        if ($this->request->isAJAX()) {
            $tadmin = $this->template->tempadminaktif();
            $data = [
                'title'             => 'Tambah Section',
                'template'          => $this->template->list(),
            ];
            $msg = [
                'data'                  => view('backend/' . $tadmin['folder'] . '/' . 'setkonten/section-script/tambah', $data),
                'csrf_tokencmsdatagoe'  => csrf_hash(),
            ];
            echo json_encode($msg);
        }
    }


    public function simpan()
    {
        if (session()->get('id') == '') {
            return redirect()->to('');
        }
        if ($this->request->isAJAX()) {

            $validation = \Config\Services::validation();

            $valid = $this->validate([
                'nama_section' => [
                    'label' => 'Nama Section',
                    'rules' => 'required',
                    'errors' => [
                        'required' => '{field} tidak boleh kosong!',
                    ]
                ],
                'template_id' => [
                    'label' => 'Template',
                    'rules' => 'required',
                    'errors' => [
                        'required' => '{field} tidak boleh kosong!',
                    ]
                ],
                'urutan' => [
                    'label' => 'Urutan',
                    'rules' => 'required',
                    'errors' => [
                        'required' => '{field} tidak boleh kosong!',
                    ]
                ],
                'isi_script' => [
                    'label' => 'Isi Script',
                    'rules' => 'required',
                    'errors' => [
                        'required' => '{field} tidak boleh kosong!',
                    ]
                ],
                'gambar' => [
                    'label' => 'Gambar section',
                    'rules' => 'max_size[gambar,2024]|mime_in[gambar,image/png,image/jpg,image/jpeg,image/gif]|is_image[gambar]',
                    'errors' => [
                        // 'uploaded' => 'Masukkan gambar',
                        'max_size' => 'Ukuran {field} Maksimal 2024 KB..!!',
                        'mime_in'  => 'Format file {field} PNG, Jpeg, Jpg, atau Gif..!!'
                    ]
                ]
            ]);
            if (!$valid) {
                $msg = [
                    'error' => [
                        'nama_section'  => $validation->getError('nama_section'),
                        'template_id'   => $validation->getError('template_id'),
                        'urutan'        => $validation->getError('urutan'),
                        'isi_script'    => $validation->getError('isi_script'),
                        'gambar'        => $validation->getError('gambar')
                    ],
                    'csrf_tokencmsdatagoe'  => csrf_hash(),
                ];
            } else {

                $filegambar     = $this->request->getFile('gambar');
                $nama_file      = $filegambar->getRandomName();
                $template_id    = $this->request->getVar('template_id');
                $urutan         = $this->request->getVar('urutan');

                $cekdata = $this->section->cektemaurut($template_id, $urutan);
                if ($cekdata) {
                    $msg = [
                        'setganda'              => 'Posisi untuk tema ini sudah ada',
                        'csrf_tokencmsdatagoe'  => csrf_hash(),
                    ];
                } else {
                    //jika gambar tidak ada
                    if ($filegambar->GetError() == 4) {
                        $insertdata = [
                            'nama_section'  => $this->request->getVar('nama_section'),
                            'template_id'   => $template_id,
                            'urutan'        => $urutan,
                            'isi_script'    => $this->request->getVar('isi_script'),
                            'deskripsi'     => $this->request->getVar('deskripsi'),
                            'jns'           => '1',
                        ];

                        $this->section->insert($insertdata);

                        $msg = [
                            'sukses'                => 'Data berhasil disimpan!',
                            'csrf_tokencmsdatagoe'  => csrf_hash(),
                        ];
                    } else {
                        // ada
                        $insertdata = [
                            'nama_section'  => $this->request->getVar('nama_section'),
                            'template_id'   => $template_id,
                            'urutan'        => $urutan,
                            'isi_script'    => $this->request->getVar('isi_script'),
                            'deskripsi'     => $this->request->getVar('deskripsi'),
                            'gambar'        => $nama_file,
                            'jns'           => '1',

                        ];

                        $this->section->insert($insertdata);
                        \Config\Services::image()
                            ->withFile($filegambar)
                            // ->fit(300, 300, 'center')
                            ->save('public/img/section/' .  $nama_file, 70);

                        $msg = [
                            'sukses'                => 'Data berhasil disimpan!',
                            'csrf_tokencmsdatagoe'  => csrf_hash(),
                        ];
                    }
                }
            }
            echo json_encode($msg);
        }
    }

    public function formedit()
    {
        if (session()->get('id') == '') {
            return redirect()->to('');
        }
        if ($this->request->isAJAX()) {
            $section_id = $this->request->getVar('section_id');
            $list =  $this->section->find($section_id);
            $tadmin = $this->template->tempadminaktif();
            $data = [
                'title'         => 'Edit section',
                'section_id'    => $list['section_id'],
                'template_id'   => $list['template_id'],
                'isi_script'    => $list['isi_script'],
                'urutan'        => $list['urutan'],
                'nama_section'  => $list['nama_section'],
                'deskripsi'     => $list['deskripsi'],
                'gambar'        => $list['gambar'],
                'template'      => $this->template->list(),

            ];
            $msg = [
                'sukses' => view('backend/' . $tadmin['folder'] . '/' . 'setkonten/section-script/edit', $data),
                'csrf_tokencmsdatagoe'  => csrf_hash(),
            ];
            echo json_encode($msg);
        }
    }

    public function updatesection()
    {
        if (session()->get('id') == '') {
            return redirect()->to('');
        }
        if ($this->request->isAJAX()) {

            $section_id = $this->request->getVar('section_id');

            $validation = \Config\Services::validation();

            $valid = $this->validate([
                'nama_section' => [
                    'label' => 'Nama Section',
                    'rules' => 'required',
                    'errors' => [
                        'required' => '{field} tidak boleh kosong!',
                    ]
                ],

            ]);
            if (!$valid) {
                $msg = [
                    'error' => [
                        'nama' => $validation->getError('nama'),
                    ],
                    'csrf_tokencmsdatagoe'  => csrf_hash(),
                ];
            } else {

                $template_id    = $this->request->getVar('template_id');
                $urutan         = $this->request->getVar('urutan');
                $template_idold    = $this->request->getVar('template_idold');
                $urutanold         = $this->request->getVar('urutanold');

                // jika sama tidak cek dan simpan tema / urutan
                if ($template_id == $template_idold && $urutan == $urutanold) {
                    $updatedata = [
                        // 'template_id'   => $template_id,
                        // 'urutan'        => $urutan,
                        'isi_script'    => $this->request->getVar('isi_script'),
                        'nama_section'  => $this->request->getVar('nama_section'),
                        'deskripsi'     => $this->request->getVar('deskripsi'),
                    ];

                    $this->section->update($section_id, $updatedata);
                    $msg = [
                        'sukses'                => 'section berhasil diganti!',
                        'csrf_tokencmsdatagoe'  => csrf_hash(),
                    ];
                } else {
                    // jika tidak sama maka cek
                    $cekdata = $this->section->cektemaurut($template_id, $urutan);
                    if ($cekdata) {
                        $msg = [
                            'setganda'              => 'Posisi untuk tema ini sudah ada',
                            'csrf_tokencmsdatagoe'  => csrf_hash(),
                        ];
                    } else {
                        $updatedata = [
                            'nama_section'   => $this->request->getVar('nama_section'),
                            'template_id'   => $template_id,
                            'urutan'        => $urutan,
                            'isi_script'    => $this->request->getVar('isi_script'),
                            'deskripsi'     => $this->request->getVar('deskripsi'),
                        ];

                        $this->section->update($section_id, $updatedata);
                        $msg = [
                            'sukses'                => 'section berhasil diganti!',
                            'csrf_tokencmsdatagoe'  => csrf_hash(),
                        ];
                    }
                }
                // jika id template dan urutan berbeda maka cek

                echo json_encode($msg);
            }
        }
    }

    public function hapus()
    {
        if (session()->get('id') == '') {
            return redirect()->to('');
        }
        if ($this->request->isAJAX()) {

            $id = $this->request->getVar('section_id');
            //check
            $cekdata = $this->section->find($id);
            $fotolama = $cekdata['gambar'];
            if ($fotolama != '' && file_exists('public/img/section/' . $fotolama)) {
                unlink('public/img/section/' . $fotolama);
            }
            $this->section->delete($id);
            $msg = [
                'sukses'                => 'Data Section berhasil dihapus.',
                'csrf_tokencmsdatagoe'  => csrf_hash(),
            ];

            echo json_encode($msg);
        }
    }

    public function hapusall()
    {
        if (session()->get('id') == '') {
            return redirect()->to('');
        }
        if ($this->request->isAJAX()) {
            $id = $this->request->getVar('section_id');
            $jmldata = count($id);
            for ($i = 0; $i < $jmldata; $i++) {
                //check gbr
                $cekdata = $this->section->find($id[$i]);
                $fotolama = $cekdata['gambar'];

                if ($fotolama != '' && file_exists('public/img/section/' . $fotolama)) {
                    unlink('public/img/section/' . $fotolama);
                }

                $this->section->delete($id[$i]);
            }

            $msg = [
                'sukses'                => "$jmldata Data section berhasil dihapus",
                'csrf_tokencmsdatagoe'  => csrf_hash(),
            ];
            echo json_encode($msg);
        }
    }

    public function formgantifoto()
    {
        if ($this->request->isAJAX()) {
            $id = $this->request->getVar('section_id');
            $list =  $this->section->find($id);
            $tadmin = $this->template->tempadminaktif();

            $data = [
                'title'       => 'Ganti Gambar',
                'id'          => $list['section_id'],
                'gambar'      => $list['gambar']

            ];
            $msg = [
                'sukses'                => view('backend/' . $tadmin['folder'] . '/' . 'setkonten/section-script/gantifoto', $data),
                'csrf_tokencmsdatagoe'  => csrf_hash(),
            ];
            echo json_encode($msg);
        }
    }


    public function douploadfoto()
    {
        if ($this->request->isAJAX()) {

            $id = $this->request->getVar('section_id');

            $validation = \Config\Services::validation();

            $valid = $this->validate([
                'gambar' => [
                    'label' => 'Gambar',
                    'rules' => 'uploaded[gambar]|max_size[gambar,2024]|mime_in[gambar,image/png,image/jpg,image/jpeg,image/gif]|is_image[gambar]',
                    'errors' => [
                        'uploaded' => 'Masukkan gambar',
                        'max_size' => 'Ukuran {field} Maksimal 2024 KB..!!',
                        'mime_in' => 'Format file {field} PNG, Jpeg, Jpg, atau Gif..!!'
                    ]
                ]

            ]);
            if (!$valid) {
                $msg = [
                    'error' => [
                        'gambar' => $validation->getError('gambar')
                    ],
                    'csrf_tokencmsdatagoe'  => csrf_hash(),
                ];
            } else {

                //check
                $cekdata = $this->section->find($id);
                $fotolama = $cekdata['gambar'];

                if ($fotolama != '' && file_exists('public/img/section/' . $fotolama)) {
                    unlink('public/img/section/' . $fotolama);
                }

                $filegambar = $this->request->getFile('gambar');
                $nama_file = $filegambar->getRandomName();

                $updatedata = [
                    'gambar' => $nama_file
                ];

                $this->section->update($id, $updatedata);

                \Config\Services::image()
                    ->withFile($filegambar)
                    ->save('public/img/section/' . $nama_file, 70);

                $msg = [
                    'sukses' => 'Cover berhasil diganti!',
                ];
            }
            echo json_encode($msg);
        }
    }
}
