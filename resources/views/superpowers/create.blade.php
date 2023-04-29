@extends('layouts.master')

@section('buttons')
<div class="row justify-content-center mb-4">
    <div class="col-12 col-md-9 col-lg-6">
        <a href="{{ route('superpowers.index') }}" class="btn btn-secondary">Volver</a>
    </div>
</div>
@endsection

@section('content')
        <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-6">
                <form action="{{ route('superpowers.store')}} " method="post">
                @csrf
                    <div class="mb-3">
                        <label for="name">Name</label><br>
                        <input type="text" name="name" class="form-control">
                    </div>
                    
                    <br><br>

                    <div class="mb-3">
                        <label for="description">Description</label><br>
                        <textarea name="description" cols="50" rows="5" class="form-control"></textarea>
                    </div>

                    <br><br>
                    <div class="text-end">
                        <button type="submit" class="btn btn-success">{{ $page_title }}</button>
                    </div>
                </form>
            </div>
        </div>
@endsection