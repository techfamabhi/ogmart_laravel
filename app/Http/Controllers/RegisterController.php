<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\shopee_registration;
use Illuminate\Support\Facades\Hash;

use DB;

class RegisterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $register = shopee_registration::get();
        return response()->json($register);
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
        $full_name=$request->get('full_name');
        $email=$request->get('email');
        $address=$request->get('address');
        $landmark=$request->get('landmark');
        $city=$request->get('city');
        $state=$request->get('state');
        $tehsil=$request->get('tehsil');
        $pin=$request->get('pin');
        $mobile=$request->get('mobile');
        $pan=$request->get('pan');
        $upi=$request->get('upi');
        $ref=$request->get('ref');
        $password=Hash::make($request->input('password'));
        $status=$request->get('status');
        $under_ref=$request->get('under_ref');
        $pstatus=$request->get('pstatus');

        $arr=array();
        $register = new shopee_registration([
            'full_name'=>$full_name,
            'email'=>$email,
            'address'=>$address,
            'landmark'=>$landmark,
            'city'=>$city,
            'state'=>$state,
            'tehsil'=>$tehsil,
            'pin'=>$pin,
            'mobile'=>$mobile,
            'pan'=>$pan,
            'upi'=>$upi,
            'ref'=>$ref,
            'password'=>$password,
            'status'=>$status,
            'under_ref'=>$under_ref,
            'pstatus'=>$pstatus,
        ]);
        $register->save();
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
        $register = shopee_registration::where('id',$id)->first();
        return response()->json($register);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $register = shopee_registration::where('id',$id)->first();
        return response()->json($register);
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
        $full_name=$request->get('full_name');
        $email=$request->get('email');
        $address=$request->get('address');
        $landmark=$request->get('landmark');
        $city=$request->get('city');
        $state=$request->get('state');
        $tehsil=$request->get('tehsil');
        $pin=$request->get('pin');
        $mobile=$request->get('mobile');
        $pan=$request->get('pan');
        $upi=$request->get('upi');
        $ref=$request->get('ref');
        $password=$request->get('password');
        $status=$request->get('status');
        $under_ref=$request->get('under_ref');
        $pstatus=$request->get('pstatus');

        $registerup=shopee_registration::find($id);
        $registerup->full_name=$full_name;
        $registerup->email=$email;
        $registerup->address=$address;
        $registerup->landmark=$landmark;
        $registerup->city=$city;
        $registerup->state=$state;
        $registerup->tehsil=$tehsil;
        $registerup->pin=$pin;
        $registerup->mobile=$mobile;
        $registerup->pan=$pan;
        $registerup->upi=$upi;
        $registerup->ref=$ref;
        $registerup->password=$password;
        $registerup->status=$status;
        $registerup->under_ref=$under_ref;
        $registerup->pstatus=$pstatus;
        $registerup->save();
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
        $register = shopee_registration::find($id);
        $register->delete();
        return response()->json($register);
    }

     public function login(Request $request)
    {
        $user = shopee_registration::where('email',$request->email)->first();
        // echo $user->password;
        $arr = array();
        if(!Hash::check($request->password,$user->password))
        {
            return ["error"=>"Email and Password Not Matched"];
        }
        $user->save();
        $data['status']="success";
        $data['msg']="data Insert";
        $data['user']=$user;
        array_push($arr,$data);
        return response()->json($arr);
    }

}
