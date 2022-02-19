<?php /** @noinspection PhpUnused */

/**
 * @property $todo_model
 */
class Todo extends CI_Controller
{

    /**
     * Todo constructor.
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('todo_model');
        $this->load->helper('url_helper');
        $this->load->library("pagination");
    }

    /**
     * @param $limit
     *
     * @return array
     */
    public function getPagination($limit)
    {
        $page = (isset($_GET["page"])) ? $_GET["page"] : 1;
        $total = $this->todo_model->record_count();

        $intPrevious = (($page - 1) > 1) ? ($page - 1) : 1;
        $intCurrent = $page;
        $intNext = (($page + 1) < (int)($total / $limit)) ? ($page + 1) : (int)($total / $limit);
        $intLast = (int)($total / $limit);
        $intRand = mt_rand(1, $intLast);

        return array(
            "first"   => 1,
            "prev"    => $intPrevious,
            "current" => $intCurrent,
            "next"    => $intNext,
            "last"    => $intLast,
            "rand"    => $intRand
        );
    }

    /**
     *
     */
    public function index()
    {
        $limit = 6; // pagination
        $arrPagination = $this->getPagination($limit);
        $page = $arrPagination["current"];
        $data['pagination'] = $arrPagination;
        $data['todo'] = $this->todo_model->get_todo($page, $limit);
        $data['title'] = 'News archive';

        $this->load->view('templates/header');
        $this->load->view('todo/index', $data);
        $this->load->view('templates/footer');
    }

    /**
     * @param null $slug
     */
    public function view($slug = null)
    {
        $data['todo'] = $this->todo_model->get_todo_post($slug);
        #print_r($data);
        if (empty($data['todo'])) {
            show_404();
        }

        #$data['title'] = $data['todo']['title'];

        $this->load->view('templates/header', $data);
        $this->load->view('todo/view', $data);
        $this->load->view('templates/footer');
    }

    /**
     *
     */
    public function create()
    {
        $this->load->helper('form');
        $this->load->library('form_validation');

        $data['title'] = 'Create a news item';

        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('desc', 'Text', 'required');

        if ($this->form_validation->run() !== false) {
            $this->todo_model->set_todo();
            #$this->load->view('todo/success');
        }
        $this->load->view('templates/header');
        $this->load->view('todo/create', $data);
        $this->load->view('templates/footer');
    }
}