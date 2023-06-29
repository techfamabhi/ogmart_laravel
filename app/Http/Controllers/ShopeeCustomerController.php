<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\shopee_customer;
use DB;

class ShopeeCustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $customerdata = shopee_customer::get();
        return response()->json($customerdata);
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
        $name=$request->get('name');
        $contact=$request->get('contact');
        $email=$request->get('email');
        $address=$request->get('address');
        $area=$request->get('area');
        $pin=$request->get('pin');
      

        $arr=array();
        $shopee_customer = new shopee_customer([
            'name'=>$name,
            'contact'=>$contact,
            'email'=>$email,
            'address'=>$address,
            'area'=>$area,
            'pin'=>$pin,
         
        ]);
        $shopee_customer->save();
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
        $shopee_customer = shopee_customer::where('id',$id)->first();
        return response()->json($shopee_customer);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $shopee_customer = shopee_customer::where('id',$id)->first();
        return response()->json($shopee_customer);
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
        $name=$request->get('name');
        $contact=$request->get('contact');
        $email=$request->get('email');
        $address=$request->get('address');
        $area=$request->get('area');
        $pin=$request->get('pin');
     

        $customerup=shopee_customer::find($id);
        $customerup->name=$name;
        $customerup->contact=$contact;
        $customerup->email=$email;
        $customerup->address=$address;
        $customerup->area=$area;
        $customerup->pin=$pin;
      
        $customerup->save();
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
        $shopee_customer = shopee_customer::find($id);
        $shopee_customer->delete();
        return response()->json($shopee_customer);
    }
}
