<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    <div class="container">
        <div class="widget-title">
            <a class="title-hero" href="{{ route('show')}}">Trang chủ</a>
            <h3 class="title">Chi tiết sản phẩm</h3>
        </div>
    </div>
    
    <div class="container">   
        
        <div class="container-productbox">
            <div id="preloader">
                <div id="loader"></div>
            </div>
            @if (isset($product))
            <div class="row">
                <div class="col-md-6">
                    <div class="item-img item-img_44">
                        <img   alt="{{$product->name}}" src="{{$product->image}}" style="width: 500px;border: 1px solid;">
                    </div>
                </div>
                <div class="col-md-6">
                    <h3 title="{{$product->name}}">
                        {{$product->name}}
                    </h3>  
                    <strong class="price">{{$product->price}}₫</strong>
                </div>
                <div class="col-md-12" style="margin: 0 auto;border: 1px solid; margin-top: 30px;">
                    <p>{{$product->description}}</p>
                </div>
            </div>
                
                
            @else                                            
                <h1>Không tìm thấy sản phẩm</h1>
            @endif
            
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