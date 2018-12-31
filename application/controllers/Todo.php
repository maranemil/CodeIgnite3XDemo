<?php
class Todo extends CI_Controller {

    public function __construct()
    {
            parent::__construct();
            $this->load->model('todo_model');
            $this->load->helper('url_helper');
    }

    public function index()
    {
        $data['todo'] = $this->todo_model->get_todo();
        $data['title'] = 'News archive';

        $this->load->view('templates/header', $data);
        $this->load->view('todo/index', $data);
        $this->load->view('templates/footer');
    }

    public function view($slug = NULL)
    {
        $data['todo'] = $this->todo_model->get_todo($slug);
        #print_r($data);
        if (empty($data['todo']))
        {
                show_404();
        }

        #$data['title'] = $data['todo']['title'];

        $this->load->view('templates/header', $data);
        $this->load->view('todo/view', $data);
        $this->load->view('templates/footer');
    }

    public function create()
    {
        $this->load->helper('form');
        $this->load->library('form_validation');

        $data['title'] = 'Create a news item';

        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('desc', 'Text', 'required');

        if ($this->form_validation->run() === FALSE)
        {
            $this->load->view('templates/header', $data);
            $this->load->view('todo/create');
            $this->load->view('templates/footer');

        }
        else
        {
            $this->todo_model->set_todo();
            $this->load->view('todo/success');
        }
    }
}