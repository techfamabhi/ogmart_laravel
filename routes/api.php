<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ShopeeBillController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ShopeeCustomerController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\ShopeeContactController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\RegisterNewController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CustomerDetailController;
use App\Http\Controllers\ProductStockController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\FrontendController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::apiResource('ShopeeBill',ShopeeBillController::class);
Route::apiResource('Order',OrderController::class);
Route::apiResource('ShopeeCustomer',ShopeeCustomerController::class);
Route::apiResource('Category',CategoryController::class);
Route::get('Categoryshow/{id}',[CategoryController::class,'Categoryshow']);
Route::apiResource('Product',ProductController::class);
Route::get('Productshow/{id}',[ProductController::class,'Productshow']);
Route::apiResource('Register',RegisterController::class);
//Route::apiResource('Contact',ShopeeContactController::class);
Route::apiResource('SubCategory',SubCategoryController::class);
Route::get('Categoryget',[ProductController::class,'categoryget']);
Route::get('Productdesc/{id}',[ProductController::class,'Productdesc']);
Route::get('Categoryedit',[ProductController::class,'Categoryedit']);
Route::get('Billget',[OrderController::class,'Billget']);
Route::get('Productget',[OrderController::class,'Productget']);
Route::get('Categoryname',[SubCategoryController::class,'Categoryname']);
Route::post('Login',[RegisterController::class,'login']);
Route::apiResource('UserRegister',RegisterNewController::class);
Route::post('UserLogin',[RegisterNewController::class,'Userlogin']);
Route::apiResource('Cart',CartController::class);
Route::post('AddToCart',[CartController::class,'addtocart']);
Route::get('Cartshow/{id}',[CartController::class,'Cartshow']);
Route::apiResource('CustomerDetail',CustomerDetailController::class);
Route::apiResource('Stock',ProductStockController::class);

Route::get('shopping_cart/{id}',[FrontendController::class,'shopping']);

Route::post('upload',[UploadController::class,'upload']);


Route::post('Contact', [ShopeeContactController::class, 'ContactUsForm']);

Route::post('validateorder',[CustomerDetailController::class,'validateorder']);
Route::get('tab',[FrontendController::class,'getProductsByType']);




Route::apiResource('wishlist',WishlistController::class);
Route::post('addtowishlist',[WishlistController::class,'addtowishlist']);
Route::get('wishlistshow/{id}',[WishlistController::class,'wishlistshow']);
Route::delete('clear',[WishlistController::class,'clear']);
Route::delete('clearcart',[CartController::class,'clear']);
