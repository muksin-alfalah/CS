<!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <title>Login Page</title>
    <body>

  <link rel="stylesheet" href="{{asset('css/style2.css')}}">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <body>
    <form class="box" method="POST" action="{{ route('login') }}">
    {{ csrf_field() }}
      <div class="login">

          <div class="avatar">
            <i class="fa fa-user"></i>
          </div>

          <h2>Login Form</h2>
          <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
          <div class="box-login">
            <i class="fas fa-envelope-open-text"></i>
            <input type="text" id="email" placeholder="username" class="form-control" name="email" value="{{ old('email') }}" required autofocus>
               @if ($errors->has('email'))
                        <span class="help-block">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                    @endif
          </div>
        </div>
            

          <div class="box-login">
            <i class="fas fa-lock"></i>
             <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
            <input type="password" id="password"  class="form-control" placeholder="password" name="password" required>
          </div>
             @if ($errors->has('password'))
                        <span class="help-block">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                    @endif
          </span>
          </div>

          <button type="submit" name="login" value="login" class="btn-login">Login</button>
          <div class="bottom">
          </div>
      </div>
  </head>
</body>
  </html>