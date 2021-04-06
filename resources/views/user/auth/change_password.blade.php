@extends('user.layouts.main')

@section('custom_css')
    <style>
        .txtWhitecolor{
            color: #D3D6D8;
        }
        .txtHeadingColor{
            color: yellow;
        }
    </style>
@endsection

@section('content')
<div id="wrap">
    <h3 class="txtHeadingColor">Change password</h3>
    <hr>

    <div class="row">
        <div class="col-md-8 col-lg-6">
            <div class="card">
                <div class="card-body">
                    @include('includes.message')

                    <form action="" method="POST">
                    @csrf
                        <div class="form-group">
                            <label for="" class="txtWhitecolor">Old Password</label>
                            <input type="password" class="form-control" aria-describedby="" name="old_password"
                                value="{{old('old_password')}}" placeholder="Enter old password here..." required>
                            @error('old_password')
                            <small class="text-danger">{{ $message }}</small>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="" class="txtWhitecolor">New Password</label>
                            <input type="password" class="form-control" aria-describedby="" name="password"
                                value="{{old('password')}}" placeholder="Enter new password here..." required>
                            @error('password')
                            <small class="text-danger">{{ $message }}</small>
                            @enderror

                        </div>
                        <div class="form-group">
                            <label for="" class="txtWhitecolor">Confirm Password</label>
                            <input type="password" class="form-control" aria-describedby="" name="password_confirmation"
                                value="{{old('password_confirmation')}}" placeholder="Enter password again here..." required>
                            @error('password_confirmation')
                            <small class="text-danger">{{ $message }}</small>
                            @enderror

                        </div>
                        <button type="submit" class="btn btn-outline-warning float-end">Change</button>
                        <a href="{{route('user-dashboard')}}" class="btn btn-outline-info float-end me-2">Cancel</a>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection

@section('custom_js')
@endsection
