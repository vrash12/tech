<?php
// app/Models/User.php
namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Hash;

class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'username',
        'name',
        'email',
        'password',
    ];


    protected $hidden = [
        'password', 'remember_token',
    ];

   public function profile()
    {
        return $this->hasOne(StudentProfile::class);
    }

    public function recommendations()
    {
        return $this->hasMany(Recommendation::class);
    }
    public function setPasswordAttribute($password)
    {
        $this->attributes['password'] = Hash::needsRehash($password)
            ? Hash::make($password)
            : $password;
    }

    //roles()
    public function roles()
    {
        return $this->belongsToMany(Role::class);
    }
}
