<!DOCTYPE html>
<html lang="en">

<head>

    <!-- start: Meta -->
    <meta charset="utf-8">
    <title>TATA KELOLA KINERJA TEKNOLOGI INFORMASI MENGGUNAKAN
        IT BALANCED SCORECARD</title>
    <meta name="description" content="TATA KELOLA KINERJA TEKNOLOGI INFORMASI MENGGUNAKAN
IT BALANCED SCORECARD">
    <meta name="author" content="Dennis Ji">
    <meta name="keyword"
        content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link id="bootstrap-style" href="{{ asset('template/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('template/css/bootstrap-responsive.min.css') }}" rel="stylesheet">
    <link id="base-style" href="{{ asset('template/css/style.css') }}" rel="stylesheet">
    <link id="base-style-responsive" href="{{ asset('template/css/style-responsive.css') }}" rel="stylesheet">
</head>

<body>
    <!-- start: Header -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse"
                    data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="template.php"><span>IT-BSC</span></a>

                <!-- start: Header Menu -->
                <div class="nav-no-collapse header-nav">
                    <ul class="nav pull-right">


                        <!-- start: User Dropdown -->
                        <li class="dropdown">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="halflings-icon white user"></i>
                                {{ auth()->user()->username ?? 'Unknown User' }}
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-menu-title">
                                    <span>Account Settings</span>
                                </li>

                                <form id="logout-form" method="POST" action="{{ route('logout') }}">
                                    @csrf
                                    <li><button type="submit"><i class="halflings-icon off"></i> Logout</button></li>
                                </form>
                            </ul>
                        </li>
                        <!-- end: User Dropdown -->
                    </ul>
                </div>
                <!-- end: Header Menu -->

            </div>
        </div>
    </div>
    <!-- start: Header -->

    <div class="container-fluid-full">
        <div class="row-fluid">
            @include('layouts.sidebar')

            <!-- start: Content -->
            <div id="content" class="span10">
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="{{ route('home') }}">Home</a>
                        <i class="icon-angle-right"></i>
                    </li>
                    <li><a href="#">Dashboard</a></li>
                </ul>


                <div class="row-fluid">
                    @yield('content')
                </div>
                <!--/.fluid-container-->

                <!-- end: Content -->
            </div>
            <!--/#content.span10-->
        </div>
        <!--/fluid-row-->

        <div class="modal hide fade" id="myModal">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3>Settings</h3>
            </div>
            <div class="modal-body">
                <p>Here settings can be configured...</p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">Close</a>
                <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>

        <div class="clearfix"></div>

        <footer>

            <p>
                <span style="text-align:left;float:left">&copy; 2013 <a
                        href="http://themifycloud.com/downloads/janux-free-responsive-admin-dashboard-template/"
                        alt="Bootstrap_Metro_Dashboard">JANUX Responsive Dashboard</a></span>

            </p>

        </footer>

        <!-- start: JavaScript-->

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
