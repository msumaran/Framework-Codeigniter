        </section>
        
    
        <div class="loader-overlay">
            <div class="spinner">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
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
        <script src="static/bower_components/angularUtils-pagination/dirPagination.js"></script>
        <script src="static/bower_components/angular-messages/angular-messages.min.js"></script>
        <script src="static/bower_components/select2/select2.min.js"></script>
        <script src="static/bower_components/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="static/bower_components/bootstrap-datepicker/locales/bootstrap-datepicker.es.min.js"></script>
        <script src="static/bower_components/mcustom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        
        <script src="static/bower_components/ui-cropper/compile/minified/ui-cropper.js"></script>
        <script src="static/js/master/app.js?v2"></script>   
        
        <?php 
            foreach ($js as $ret) {
                if($ret !== 'app.js'){
                     echo '<script src="static/js/master/'.$ret.'?v2"></script>';
                }
               
            }

        ?>
         
        <!-- START TOOLS -->
         <script src="static/bower_components/uploadifive/jquery.uploadifive.min.js"></script>
        <script src="static/bower_components/summernote/summernote.js"></script>
        <!-- END TOOLS -->
    </body>
</html>
