<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <div class="card-body">
        <form method="POST" action="{{ route('create') }}" enctype="multipart/form-data">
            @csrf
            
            <div class="form-group row">
                <label for="name" class="col-md-2 col-form-label text-md-left">{{ __('Name') }}</label>
                <div class="col-md-10">
                    <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{old('name')}}" >
                </div>
            </div>
            <div class="form-group row">
                <label for="name" class="col-md-2 col-form-label text-md-left">{{ __('Price') }}</label>
                <div class="col-md-10">
                    <input id="price" type="number"  name="price" value="{{old('price')}}" >
                </div>
            </div>
            <div class="form-group row">
                <label for="email" class="col-md-2 col-form-label text-md-left">{{ __('Description') }}</label>
                <div class="col-md-10">
                    <textarea class="form-control" rows="3" placeholder="Description ..." name="description">{{old('description')}}</textarea>
                    <script>
                        CKEDITOR.replace('description');
                    </script>
                </div>
            </div>
            <div class="form-group row">
                <label for="name" class="col-md-2 col-form-label text-md-left">{{ __('Image') }}</label>
                <div class="col-md-10">
                    <input type="file" name="image" id="exampleInputFile" accept="image/x-png,image/gif,image/jpeg" required oninvalid="this.setCustomValidity('Bạn chưa chọn flie hình ảnh')"
                    oninput="this.setCustomValidity('')" value="{{old('image')}}">
                </div>
            </div>
            <div class="form-group row mb-0">
                <div class="col-md-10 offset-md-4">
                    <button type="submit" class="btn btn-primary">
                        {{ __('Add Product') }}
                    </button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>