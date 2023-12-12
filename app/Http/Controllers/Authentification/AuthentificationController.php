<?php

namespace App\Http\Controllers\Authentification;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Validation\ValidationException;
use Illuminate\Validation\Rules\Password;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

use App\Models\User_account;
use Illuminate\Support\Facades\Crypt;

class AuthentificationController extends Controller
{
    public function store(Request $request): JsonResponse
    {
        $user_account = new User_Account;
        $validator=Validator::make($request->all(),[
            // 'password' => [Password::min(8)->mixedCase()->numbers(),'required'],
            // 'email' => ['email:rfc,dns','required'],
        ]);
        if($validator->fails())
        {
            return response()->json([
                'error'=>'Validation error'
            ]);
        }
        else
        {
            if (!$request->email || !$request->password)
            {
                return response()->json([
                    'error'=>'Bad request'
                ]);
            }
            else
            {
                $user_account=$user_account::where('email',$request->email)->first();
                if (User_account::where('email',$request->email)->count()==0 || $request->password!=Crypt::decryptString($user_account->password))
                {
                    return response()->json([
                        'error'=>'User not found'
                    ]);
                }
                else if(User_account::where('email',$request->email)->count()>=0 && $request->password==Crypt::decryptString($user_account->password))
                {
                    $user_account->tokens()->delete();
                    $token = $user_account->createToken('api-token');
                    return response()->json([
                        'user' => $user_account,
                        'token' => $token->plainTextToken,
                    ]);
                }
            }
        }
    }

    public function destroy(Request $request): JsonResponse
    {
        try {
            Auth::guard('web')->logout();

            $request->session()->invalidate();

            $request->session()->regenerateToken();

            return response()->json([
                'success' => 'user logout',
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'error'=>$e
            ]);
        }
    }
}