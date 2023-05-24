
<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Signup extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
//        $this->load->model('Login_model');
        $this->load->model('User_model');
    }
    public function index()
    {
        $data['page'] = "Signup";
//        $data['user_level'] = $this->User_model->user_level();
        $this->load->view('Signup',$data);

    }

    public function create()
    {
        $data['page'] = "User";
        $data['user_level'] = $this->User_model->user_level();
        $this->load->view('User/create',$data);
    }



}