<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\contact;
class ShopeeContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $categorydata = contact::get();
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
   public function ContactUsForm(Request $request) {
        $name=$request->get('name');
        $email=$request->get('email');
        $mobile=$request->get('mobile');
        $message=$request->get('message');
        $arr=array();
        $contact = new contact([
            'name'=>$name,
            'email'=>$email,
            'mobile'=>$mobile,
            'message'=>$message
        ]);
        $contact->save();
        $data['status']="success";
        $data['msg']="data Insert";
        array_push($arr,$data);
        return response()->json($arr);

        

        //  Send mail to admin

        //$arr=array();




// contact::create($request->all());
//   \Mail::send('mail', array(
//     'name' => $request->get('name'),
//     'email' => $request->get('email'),
//     'mobile' => $request->get('mobile'),
//     'message' => $request->get('message'),
// ), function($message) use ($request){
//     $message->from('abhishekgouda882@gmail.com');
//     $message->to($request->email, 'Admin');
// });
// return back()->with('success', 'We have received your message and would like to thank you for writing to us.');


   


    }




    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $contact = contact::where('id',$id)->first();
        return response()->json($contact);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $contact = contact::where('id',$id)->first();
        return response()->json($contact);
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
        $email=$request->get('email');
        $mobile=$request->get('mobile');
        $message=$request->get('message');
        $contact=contact::find($id);
        $contact->name=$name;
        $contact->email=$email;
        $contact->mobile=$mobile;
        $contact->message=$message;
        $contact->save();
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
        $student = contact::find($id);
        $student->delete();
        return response()->json($student);
    }
}
