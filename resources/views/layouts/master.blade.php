@include('shared.headtwo')
@include('shared.head')
<!-- Navigation -->
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-100 dark:bg-gray-900">
            @include('layouts.navigation')

            <!-- Page Heading -->
            @if (isset($header))
                <header class="bg-white dark:bg-gray-800 shadow">
                    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                        {{ $header }}
                    </div>
                </header>
            @endif

            <!-- Page Content -->
            
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
        </div>
    </body>
</html>