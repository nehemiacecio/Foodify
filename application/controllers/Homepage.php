<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Homepage extends CI_Controller
{


    public function index()
    {

        $data = [
            'page' => "Homepage"
        ];
        $this->load->view('/Homepage', $data);

    }
    public function home()
    {
        $data['page'] = "Dashboard";
        $this->load->view('admin/index', $data);
    }

}