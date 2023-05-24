<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Recomendation_model extends CI_Model {

    public function get_kriteria()
    {
        $query = $this->db->get('kriteria');
        return $query->result();
    }
    public function get_alternatif()
    {
        $query = $this->db->query("SELECT * FROM alternatif");
        return $query->result();
    }
    public function get_sub_kriteria()
    {
        $query = $this->db->get('sub_kriteria');
        return $query->result();
    }

    public function data_penilaian($id_alternatif,$id_kriteria)
    {
        $query = $this->db->query("SELECT * FROM penilaian WHERE id_alternatif='$id_alternatif' AND id_kriteria='$id_kriteria';");
        return $query->row_array();
    }
    public function untuk_tombol($id_alternatif)
    {
        $query = $this->db->query("SELECT * FROM penilaian WHERE id_alternatif='$id_alternatif';");
        return $query->num_rows();
    }
    public function data_sub_kriteria($id_kriteria)
    {
        $query = $this->db->query("SELECT * FROM sub_kriteria WHERE id_kriteria='$id_kriteria' ORDER BY nilai DESC;");
        return $query->result_array();
    }
    public function get_hasil_moora()
    {
        $query = $this->db->query("SELECT * FROM hasil_moora JOIN alternatif ON hasil_moora.id_alternatif=alternatif.id_alternatif ORDER BY nilai DESC;");
        return $query->result();
    }
    public function input_data_rekomendasi($id_hasil_moora,$id_kriteria,$id_sub_kriteria)
    {
        $query = $this->db->simple_query("INSERT INTO penilaian VALUES (DEFAULT,'$id_hasil_moora','$id_kriteria',$id_sub_kriteria);");
        return $query;
    }

}
