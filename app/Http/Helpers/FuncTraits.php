<?php

namespace App\Http\Helpers;

use Illuminate\Support\Facades\DB;

trait FuncTraits
{
    public function getJawaban($id_dimensi)
    {
        return DB::select(
            "SELECT jawaban,
            CASE jawaban
                WHEN 'A' THEN Count(jawaban)*1 
                WHEN 'B' THEN COUNT(jawaban)*2 
                WHEN 'C' THEN COUNT(jawaban)*3 
                WHEN 'D' THEN COUNT(jawaban)*4 
                WHEN 'E' THEN COUNT(jawaban)*5 
            END as jumlah
            FROM jawaban,tbkuesioner
            WHERE (tbkuesioner.id_kuesioner=jawaban.id_kuesioner) AND (tbkuesioner.id_dimensi= :id_dimensi)
            GROUP BY jawaban",
            [
                'id_dimensi' => $id_dimensi
            ]
        );
    }

    public function getDimensi($id_dimensi)
    {
        return DB::table('tbdimensi')->select(['dimensi', 'bobot'])->where('id_dimensi', $id_dimensi)->first() ?? [];
    }
}
