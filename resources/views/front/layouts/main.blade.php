<!doctype html>
<html lang="{{ str_replace('_','-', app()->getLocale()) }}">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    {{-- fontawesome --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"
        integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w=="
        crossorigin="anonymous" />

    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">

    <link rel="stylesheet" href="/css/style.css">
    <style>
        .txtWhitecolor{
            color: #D3D6D8 !important;
        }
        .btn-outline-warning {
            color: #ffff00;
            border-color: #ffff00;
        }
        .btn-outline-warning:hover{
            color: black;
            border-color: yellow;
            background-color: yellow;
        }
    </style>
    @yield('custom_css')

    <title>{{env('APP_NAME')}}</title>
</head>

<body>


    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="{{route('front-home', app()->getLocale())}}"><strong>BITC-WAY</strong></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">

                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="txtWhitecolor nav-link"  aria-current="page" href="{{route('front-home', app()->getLocale())}}">Home</a>
                    </li>
                    {{--{{!Auth::check()?'disabled':''}}--}}
                    <li class="nav-item">
                        <?php if(Auth::check()){?>
                        <a class="txtWhitecolor nav-link " aria-current="page" href="{{route('user-trade')}}">Trade</a>
                        <?php }else{?>
                        <a class="txtWhitecolor nav-link" aria-current="page" href="{{route('login', app()->getLocale())}}">Trade</a>
                        <?php }?>
                    </li>
                    <li class="nav-item">
                        <?php if(Auth::check()){?>
                        <a class="txtWhitecolor nav-link " aria-current="page" href="{{route('user-trade', ['type' => 'derivative'])}}">Derivative</a>
                        <?php }else{?>
                        <a class="txtWhitecolor nav-link " aria-current="page" href="{{route('login', app()->getLocale())}}">Derivative</a>
                        <?php }?>
                    </li>
                    <li class="nav-item">
                        <?php if(Auth::check()){?>
                        <a class="txtWhitecolor nav-link " aria-current="page" href="{{route('user-trade-finance')}}">Finance</a>
                        <?php }else{?>
                        <a class="txtWhitecolor nav-link " aria-current="page" href="{{route('login', app()->getLocale())}}">Finance</a>
                        <?php }?>
                    </li>
                    <li class="nav-item">
                        <a class="txtWhitecolor nav-link" href="{{route('front-terms', app()->getLocale())}}">Terms & conditions</a>
                    </li>


                </ul>
                <ul class="navbar-nav mb-1 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle txtWhitecolor" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            EN
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="{{ route(Route::currentRouteName(), 'jp') }}">JP</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="{{ route(Route::currentRouteName(), 'en') }}">EN</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <?php if(Auth::check()){?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle txtWhitecolor" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fas fa-user"></i> {{Auth::user()->first_name.' '.Auth::user()->last_name}}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="{{route('user-dashboard')}}">Dashboard</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="{{route('logout')}}">Logout</a></li>
                        </ul>
                    </li>
                    <?php }else{?>
                    <li class="nav-item">
                        <a class="txtWhitecolor nav-link" aria-current="page" href="{{route('login', app()->getLocale())}}">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="txtWhitecolor nav-link" href="{{route('signup', app()->getLocale())}}">Sign up</a>
                    </li>

                    <?php }?>
                </ul>

            </div>
        </div>
    </nav>


    <div id="wrap">
        <div class="container">
            @yield('content')
        </div>
    </div>
    <div class="container">
        @include('includes.footer')
    </div>
    






    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->

    {{-- jquery --}}
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

    {{-- vue dev version --}}
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>

    {{-- vue production version --}}
    {{-- <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12"></script> --}}

    {{-- axios --}}
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>
        window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
        let token = document.head.querySelector('meta[name="csrf-token"]');
        if (token) {
            window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;
        } else {
            console.error('CSRF token not found: https://laravel.com/docs/csrf#csrf-x-csrf-token');
        }

    </script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>


    <script>
        var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
        var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
            return new bootstrap.Tooltip(tooltipTriggerEl)
        })

    </script>

    @yield('custom_js')
</body>

</html>
