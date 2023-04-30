@extends('layouts.master')

@section('buttons')

@endsection


@section('content')

        <div class="row mb-4">
            <div class="col text-end">
                <a href="{{ route('parents.create') }}" class="btn btn-success">Create Parents</a>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <table style="width: 100%; text-align: center" class="table table-striped text-center">
                <thead>
                    <tr>
                        <th style="width: 30%;">ID</th>
                        <th style="width: 30%;">Name</th>
                        <th style="width: 30%;">Gender</th>
                    </tr>
                </thead>

                <tbody>
                    @forelse($parents as $parent)
                        <tr>
                            <td>{{ $parent->id }}</td>
                            <td>
                                <a href="{{ route('parents.show', $parent->id) }}">{{ $parent->name }}</a>
                            </td>
                            <td>{{ $parent->gender }}</td>
                        </tr>
                    @empty
                        <tr>
                            <p>There's no parents.</p>
                        </tr>
                    @endforelse
                </tbody>
                </table>
            </div>
        </div>
        
@endsection