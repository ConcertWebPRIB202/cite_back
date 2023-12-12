<?php
namespace App\Http\Controllers\Registration;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User_account;

class CheckUserController extends Controller
{
    public function check(Request $request)
    {
        if (!$request->login)
        {
            return response('Bad request', 400);
        }
        else
        {
            $User_exist=User_account::where('login',$request->login)->count();
            if ($User_exist==0)
            {
                return response('User not found', 404);
            }
            else if($User_exist>=0)
            {
                return response('User found', 200);
            }
        }
    }
}