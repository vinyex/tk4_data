<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>@yield(
        'title',
        'TATA KELOLA KINERJA TEKNOLOGI INFORMASI MENGGUNAKAN
                            IT BALANCED SCORECARD',
    )</title>
    <meta name="description" content="TATA KELOLA KINERJA TEKNOLOGI INFORMASI MENGGUNAKAN
IT BALANCED SCORECARD">
    <meta name="author" content="Dennis Ji">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link id="bootstrap-style" href="{{ asset('template/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('template/css/bootstrap-responsive.min.css') }}" rel="stylesheet">
    <link id="base-style" href="{{ asset('template/css/style.css') }}" rel="stylesheet">
    <link id="base-style-responsive" href="{{ asset('template/css/style-responsive.css') }}" rel="stylesheet">
    <link
        href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
        rel='stylesheet' type='text/css'>

    <link rel="shortcut icon" href="{{ asset('/favicon.ico') }}">

    <style type="text/css">
        body {
            background: url(/template/img/bg-login.jpg) !important;
        }
    </style>
</head>

<body>
    <div class="container-fluid-full">
        <div class="row-fluid">

            <div class="row-fluid">
                <div class="login-box">
                    <div class="icons">
                        <a href="{{ url('/') }}"><i class="halflings-icon home"></i></a>
                        <a href="#"><i class="halflings-icon cog"></i></a>
                    </div>
                    <h2>Masukkan username dan password</h2>
                    <form class="form-horizontal" action="{{ route('login-process') }}" method="post">
                        @csrf
                        <fieldset>

                            <div class="input-prepend" title="Username">
                                <span class="add-on"><i class="halflings-icon user"></i></span>
                                <input class="input-large span10" name="username" id="username" type="text"
                                    placeholder="type username" />
                            </div>
                            <div class="clearfix"></div>

                            <div class="input-prepend" title="Password">
                                <span class="add-on"><i class="halflings-icon lock"></i></span>
                                <input class="input-large span10" name="password" id="password" type="password"
                                    placeholder="type password" />
                            </div>

                            <div class="button-login">
                                <button type="submit" class="btn btn-primary" name="login">Login</button>
                            </div>
                            <div class="clearfix"></div>
                    </form>
                    <hr>
                </div>
            </div>
        </div>
    </div>

    <script src="{{ asset('template/js/jquery-1.9.1.min.js') }}"></script>
    <script src="{{ asset('template/js/jquery-migrate-1.0.0.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery-ui-1.10.0.custom.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.ui.touch-punch.js') }}"></script>

    <script src="{{ asset('template/js/modernizr.js') }}"></script>

    <script src="{{ asset('template/js/bootstrap.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.cookie.js') }}"></script>

    <script src='{{ asset('template/js/fullcalendar.min.js') }}'></script>

    <script src='{{ asset('template/js/jquery.dataTables.min.js') }}'></script>

    <script src="{{ asset('template/js/excanvas.js') }}"></script>
    <script src="{{ asset('template/js/jquery.flot.js') }}"></script>
    <script src="{{ asset('template/js/jquery.flot.pie.js') }}"></script>
    <script src="{{ asset('template/js/jquery.flot.stack.js') }}"></script>
    <script src="{{ asset('template/js/jquery.flot.resize.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.chosen.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.uniform.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.cleditor.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.noty.js') }}"></script>

    <script src="{{ asset('template/js/jquery.elfinder.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.raty.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.iphone.toggle.js') }}"></script>

    <script src="{{ asset('template/js/jquery.uploadify-3.1.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.gritter.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.imagesloaded.js') }}"></script>

    <script src="{{ asset('template/js/jquery.masonry.min.js') }}"></script>

    <script src="{{ asset('template/js/jquery.knob.modified.js') }}"></script>

    <script src="{{ asset('template/js/jquery.sparkline.min.js') }}"></script>

    <script src="{{ asset('template/js/counter.js') }}"></script>

    <script src="{{ asset('template/js/retina.js') }}"></script>

    <script src="{{ asset('template/js/custom.js') }}"></script>
    <!-- end: JavaScript-->

</body>

</html>
