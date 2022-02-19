<?php /** @noinspection PhpUnused */
/** @noinspection SqlNoDataSourceInspection */
/** @noinspection PhpMissingParentConstructorInspection */
/** @noinspection MagicMethodsValidityInspection */

/**
 * Class Todo_model
 */
class Todo_model extends CI_Model
{

    /**
     * Todo_model constructor.
     */
    public function __construct()
    {
        $this->load->database();
    }

    /**
     * @return int
     */
    public function record_count()
    {
        return $this->db->count_all("posts");
    }

    /**
     * @param $slug
     *
     * @return array|array[]|null
     */
    public function get_todo_post($slug)
    {
        if ($slug === false) {
            $query = $this->db->get('posts');
            return $query->result_array();
        }
        $query = $this->db->get_where('posts', array('id' => $slug));
        return $query->row_array();
    }

    /**
     * @param $page
     * @param $limit
     *
     * @return array|array[]
     */
    public function get_todo($page, $limit)
    {
        $offset = ($page - 1) * $limit;
        $row_count = $limit;
        $this->db->select();
        $this->db->from("posts");
        $this->db->order_by('id', 'DESC');
        $this->db->limit($row_count, $offset);
        // 10,20
        return $this->db->get()->result_array();
    }

    /**
     *
     */
    public function set_todo()
    {
        $this->load->helper('url');

        /* $slug = url_title($this->input->post('title'), 'dash', TRUE);
         $data = array(
             'title' => $this->input->post('title'),
            // 'slug' => $slug,
             'desc' => $this->input->post('desc')
         );
         return $this->db->insert('posts', $data);*/

        try {
            $sql = "INSERT INTO posts (`id`, `title`, `desc`)
                    VALUES (
                        NULL,
                        " . $this->db->escape($this->input->post('title')) . ",
                        " . $this->db->escape($this->input->post('desc')) . "
                      )";

            $this->db->query($sql);
        } catch (Exception $e) {
            echo "Exception-" . $e->getMessage();
        }
    }
}