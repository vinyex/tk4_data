<?php

namespace App\Http\Controllers;

use App\Http\Helpers\FuncTraits;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;

class HomeController extends Controller
{
    use FuncTraits;

    public function index()
    {
        $jawabans = [];
        $dimensis = [];
        if (Schema::hasTable('jawaban')) {
            for ($i = 0; $i < 4; $i++) {
                $jawabans[] = $this->getJawaban($i);
                $dimensis[] = $this->getDimensi($i);
            }
        }
        return view('home.index', compact('jawabans', 'dimensis'));
    }

    public function coba()
    {
        return response()->json(['coba' => 'coba']);
    }
}
