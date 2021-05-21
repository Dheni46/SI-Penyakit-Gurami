<?php

class Model_barang extends CI_Model
{
    public function tampil_data()
    {
        $this->db->limit(4);
        $this->db->order_by('id_brg', "DESC");
        return $this->db->get('tb_barang');
    }
    public function tampil_data1()
    {
        $this->db->order_by('id_brg', "DESC");
        return $this->db->get('tb_barang');
    }

    public function tambah_barang($data, $table)
    {
        $this->db->insert($table, $data);
    }

    public function edit_barang($where, $table)
    {
        return $this->db->get_where($table, $where);
    }

    public function update_data($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }

    public function hapus_data($where, $table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function find($id)
    {
        $result = $this->db->where('id_brg', $id)
            ->limit(1)
            ->get('tb_barang');
        if ($result->num_rows() > 0) {
            return $result->row();
        } else {
            return array();
        }
    }

    public function detail_brg($id_brg)
    {
        $result = $this->db->where('id_brg', $id_brg)->get('tb_barang');
        if ($result->num_rows() > 0) {
            return $result->result();
        } else {
            return false;
        }
    }

    public function getAllBarang()
    {
        return $this->db->get('tb_barang')->result_array();
    }

    public function getKategori()
    {
        return $this->db->get('tb_kategori')->result_array();
    }

    

    public function getBarangByKategori($kategori = null, $keyword = null)
    {
        if ($keyword) {
            $this->db->like('nama_brg', $keyword);
        }
        if($kategori){
            $this->db->where('kategori', $kategori);
        }
        return $this->db->get('tb_barang')->result_array();
    }
    
    
}
