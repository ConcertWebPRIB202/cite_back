<?php
namespace App\Http\Controllers\Swagger;

use App\Http\Controllers\Controller;

/**
 *  @OA\Get(
 *      path="/reg/user",
 *      summary="Запрос проверки существования пользователя",
 *      tags={"RegistrationAPI"},
 *      @OA\Parameter(
 *         description="User login",
 *         in="path",
 *         name="login",
 *         required=true,
 *         @OA\Schema(type="string"),
 *     ),
 *  
 *      @OA\Response(
 *          response=200,
 *          description="User found"
 *      ),
 *      @OA\Response(
 *          response=404,
 *          description="User not found"
 *      ),
 *      @OA\Response(
 *          response=400,
 *          description="Bad request"
 *      ),
 *  ),
 */

class CheckUserController extends Controller
{

}