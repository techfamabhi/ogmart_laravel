<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\product;
use App\Models\category;
use DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $product = product::get();
      return response()->json($product);
    }

     public function Productshow($id)
    {
      //return response()->json($id);
      $pro=DB::table('products')
          ->join('categories','products.category','=','categories.id')
          ->where('products.category','=',$id)
          ->select('*', 'products.id as pid')
          ->get();
        return $pro;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }
    public function Productdesc($id)
    {
      //return response()->json($id);
      $pro=DB::table('products')
          ->where('id','=',$id)
          ->get();
      return response()->json($pro);

    }
    public function categoryget()
    {
      $category=category::get();
      return response()->json($category);
    }
    public function Categoryedit()
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
            $arr=array();
            if ($request->hasFile('img')) {
            $file = $request->file('img');

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
            $finalName = date('His') . $filename;
            $path = $file->storeAs('public/product_upload', $finalName);

            $product = new product([
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
            $product->save();
            $data['status'] = "success";
            $data['msg'] = "Data Insert";
            array_push($arr, $data);
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
      $faculty = product::where('id',$id)->first();
       return response()->json($faculty);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $faculty = product::where('id',$id)->first();
      return response()->json($faculty);
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


        $pname=$request->get('pname');
        $des=$request->get('des');
        $img=$request->get('img');
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
        $status=$request->get('status');
        $category=$request->get('category');
        $brands=$request->get('brands');
        $pcode=$request->get('pcode');
        $discount=$request->get('discount');
        $packing=$request->get('packing');

     $facultyup=product::find($id);
     $facultyup->pname=$pname;
     $facultyup->des=$des;
      $facultyup->img='Testing';
      $facultyup->hsn=$hsn;
      $facultyup->gst=$gst;
      $facultyup->features=$features;
      $facultyup->price_sale=$price_sale;
      $facultyup->price_purchase=$price_purchase;
      $facultyup->margin=$margin;
      $facultyup->safety_information=$safety_information;
      $facultyup->ingredients=$ingredients;
      $facultyup->directions=$directions;
      $facultyup->legal_disclaimer=$legal_disclaimer;
      $facultyup->status=$status;
      $facultyup->category=$category;
      $facultyup->brands=$brands;
      $facultyup->discount=$discount;
      $facultyup->packing=$packing;

     $facultyup->save();
     $data['status']="success";
     $data['msg']="data Updated";
     array_push($arr,$data);
     return response()->json($arr);
    }
//     else {
//       $pname=$request->get('pname');
//       $des=$request->get('des');
//       $img=$request->get('img');
//       $hsn=$request->get('hsn');
//       $gst=$request->get('gst');
//       $features=$request->get('features');
//       $price_sale=$request->get('price_sale');
//       $price_purchase=$request->get('price_purchase');
//       $margin=$request->get('margin');
//       $safety_information=$request->get('safety_information');
//       $ingredients=$request->get('ingredients');
//       $directions=$request->get('directions');
//       $legal_disclaimer=$request->get('legal_disclaimer');
//       $status=$request->get('status');
//       $category=$request->get('category');
//       $brands=$request->get('brands');
//       $pcode=$request->get('pcode');
//       $discount=$request->get('discount');
//       $packing=$request->get('packing');
//
//    $facultyup=Product::find($id);
//    $facultyup->pname=$pname;
//    $facultyup->des=$des;
//     $facultyup->img=$img;
//     $facultyup->hsn=$hsn;
//     $facultyup->gst=$gst;
//     $facultyup->features=$features;
//     $facultyup->price_sale=$price_sale;
//     $facultyup->price_purchase=$price_purchase;
//     $facultyup->margin=$margin;
//     $facultyup->safety_information=$safety_information;
//     $facultyup->ingredients=$ingredients;
//     $facultyup->directions=$directions;
//     $facultyup->legal_disclaimer=$legal_disclaimer;
//     $facultyup->status=$status;
//     $facultyup->category=$category;
//     $facultyup->brands=$brands;
//     $facultyup->discount=$discount;
//     $facultyup->packing=$packing;
//
//    $facultyup->save();
//    $data['status']="success";
//    $data['msg']="data Updated";
//    array_push($arr,$data);
//    return response()->json($arr);
// }
    // }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      $course = product::find($id);
    $course->delete();
    return response()->json($course);
    }
}
