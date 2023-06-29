<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\product_stock;
use App\Models\product;
use DB;


class ProductStockController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
   //    $pro_stocks=DB::table('product_stocks')
   // ->join('products','products.id','=','product_stocks.pid')
   // ->select('*','product_stocks.id as tid')
   // ->get();
   // return response()->json($pro_stocks);

   $categorydata = product_stock::get();
   return response()->json($categorydata);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $pid=$request->get('pid');
      $qty=$request->get('qty');
      $arr=array();
      $stock = new product_stock([
          'pid'=>$pid,
          'qty'=>$qty,
      ]);
      $stock->save();
      $data['status']="success";
      $data['msg']="data Insert";
      array_push($arr,$data);
      return response()->json($arr);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $pro = product_stock::where('id',$id)->first();
      return response()->json($pro);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $arr=array();
    // if($request->hasFile('img'))
    // {
    //   foreach ($request->file('img') as $img) {
    //       $fpath=$img->getClientOriginalName();
    //       $img->move('product_upload/',$filename);
    //       $data[]=$fpath;
    //   }
    //     $file=$request->file('img');
    //     $filename=$file->getClientOriginalName();
    //     $file->move('product_upload/',$filename);


      $pid=$request->get('pid');
      $qty=$request->get('qty');


   $pro=product_stock::find($id);
   $pro->pid=$pid;
   $pro->qty=$qty;


   $pro->save();
   $data['status']="success";
   $data['msg']="data Updated";
   array_push($arr,$data);
   return response()->json($arr);
  
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $pro = product_stock::find($id);
      $pro->delete();
      return response()->json($pro);
    }
}
