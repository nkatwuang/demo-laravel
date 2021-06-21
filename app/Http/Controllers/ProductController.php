<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Services\ImgurService;
use DateTime;
use SebastianBergmann\Environment\Console;

class ProductController extends Controller
{
    public function show() {
        $product = DB::table('product')->orderBy('id','DESC')->get();
        return view('trangchu',['product'=>$product]);
    }

    public function detail($id) {
        
        $product = DB::table('product')->where('id',$id)->first();
        return view('detail',['product'=>$product]);
    }

    public function create(Request $request) {
        echo "SSS" ;
    }
}
