<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;
use App\Models\product;
class UploadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    
    public function upload(Request $request)
    {

         $arr=array();
            if ($request->hasFile('image')) {
            $file = $request->file('image');
            $pname=$request->get('pname');
            $des=$request->get('des');
            $hsn=$request->get('hsn');
            $gst=$request->get('gst');
            $features=$request->get('features');
            $price_sale=$request->get('price_sale');
            $price_purchase=$request->get('price_purchase');
            $margin=$request->get('margin');
            $safety_information=$request->get('safety_information');
            $ingredients=$request->get('ingredients');
            $directions=$request->get('directions');
            $legal_disclaimer=$request->get('legal_disclaimer');

            $pstatus=$request->get('pstatus');
            $category=$request->get('category');
            $brands=$request->get('brands');
            $pcode=$request->get('pcode');
            $discount=$request->get('discount');
            $packing=$request->get('packing');
         

            $filename = $file->getClientOriginalName();
            $file->move('product_upload/',$filename);
            $upload = new product([

                'pname' => $pname,
                'des' => $des,
                'img' => $filename,
                'hsn' => $hsn,
                'gst' => $gst,
                'features' => $features,
                'price_sale' => $price_purchase,
                'price_purchase' => $price_purchase,
                'margin' => $margin,
                'safety_information' =>$safety_information ,
                'ingredients' => $ingredients,
                'directions' => $directions,
                'legal_disclaimer' => $legal_disclaimer,
                'pstatus' => $pstatus,
                'category' => $category,
                'brands' => $brands,
                'pcode' => $pcode,
                'discount' => $discount,
                'packing' => $packing,
                
            ]);
            $upload->save();
             $data['status']="success";
            $data['msg']="data Insert";
            array_push($arr,$data);
            return response()->json($arr);

            
           
}

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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
