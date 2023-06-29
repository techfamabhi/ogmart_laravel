<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\wishlist;;
use App\Models\product_stock;

use DB;

class WishlistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categorydata = wishlist::get();
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
   


    public function addtowishlist(Request $request)
    {
        $mac_address = exec('getmac'); // Get the MAC address using the getmac command
      $mac_address = strtok($mac_address, ' '); // Extract the first MAC address
      $uid = $request->get('uid');
      if (!isset($uid)) {
          $mac_address = exec('getmac');
          $mac_address = strtok($mac_address, ' ');
          $uid = $mac_address;
      }
      else {

    $uid = $request->input('uid');
    $pid = $request->input('pid');
    $pqty = $request->input('pqty');
    $datetime = date('Y-m-d H:i:s');
    $data = array();
    $arr = array();

    // Check if the product already exists in the user's wishlist
    $wishlistItem = Wishlist::where('uid', $uid)->where('pid', $pid)->first();

    if ($wishlistItem) {
        // Update the existing item with the new quantity
        $wishlistItem->pqty += $pqty;
        $wishlistItem->save();
    } else {
        // Create a new wishlist item
        $wishlistItem = new Wishlist;
        $wishlistItem->uid = $uid;
        $wishlistItem->pid = $pid;
        $wishlistItem->pqty = $pqty;
        $wishlistItem->datetime = $datetime;
        $wishlistItem->save();
    }

    $data['status'] = "success";
    $data['msg'] = "data Insert";
    array_push($arr, $data);
    return response()->json($arr);









    }
}

public function wishlistshow($id)
    {
      $pro=DB::table('wishlists')
          ->join('products','wishlists.pid','=','products.id')
          ->where('wishlists.uid','=',$id)
          ->select('*', 'wishlists.id as cid')
          ->get();
        return $pro;

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
        $wishlist = wishlist::find($id);   
        $wishlist->delete();

        return response()->json($wishlist);
    }

    public function clear()
{
    Wishlist::truncate();
    return response()->json(['message' => 'Wishlist cleared successfully']);
}
}
