<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subcategory;
use App\Models\category;

use DB;


class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categorydata = Subcategory::get();
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
    public function Categoryname()
    {
      $category=category::get();
      return response()->json($category);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    { 
        $cname=$request->get('cname');
        $subname=$request->get('sub_name');
        $img=$request->get('img');
        $description=$request->get('description');
        $margin=$request->get('margin');
        $status=$request->get('status');

        $arr=array();
        $category = new Subcategory([
            'cname'=>$cname,
            'sub_name'=>$subname,
            'img'=>'Testing',
            'description'=>$description,
            'margin'=>$margin,
            'status'=>$status
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
        $category = Subcategory::where('id',$id)->first();
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
        $category = Subcategory::where('id',$id)->first();
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
        $arr=array();
        $cname=$request->get('cname');
        $subname=$request->get('sub_name');
        $img=$request->get('img');
        $description=$request->get('description');
        $margin=$request->get('margin');
        $status=$request->get('status');

        $subcategoryup=Subcategory::find($id);
        $subcategoryup->cname=$cname;
        $subcategoryup->sub_name=$subname;
        $subcategoryup->img='testing';
        $subcategoryup->description=$description;
        $subcategoryup->margin=$margin;
        $subcategoryup->status=$status;
        $subcategoryup->save();
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
        $category = Subcategory::find($id);
        $category->delete();
        return response()->json($category);
    }
}
