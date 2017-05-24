        </section>
        
       
        <div id="morphsearch" class="morphsearch">
            <form class="morphsearch-form">
                <input class="morphsearch-input" id="searchinput" type="search" placeholder="Buscar..." />
                <button class="morphsearch-submit" type="submit">Search</button>
            </form>
            <div class="morphsearch-content withScroll">
                <div class="dummy-column user-column">
                    <h2>Clientes</h2>
                    <div id="search_clientes" ng-repeat="val in search_result">
                    
                    <a class="dummy-media-object" href="master/#verclientes/{{val.id}}">
                        
                        <h3><i class="fa fa-star"></i> {{val.name}}</h3>
                    </a>
                    </div>
                </div>
                
                <div class="dummy-column user-column">
                    <h2>Contactos</h2>
                    <div id="search_contactos" ng-repeat="val in search_result_contactos">
                    
                    <a class="dummy-media-object" href="master/#verclientes/{{val.clientes_id}}">
                        
                        <h3><i class="fa fa-user"></i> {{val.contacto}}</h3>
                    </a>
                    </div>
                </div>
            </div>
            <span class="morphsearch-close"></span>
        </div>
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

        <script src="static/bower_components/ui-cropper/compile/minified/ui-cropper.js"></script>
      
        
        <?php 
            foreach ($js as $ret) {
                echo '<script src="static/js/master/'.$ret.'?v2"></script>';
            }

        ?>
         
        <!-- START TOOLS -->
         <script src="static/bower_components/uploadifive/jquery.uploadifive.min.js"></script>
        <script src="static/bower_components/summernote/summernote.js"></script>
        <!-- END TOOLS -->
    </body>
</html>
