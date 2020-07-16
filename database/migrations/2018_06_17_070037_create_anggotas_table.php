<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProfesioningTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('profesioning', function (Blueprint $table) {
            $table->string('no_sc');
            $table->timestamps('tanggal_inputer');
            $table->string('myir');
            $table->string('nama_pelanggan');
            $table->string('no_hp');
            $table->string('paket');
            $table->string('layanan');   
            $table->string('deposit');
            $table->string('mobi');
            $table->string('chanel');
            $table->string('alamat');
            $table->string('tikor');
            $table->string('odp_utama');
            $table->string('odp_alternatif');   
            $table->string('sto');
            $table->string('mitra');
            $table->string('tl');
            $table->string('double_check_wo');   
            $table->string('duration');
            $table->string('status_order');
            $table->string('status_sc_order');
            $table->string('keterangan');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('profesioning');
    }
}
