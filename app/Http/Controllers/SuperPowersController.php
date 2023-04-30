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

        $page_title = 'Superpowers';
        return view('superpowers.index', compact('superpowers','page_title'));
    }

    public function create()
    {
        $page_title = 'Create Superpowers';
        return view('superpowers.create', compact('page_title'));
    }

    public function store(Request $request)
    {
        SuperPowers::create([
            'user_id' => Auth::id(),
            'name'=> $request->name,
            'description' => $request->description
        ]);
        
        return redirect()->route('superpowers.index');
    }

    public function show(string $id)
    {
        $superpower = SuperPowers::where('user_id', Auth::id())
            ->where('active', 1)
            ->where('id', $id)
            ->select('id', 'name', 'description')
            ->firstOrFail();

        $page_title = $superpower->name;

        return view('superpowers.show', compact('superpower', 'page_title'));
    }

    public function edit(string $id)
    {
        $superpower = SuperPowers::where('user_id', Auth::id())
            ->where('active', 1)
            ->where('id', $id)
            ->select('id', 'name', 'description')
            ->firstOrFail();

        $page_title = "Edit Superpower";
        return view('superpowers.edit', compact('superpower', 'page_title'));
    }

    public function update(Request $request, string $id)
    {
        // dd($request);
        $superpower = SuperPowers::where('user_id', Auth::id())
            ->where('active', 1)
            ->where('id', $id)
            ->select('id', 'name', 'description')
            ->firstOrFail();

        $superpower->update([
            'name' => $request->name,
            'description' => $request->description
        ]);

        return redirect()->route('superpowers.show', $id);
    }

    public function destroy(string $id)
    {
        $superpower = SuperPowers::where('user_id', Auth::id())
            ->where('active', 1)
            ->where('id', $id)
            ->select('id', 'name', 'description')
            ->firstOrFail();
        
        $superpower->update([
            'active' => false
        ]);

        return redirect()->route('superpowers.index');
    }
}
