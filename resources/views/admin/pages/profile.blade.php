@extends('admin.layouts.master')

@section('content')
    <div class="page-body">
        <div class="container-fluid">
            <div class="page-title">
                <div class="row">
                    <div class="col-6">
                        <h3>User-profile</h3>
                    </div>
                    <div class="col-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:;"><svg class="stroke-icon">
                                        <use href="{{ asset('admin/assets/svg/icon-sprite.svg#stroke-home') }}"></use>
                                    </svg></a></li>
                            <li class="breadcrumb-item">Dashboard</li>
                            <li class="breadcrumb-item active">User-profile</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <!-- Container-fluid starts-->
        <div class="container-fluid">
            <div class="user-profile">
                <div class="row">
                    <!-- user profile first-style start-->
                    <div class="col-sm-12">
                        <div class="card hovercard text-center">
                            <div class="cardheader"></div>
                            <div class="user-image">
                                <div class="avatar"><img alt="" src="{{ asset($user->image) }}"></div>
                                <div class="icon-wrapper"><i class="icofont icofont-pencil-alt-5"></i></div>
                            </div>
                            <div class="info">
                                <div class="row">
                                    <div class="col-sm-6 col-lg-4 order-sm-1 order-xl-0">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="ttl-info text-start">
                                                    <h6><i class="fa fa-envelope"></i>Email</h6>
                                                    <span>{{ $user->email }}</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="ttl-info text-start">
                                                    <h6><i class="fa fa-calendar"></i>BOD</h6>
                                                    <span>{{ date("M d,Y", strtotime($user->dob)) }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-lg-4 order-sm-0 order-xl-1">
                                        <div class="user-designation">
                                            <div class="title"><a target="_blank" href="#">{{ $user->name }}</a></div>
                                            <div class="desc">{{ $user->role_id == 1 ? "Admin" : "User" }}</div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-lg-4 order-sm-2 order-xl-2">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="ttl-info text-start">
                                                    <h6><i class="fa fa-phone"></i>Contact Us</h6>
                                                    <span>{{ $user->phone }}</span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="ttl-info text-start">
                                                    <h6><i class="fa fa-location-arrow"></i>Location</h6>
                                                    <span>{{ $user->address }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="social-media">
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="https://www.facebook.com/" target="_blank"><i
                                                    class="fa fa-facebook"></i></a></li>
                                        <li class="list-inline-item"><a href="https://accounts.google.com/"
                                                target="_blank"><i class="fa fa-google-plus"></i></a></li>
                                        <li class="list-inline-item"><a href="https://twitter.com/" target="_blank"><i
                                                    class="fa fa-twitter"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.instagram.com/" target="_blank"><i
                                                    class="fa fa-instagram"></i></a></li>
                                        <li class="list-inline-item"><a href="https://rss.app/" target="_blank"><i
                                                    class="fa fa-rss"></i></a></li>
                                    </ul>
                                </div>
                                <div class="bg-transparent" id="result">
                                    <a class="btn btn-primary btn-lg" href="#" data-bs-original-title="" title="">
                                        <span class="fa fa-edit"></span> Edit Profile
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- user profile first-style end-->
                </div>
            </div>
        </div>
        <!-- Container-fluid Ends-->
    </div>
@endsection
