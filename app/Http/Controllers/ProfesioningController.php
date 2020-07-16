<?php

namespace App\Http\Controllers;

use App\Profesioning;
use Illuminate\Http\Request;
use DB;

class ProfesioningController extends Controller
{
    function index()
    {
        return view('profesioning.index');
    }

    function fetch_data(Request $request)
    {
        if($request->ajax())
        {
            $data = Profesioning::all();
            echo json_encode($data);
        }
    }

    public function test()
    {
        $data = Profesioning::all();
        dd($data);
    }

    function add_data(Request $request)
    {
        if($request->ajax())
        {
            $data = array(
                    'no_sc'             =>  $request->no_sc,
                    'tanggal_inputer'   =>  $request->tanggal_inputer,
                    'myir'              =>  $request->myir,
                    'nama_pelanggan'    =>  $request->nama_pelanggan,
                    'nomor_handphone'   =>  $request->nomor_handphone,
                    'paket'             =>  $request->paket,
                    'layanan'           =>  $request->layanan,
                    'deposit'           =>  $request->deposit,
                    'mobi'              =>  $request->mobi,
                    'chanel'            =>  $request->chanel,
                    'alamat'            =>  $request->alamat,
                    'tikor'             =>  $request->tikor,
                    'odp_utama'         =>  $request->odp_utama,
                    'odp_alternatif'    =>  $request->odp_alternatif,
                    'sto'               =>  $request->sto,
                    'mitra'             =>  $request->mitra,
                    'tl'                =>  $request->tl,
                    'double_check_wo'   =>  $request->double_check_wo,
                    'duration'          =>  $request->duration,
                    'status_order'      =>  $request->status_order,
                    'status_sc_order'   =>  $request->status_sc_order,
                    'keterangan'        =>  $request->keterangan
            );
            $id = DB::table('tb_profesioning.profesioning')->insert($data);
            if($id > 0)
            {
                echo '<div class="alert alert-success">Data Inserted</div>';
            }
        } 
    }

    function update_data(Request $request)
    {
        if($request->ajax())
        {
            $data = array(
                $request->column_name       =>  $request->column_value
            );
            DB::table('tb_profesioning.profesioning')
                ->where('id', $request->id)
                ->update($data);
            echo '<div class="alert alert-success">Data Updated</div>';
        }
    }

    function delete_data(Request $request)
    {
        if($request->ajax())
        {
            DB::table('tb_profesioning.profesioning')
                ->where('id', $request->id)
                ->delete();
            echo '<div class="alert alert-success">Data Deleted</div>';
        }
    }
}
?>