<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\SuperPowers;

class SuperPowersController extends Controller
{
    public function index()
    {
        $superpowers = SuperPowers::where('user_id', Auth::id())
            ->where('active', 1)
            ->select('id', 'name', 'description')
            ->get();
        // dd($superpowers);
        return view('superpowers.index', compact('superpowers'));
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        //
    }

    public function show(string $id)
    {
        //
    }

    public function edit(string $id)
    {
        //
    }

    public function update(Request $request, string $id)
    {
        //
    }

    public function destroy(string $id)
    {
        //
    }
}
