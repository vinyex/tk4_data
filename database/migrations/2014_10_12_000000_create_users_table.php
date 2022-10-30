<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('username')->unique();
            $table->string('email')->unique()->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('hak_akses');
            $table->rememberToken();
            $table->timestamps();
        });

        if (Schema::hasTable('tbpengguna')) {
            $data = DB::table('tbpengguna')->get();
            foreach ($data as $dt) {
                DB::table('users')->insert([
                    'username' => $dt->username,
                    'password' => bcrypt($dt->password),
                    'hak_akses' => $dt->hak_akses
                ]);
            }
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
};
