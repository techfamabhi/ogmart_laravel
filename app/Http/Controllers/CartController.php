<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cart;
use App\Models\product_stock;

use DB;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cart = Cart::get();
        return response()->json($cart);
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





    

    public function addToCart(Request $request)
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
$CartItem = Cart::where('uid', $uid)->where('pid', $pid)->first();

// Get the stock quantity of the product
$product_stock = DB::table('product_stocks')
                    ->where('pid', '=', $pid)
                    ->first();

if ($product_stock && $pqty <= $product_stock->qty) {
    // Product is available, add to the cart or update the existing item
    if ($CartItem) {
        // Update the existing item with the new quantity
        $CartItem->pqty += $pqty;
        $CartItem->save();
    } else {
        // Create a new Cart item
        $CartItem = new Cart;
        $CartItem->uid = $uid;
        $CartItem->pid = $pid;
        $CartItem->pqty = $pqty;
        $CartItem->datetime = $datetime;
        $CartItem->save();
    }

    // Update the stock quantity of the product in the product_stocks table
    $updated_qty = $product_stock->qty - $pqty;
    DB::table('product_stocks')
        ->where('pid', '=', $pid)
        ->update(['qty' => $updated_qty]);

    $data['status'] = "success";
    $data['msg'] = "data Insert";
    array_push($arr, $data);
    return response()->json($arr);
} else {
    // Product is out of stock, return an error message
    return response()->json(['status' => 'error', 'msg' => 'Product is out of stock']);
}





}


    }



//
// public function addToCart(Request $request)
// {
//     $mac_address = exec('getmac'); // Get the MAC address using the getmac command
//     $mac_address = strtok($mac_address, ' '); // Extract the first MAC address
//     $uid = $request->get('uid');
//     if (!isset($uid)) {
//         $mac_address = exec('getmac');
//         $mac_address = strtok($mac_address, ' ');
//         $uid = $mac_address;
//     } else {
//         $uid = $request->get('uid');
//     }
//
//     $pid = $request->get('pid');
//     $pqty = $request->get('pqty');
//     $datetime = $request->get('datetime');
//
//     // Retrieve the current stock quantity of the product
//     $product_stock = DB::table('product_stocks')
//         ->select('qty')
//         ->where('pid', '=', $pid)
//         ->first();
//
//     // Check if the requested quantity is greater than the available stock quantity
//     if ($pqty > $product_stock->qty) {
//         return response()->json(['status' => 'error', 'msg' => 'Product is out of stock']);
//     }
//
//     // Update the stock quantity of the product in the product_stocks table
//     $updated_qty = $product_stock->qty - $pqty;
//     DB::table('product_stocks')
//         ->where('pid', '=', $pid)
//         ->update(['qty' => $updated_qty]);
//
//     // Check if the product already exists in the cart for the user
//     $existing_cart_item = Cart::where('uid', '=', $uid)
//         ->where('pid', '=', $pid)
//         ->first();
//
//     if ($existing_cart_item) {
//         // If the product already exists in the cart, update the quantity
//         $existing_cart_item->pqty += $pqty;
//         $existing_cart_item->save();
//     } else {
//         // If the product does not exist in the cart, add it
//         $cart = new Cart([
//             'uid' => $uid,
//             'pid' => $pid,
//             'pqty' => $pqty,
//             'datetime' => $datetime
//         ]);
//         $cart->save();
//     }
//
//     $data = [
//         'status' => 'success',
//         'msg' => 'Product added to cart'
//     ];
//     return response()->json($data);
// }
//


















    public function Cartshow($id)
    {
      //return response()->json($id);
      $pro=DB::table('carts')
          ->join('products','carts.pid','=','products.id')
          ->where('carts.uid','=',$id)
          ->select('*', 'carts.id as cid')
          ->get();
        return $pro;







      // Retrieve the updated cart item
      // $cartItem = DB::table('carts')
      //                 ->where('uid', '=', $userId)
      //                 ->where('pid', '=', $productId)
      //                 ->first();
      //
      // if ($cartItem) {
      //     // If the cart item is found, return the updated cart data
      //     $cartData = DB::table('carts')
      //                     ->join('products', 'carts.pid', '=', 'products.id')
      //                     ->where('carts.uid', '=', $userId)
      //                     ->select('*', 'carts.id as cid')
      //                     ->get();
      //     return response()->json(['status' => 'success', 'cart' => $cartData]);
      // } else {
      //     return response()->json(['status' => 'error', 'msg' => 'Cart item not found']);
      // }




    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $uid=$request->get('uid');
        $pid=$request->get('pid');
        $pqty=$request->get('pqty');
        $datetime=$request->get('datetime');

        $arr=array();
        $Cart = new Cart([
            'uid'=>$uid,
            'pid'=>$pid,
            'pqty'=>$pqty,
            'datetime'=>$datetime
        ]);
        $Cart->save();
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
        $Cart = Cart::where('id',$id)->first();
        return response()->json($Cart);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $Cart = Cart::where('id',$id)->first();
        return response()->json($Cart);
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
      $Cart = Cart::find($id);
      $pid = $Cart->pid;
      $pqty = $Cart->pqty;

// Increase the stock quantity of the product in the product_stocks table
$product_stock = product_stock::where('pid', $pid)->first();
$updated_qty = $product_stock->qty + $pqty;
$product_stock->update(['qty' => $updated_qty]);

// Delete the item from the cart
$Cart->delete();

return response()->json($Cart);
    }


     public function clear()
{
    Cart::truncate();
    return response()->json(['message' => 'Wishlist cleared successfully']);
}


}
