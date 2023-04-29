@include('shared.head')

<div class="container">
    <div class="row mb-4">
        <div class="col text-center text-white">
            <header class="py-4 bg-primary">
                <h1 class="mb-0">{{ $page_title }}</h1>
            </header>
        </div>
    </div>

@yield('buttons')

@yield('content')
</div>

@include('shared.footer')