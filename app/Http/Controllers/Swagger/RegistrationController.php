<?php
namespace App\Http\Controllers\Swagger;

use App\Http\Controllers\Controller;

/**
 *  @OA\Post(
 *      path="/reg/user",
 *      summary="Запрос добавления нового пользователя",
 *      tags={"RegistrationAPI"},
 *      @OA\RequestBody(
 *          @OA\MediaType(
 *             mediaType="application/json",
 *             @OA\Schema(
 *                 @OA\Property(
 *                     property="login",
 *                     type="string"
 *                 ),
 *                 @OA\Property(
 *                     property="password",
 *                     type="string"
 *                 ),
 *                 @OA\Property(
 *                     property="repeat_password",
 *                     type="string"
 *                 ),
 *                 @OA\Property(
 *                     property="phone",
 *                     type="string"
 *                 ),
 *                 @OA\Property(
 *                     property="email",
 *                     type="string"
 *                 ),
 *                 @OA\Property(
 *                     property="city",
 *                     type="string"
 *                 ),
 *                 @OA\Property(
 *                     property="gender_id",
 *                     type="boolean"
 *                 ),
 *                 @OA\Property(
 *                     property="photo",
 *                     type="object"
 *                 ),
 *                 example={"login": "login", "password": "!ReeA178gG", "repeat_password": "!ReeA178gG", "phone": "+79999999999", "email": "email@mail.ru", "city": "City", "gender_id": 0, "photo":{}}
 *             )
 *         )
 *      ),
 *  
 *      @OA\Response(
 *          response=201,
 *          description="Successfully registered user"
 *      ),
 *      @OA\Response(
 *          response=400,
 *          description="Bad request"
 *      ),
 *  ),
 */
class RegistrationController extends Controller
{

}