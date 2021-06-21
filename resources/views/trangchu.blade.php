<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{ asset('css/style.css')}}">
    <!-- Font Awesome -->
<link rel="stylesheet" href="{{ asset('cpadmin/plugins/fontawesome-free/css/all.min.css') }}">
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet" href="{{ asset('cpadmin/dist/css/adminlte.min.css') }}">
<link rel="stylesheet" href="{{ asset('cpadmin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
<link rel="stylesheet" href="{{ asset('cpadmin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
    <title>Document</title>
</head>
<body>
    <div class="widget-title">
        <h3 class="title">Sản Phẩm Mới Cập Nhật</h3>
    </div>
    <div class="container">
        
        <div class="container-productbox">
            <div id="preloader">
                <div id="loader"></div>
            </div>
            <ul class="listproduct" id="movie-last-movie">
                @foreach ($product as $sp)                      
                <li class="item" >
                    <a href="{{ route('detail',['id'=>$sp->id])}}" >
                        <div class="item-label">
                        </div>
                        <div class="item-img item-img_44">
                            <img class="lazyloaded"  alt="{{$sp->name}}" src="{{$sp->image}}">
                        </div>
                        <h3 class="name-product" title="{{$sp->name}}">
                            {{$sp->name}}
                        </h3>  
                        <strong class="price">{{$sp->price}}₫</strong>
                    </a>
                <div class="item-bottom">
                    <a href="#" class="shiping"></a>
                </div>
                @endforeach
            </ul>
            <div class="clear"></div>
            </div>
        </div>
        </div>
    </div>

<!-- jQuery -->
<script src="{{ asset('cpadmin/plugins/jquery/jquery.min.js') }}"></script>
<!-- Bootstrap 4 -->
<script src="{{ asset('cpadmin/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<!-- AdminLTE App -->
</body>

</html>