<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="" name="description" />
        <meta content="themes-lab" name="author" />
        <link rel="shortcut icon" href="assets/global/images/favicon.png">
        <link href="static/css/master/master.css?v1" rel="stylesheet">
        <link href="static/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body ng-app="newApp" class="account separate-inputs" data-page="login" ng-controller="loginCtrl">
        <!-- BEGIN LOGIN BOX -->
        <div class="container" id="login-block">
            <div class="row">
                <div class="col-sm-6 col-md-4 col-md-offset-4">
                    <div class="account-wall">
                        <i class="user-img icons-faces-users-03"></i>
                        <form class="form-signin" name="form"  ng-submit="logear()">
                            <label id="error_msg" class="error">{{error}}</div>
                            <div class="append-icon">
                                <input type="email" name="email" ng-model="row.email" class="form-control form-white username" placeholder="Correo" required>
                                <div ng-messages="frm.email.$error"  ng-if='frm.email.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                                 <div ng-message="email">Correo no valido</div>
                            </div>
                                <i class="icon-user"></i>
                            </div>
                            <div class="append-icon m-b-20">
                                <input type="password" name="passwd" ng-model="row.passwd"  class="form-control form-white password" placeholder="Password" required>
                                <i class="icon-lock"></i>
                            </div>
                            <button type="submit" ng-disabled="frm.$invalid" id="submit-form" class="btn btn-lg btn-danger btn-block ladda-button" data-style="expand-left">Ingresar</button>
                         
                            <div class="clearfix">
                                <!--
                                <p class="pull-left m-t-20"><a id="login" href="#">Already got an account? Sign In</a></p>
                                <p class="pull-right m-t-20"><a href="user-signup-v1.html">New here? Sign up</a></p>
                                -->
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <p class="account-copyright">
                <span>Copyright © <?php echo date('Y'); ?> </span><span>Nativos Digitales</span>.<span>Todos los derechos reservados.</span>
            </p>
            
        </div>
        <script src="static/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="static/bower_components/bootstrap/dist/js/bootstrap.js"></script>
        <script src="static/bower_components/angular/angular.js"></script>
        <script src="static/bower_components/angular-animate/angular-animate.min.js"></script>
        <script src="static/bower_components/angular-cookies/angular-cookies.min.js"></script>
        <script src="static/bower_components/angular-resource/angular-resource.min.js"></script>
        <script src="static/bower_components/angular-route/angular-route.min.js"></script>
        <script src="static/bower_components/angular-sanitize/angular-sanitize.min.js"></script>
        <script src="static/bower_components/moment/min/moment.min.js"></script>
        <script src="static/bower_components/moment/min/locales.min.js"></script>


        <!--  Plugins para los formularios -->
        <script src="static/bower_components/angularUtils-pagination/dirPagination.js"></script>
        <script src="static/bower_components/angular-messages/angular-messages.min.js"></script>
        <script src="static/bower_components/select2/select2.min.js"></script>
        
         <script src="static/bower_components/uploadifive/jquery.uploadifive.min.js"></script>
        <script src="static/bower_components/summernote/summernote.js"></script>

        <script src="static/bower_components/ui-cropper/compile/minified/ui-cropper.js"></script>
        <script src="static/js/master/app.js"></script>
        <script src="static/js/master/loginCtrl.js"></script>
    </body>
</html>
