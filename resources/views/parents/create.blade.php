@extends('layouts.master')

@section('buttons')
<div class="row justify-content-center mb-4">
    <div class="col-12 col-md-9 col-lg-6">
        <a href="{{ route('parents.index') }}" class="btn btn-secondary">Volver</a>
    </div>
</div>
@endsection

@section('content')
        <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-6">
                <form action="{{ route('parents.store')}} " method="post">
                @csrf
                    <div class="mb-3">
                        <label for="name">Name</label><br>
                        <input type="text" name="name" class="form-control">
                    </div>
                    
                    <br><br>

                    <div class="mb-3">
                        <label for="gender">Gender</label><br>
                        <select name="gender" id="gender" class="form-select">
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>

                    <br><br>
                    <div class="text-end">
                        <button type="submit" class="btn btn-success">{{ $page_title }}</button>
                    </div>
                </form>
            </div>
        </div>
@endsection