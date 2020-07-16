<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Profesioning extends Model
{
	protected $table = 'profesioning';
    protected $fillable = ['no_sc', 'tanggal_inputer','myir','nama_pelanggan','nomor_handphone','paket', 'layanan','deposit','mobi','chanel', 'alamat','tikor','odp_utama','odp_alternatif','sto','mitra','tl','double_check_wo','duration','status_order','status_sc_order','keterangan'];

    public $timestamps = false;

}

