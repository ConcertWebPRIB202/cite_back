<?php
namespace App\Http\Controllers\Swagger;

use App\Http\Controllers\Controller;

/**
 *  @OA\Post(
 *      path="/auth/login",
 *      summary="Запрос авторизации пользователя",
 *      tags={"RegistrationAPI"},
 *      @OA\RequestBody(
 *          @OA\MediaType(
 *             mediaType="application/json",
 *             @OA\Schema(
 *                 @OA\Property(
 *                     property="email",
 *                     type="string"
 *                 ),
 *                 @OA\Property(
 *                     property="password",
 *                     type="string"
 *                 ),
 *                 example={"email": "test@mail.ru", "password": "!ReeA178gG"}
 *             )
 *         )
 *      ),
 *
 *      @OA\Response(
 *          token="X"
 *      ),
 *      @OA\Response(
 *          error="X"
 *      ),
 *  ),
 *  @OA\Post(
 *       path="/auth/logout",
 *       summary="Запрос выхода из аккаунта пользователя",
 *       tags={"RegistrationAPI"},
 *
 *       @OA\Response(
 *           success="user logout"
 *       ),
 *       @OA\Response(
 *           error="exception"
 *       ),
 *   ),
 */
class AuthorizationController extends Controller
{

}
