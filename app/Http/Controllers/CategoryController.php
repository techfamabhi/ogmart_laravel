<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\category;
use DB;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categorydata = category::get();
        return response()->json($categorydata);
    }
    public function Categoryshow($id)
    {
      //return response()->json($id);
      $pro=DB::table('categories')
          ->where('id','=',$id)
          ->get();
      return response()->json($pro);

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
         // if($request->hasfile('img'))
         //    {
         //        $data="";
         //        foreach($request->file('img') as $image)
         //        {
         //            $fpaht = $image->getClientOriginalName();
         //            $image->move('images',$fpaht);
         //            $data[]=$fpaht;
         //            $jsimg = json_encode($data);
         //        }
         //    }
        $cname=$request->get('cname');
        $img=$request->get('img');
        $under_id=$request->get('under_id');
        $status=$request->get('status');
        $margin=$request->get('margin');
        $description=$request->get('description');

        $arr=array();
        $category = new category([
            'cname'=>$cname,
            'img'=>'testing',
            'under_id'=>'1',
            'status'=>$status,
            'margin'=>$margin,
            'description'=>$description
        ]);
        $category->save();
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
        $category = category::where('id',$id)->first();
        return response()->json($category);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = category::where('id',$id)->first();
        return response()->json($category);
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
        if($request->hasfile('img'))
            {
                $data="";
                foreach($request->file('img') as $image)
                {
                    $fpaht = $image->getClientOriginalName();
                    $image->move('images',$fpaht);
                    $data[]=$fpaht;
                    $jsimg = json_encode($data);
                }
            }
        $arr=array();
        $cname=$request->get('cname');
        $img=$request->get('img');
        $under_id=$request->get('under_id');
        $status=$request->get('status');
        $margin=$request->get('margin');
        $description=$request->get('description');

        $categoryup=category::find($id);
        $categoryup->cname=$cname;
        $categoryup->img=$jsimg;
        $categoryup->under_id='0';
        $categoryup->status=$status;
        $categoryup->margin=$margin;
        $categoryup->description=$description;
        $categoryup->save();
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
        $category = category::find($id);
        $category->delete();
        return response()->json($category);
    }
}
