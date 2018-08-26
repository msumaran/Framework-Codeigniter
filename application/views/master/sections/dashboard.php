<div ng-show="id">
    <div class="row">
        <div class="col-lg-12 portlets">
        		<div class="spinner" ng-show="iframeload"></div>
                <iframe ng-show="!iframeload" iframe-onload="iframeLoadedCallBack()" width="100%" height="700px" src="{{iframe  | trusted}}" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>
</div>



<?php $this->load->view('master/templates/footer_int'); ?>
</div>