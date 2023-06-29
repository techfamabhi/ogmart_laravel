<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\shopee_bill;
use DB;


class ShopeeBillController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $shopeebilldata = shopee_bill::get();
        return response()->json($shopeebilldata);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    { 
       
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    { 
        $cid=$request->get('cid');
        $bill_amount=$request->get('bill_amount');
        $bill_discount=$request->get('bill_discount');
        $bill_date=$request->get('bill_date');
        $pay_made=$request->get('pay_made');
        $delivery_status=$request->get('delivery_status');
        $bill_status=$request->get('bill_status');
        $exh_status=$request->get('exh_status');

        $arr=array();
        $shopeebill = new shopee_bill([
            'cid'=>$cid,
            'bill_amount'=>$bill_amount,
            'bill_discount'=>$bill_discount,
            'bill_date'=>$bill_date,
            'pay_made'=>$pay_made,
            'delivery_status'=>$delivery_status,
            'bill_status'=>$bill_status,
            'exh_status'=>$exh_status
        ]);
        $shopeebill->save();
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
        $shopeebill = shopee_bill::where('id',$id)->first();
        return response()->json($shopeebill);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $shopeebill = shopee_bill::where('id',$id)->first();
        return response()->json($shopeebill);
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
        $cid=$request->get('cid');
        $bill_amount=$request->get('bill_amount');
        $bill_discount=$request->get('bill_discount');
        $bill_date=$request->get('bill_date');
        $pay_made=$request->get('pay_made');
        $delivery_status=$request->get('delivery_status');
        $bill_status=$request->get('bill_status');
        $exh_status=$request->get('exh_status');

        $shopeebillup=shopee_bill::find($id);
        $shopeebillup->cid=$cid;
        $shopeebillup->bill_amount=$bill_amount;
        $shopeebillup->bill_date=$bill_date;
        $shopeebillup->pay_mode=$pay_made;
        $shopeebillup->delivery_status=$delivery_status;
        $shopeebillup->bill_status=$bill_status;
        $shopeebillup->exh_status=$exh_status;
        $shopeebillup->save();
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
        $shopeebill = shopee_bill::find($id);
        $shopeebill->delete();
        return response()->json($shopeebill);
    }
}
