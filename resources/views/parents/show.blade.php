@extends('layouts.master')

@section('buttons')
<div class="row justify-content-center mb-4">
    <div class="col-12 col-md-9 col-lg-6">
        <a href="{{ route('parents.index') }}" class="btn btn-secondary">Volver</a>
    </div>
</div>
@endsection

@section('content')

        <div class="row justify-content-center mb-4">
            <div class="col-12 col-md-9 col-lg-6">
                <p class="text-center" style="font-weight: bold; font-size: 20px;">{{ $parent->gender }}</p>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-6 text-end">
                <ul class="list-inline">
                    <li class="list-inline-item">
                        <a href="{{ route('parents.edit', $parent->id) }}" class="btn btn-warning text-white">Edit Parent</a>
                    </li>
                    <li class="list-inline-item">
                        <form action="{{ route('parents.destroy', $parent->id) }}" method="post">
                            @method('delete')
                            @csrf
                            <button type="submit" onclick="return confirm('Are you sure that you want to delete this record?')" class="btn btn-danger">Delete</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
@endsection