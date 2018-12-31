<?php
class Todo_model extends CI_Model {

    public function __construct()
    {
            $this->load->database();
    }

    public function get_todo($slug = FALSE)
    {
        if ($slug === FALSE)
        {
                $query = $this->db->get('posts');
                return $query->result_array();
        }

        $query = $this->db->get_where('posts', array('id' => $slug));
        return $query->row_array();
    }

    public function set_todo()
    {
        $this->load->helper('url');

        $slug = url_title($this->input->post('title'), 'dash', TRUE);

        $data = array(
            'title' => $this->input->post('title'),
           // 'slug' => $slug,
            'desc' => $this->input->post('desc')
        );

        return $this->db->insert('posts', $data);
    }
}