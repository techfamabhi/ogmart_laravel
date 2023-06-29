<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RegisterNew;
use Illuminate\Support\Facades\Hash;

class RegisterNewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $register = RegisterNew::get();
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
        $fname=$request->get('fname');
        $email=$request->get('email');
        $mobile=$request->get('mobile');
        // $password=$request->get('password');
        $password=Hash::make($request->input('password'));
        

        $arr=array();
        $register = new RegisterNew([
            'fname'=>$fname,
            'email'=>$email,
            'mobile'=>$mobile,
            'password'=>$password,
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
        $register = RegisterNew::where('id',$id)->first();
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
        $register = RegisterNew::where('id',$id)->first();
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
        $fname=$request->get('fname');
        $email=$request->get('email');
        $mobile=$request->get('mobile');
        $password=$request->get('password');

        $registerup=RegisterNew::find($id);
        $registerup->fname=$fname;
        $registerup->email=$email;
        $registerup->mobile=$mobile;
        $registerup->password=$password;
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
        $register = RegisterNew::find($id);
        $register->delete();
        return response()->json($register);
    }
     public function Userlogin(Request $request)
    {
        $user = RegisterNew::where('email',$request->email)->first();
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
