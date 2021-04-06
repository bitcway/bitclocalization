<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserWallet extends Model
{
    use HasFactory;
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function currency()
    {
        return $this->belongsTo(Currency::class);
    }
    public function transactionhistory()
    {
        return $this->belongsTo(TransactionHistory::class);
    }
    public function leveragehistory()
    {
        return $this->belongsTo(Leverage_Wallet::class);
    }
    public function lockedSaving()
    {
        return $this->belongsTo(LockedSaving::class);
    }

}
