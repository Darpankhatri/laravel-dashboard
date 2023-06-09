@extends('admin.layouts.master')

@section('content')
    <div class="page-body">
        <div class="container-fluid">
            <div class="page-title">
                <div class="row">
                    <div class="col-6">
                        <h3>Edit-profile</h3>
                    </div>
                    <div class="col-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><svg class="stroke-icon">
                                        <use href="assets/svg/icon-sprite.svg#stroke-home"></use>
                                    </svg></a></li>
                            <li class="breadcrumb-item">cuba</li>
                            <li class="breadcrumb-item active">Edit-profile</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <!-- Container-fluid starts-->
        <div class="container-fluid">
            <div class="edit-profile">
                <div class="row">
                    {{-- <div class="col-xl-4">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title mb-0">My Profile</h4>
                                <div class="card-options"><a class="card-options-collapse" href="#"
                                        data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a
                                        class="card-options-remove" href="#" data-bs-toggle="card-remove"><i
                                            class="fe fe-x"></i></a></div>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="row mb-2">
                                        <div class="profile-title">
                                            <div class="media"> <img class="img-70 rounded-circle" alt=""
                                                    src="assets/images/user/7.jpg">
                                                <div class="media-body">
                                                    <h5 class="mb-1">MARK JECNO</h5>
                                                    <p>DESIGNER</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <h6 class="form-label">Bio</h6>
                                        <textarea class="form-control" rows="5">On the other hand, we denounce with righteous indignation</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Email-Address</label>
                                        <input class="form-control" placeholder="your-email@domain.com">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Password</label>
                                        <input class="form-control" type="password" value="password">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Website</label>
                                        <input class="form-control" placeholder="http://Uplor .com">
                                    </div>
                                    <div class="form-footer">
                                        <button class="btn btn-primary btn-block">Save</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div> --}}
                    
                    <div class="col-xl-12">
                        <form class="card">
                            <div class="card-header">
                                <h4 class="card-title mb-0">Edit Profile</h4>
                                <div class="card-options"><a class="card-options-collapse" href="#"
                                        data-bs-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a><a
                                        class="card-options-remove" href="#" data-bs-toggle="card-remove"><i
                                            class="fe fe-x"></i></a></div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6 col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label">Name</label>
                                            <input class="form-control" name="name" value="{{ $user->name }}"
                                                type="text" placeholder="Name">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label">Email address</label>
                                            <input class="form-control" disabled value="{{ $user->email }}" type="email"
                                                placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label class="form-label">Phone</label>
                                            <input class="form-control" type="text" placeholder="Phone"
                                                value="{{ $user->phone }}">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="mb-3">
                                            <label class="form-label">DOB</label>
                                            <input class="form-control" type="date" name="dob"
                                                value="{{ $user->dob }}"
                                                max="{{ date('Y-m-d', strtotime('-18 years')) }}">
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="mb-3">
                                            <label class="form-label">Gender</label>
                                            <select name="gender" class="form-control btn-square">
                                                <option value="0" disabled>--Select--</option>
                                                <option value="male"
                                                    {{ Auth::user()->gender == 'male' ? 'selected' : '' }}>Male</option>
                                                <option value="female"
                                                    {{ Auth::user()->gender == 'female' ? 'selected' : '' }}>Female</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div>
                                            <label class="form-label">Address</label>
                                            <textarea class="form-control" rows="2" placeholder="Enter Address">{{ $user->address }}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-end">
                                <button class="btn btn-primary" type="submit">Update Profile</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
