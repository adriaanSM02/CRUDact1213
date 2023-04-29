@extends('layouts.master')

@section('buttons')
<div class="row justify-content-center mb-4">
    <div class="col-12 col-md-9 col-lg-6">
        <a href="{{ route('superpowers.index') }}" class="btn btn-secondary">Volver</a>
    </div>
</div>
@endsection

@section('content')

        <div class="row justify-content-center mb-4">
            <div class="col-12 col-md-9 col-lg-6">
                <p>{{ $superpower->description }}</p>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-6 text-end">
                <ul class="list-inline">
                    <li class="list-inline-item">
                        <a href="{{ route('superpowers.edit', $superpower->id) }}" class="btn btn-warning text-white">{{ $page_title }}</a>
                    </li>
                    <li class="list-inline-item">
                        <form action="{{ route('superpowers.destroy', $superpower->id) }}" method="post">
                            @method('delete')
                            @csrf
                            <button type="submit" onclick="return confirm('Are you sure that you want to delete this record?')" class="btn btn-danger">Delete</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
@endsection