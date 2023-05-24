<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Recomendation extends CI_Controller {

        public function __construct()
        {
            parent::__construct();
            $this->load->library('pagination');
            $this->load->library('form_validation');
            $this->load->model('Recomendation_model');
        }


        public function index()
        {

            $data = [
                'page' => "Recomendation",
                'kriteria'=> $this->Recomendation_model->get_kriteria(),
                'alternatif'=> $this->Recomendation_model->get_alternatif(),
                'sub_kriteria'=> $this->Recomendation_model->get_sub_kriteria()
            ];
            $this->load->view('Recomendation/index', $data);

        }

        public function store(){
            $id_alternatif = $this->input->post('id_alternatif');
            $id_kriteria = $this->input->post('id_kriteria');
            $nilai = $this->input->post('is_sub_kriteria');


            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data berhasil disimpan!</div>');
            redirect('penilaian');

        }
        public function hasil()
        {
            $data = [
                'page' => "Hasil",
                'hasil_rekomendasi'=> $this->Recomendation_model->get_hasil_moora(),
            ];
//                 = $this->input->post('id_hasil_moora');
            $id_kriteria = $this->Recomendation_model->get_kriteria();
            $id_sub_kriteria = $this->input->post('id_sub_kriteria');
            $i = 0;
            echo var_dump($id_sub_kriteria);
            foreach ($id_sub_kriteria as $key) {
                $this->Recomendation_model->input_data_rekomendasi($data,$id_kriteria,$id_sub_kriteria[i]);
                $i++;
            }



            $this->load->view('Recomendation/hasil', $data);
        }








    }
    
    