<div class="portfolio-modal modal fade" id="portfolioModal2"
      tabindex="-1" role="dialog" aria-hidden="true">

      <div class="modal-dialog">
         <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
               <div class="lr">
                  <div class="rl"></div>
               </div>
            </div>
            <div class="container">
               <div class="row">
                  <div class="col-lg-8 mx-auto">
                     <div class="modal-body">
                        <!-- Project Details Go Here -->
                        <h2 class="text-uppercase">Country</h2>
                        <p class="item-intro text-muted">국가마다 다양한 특성을 지닌 커피 원두가
                           생산됩니다.</p>

                        <p>
                           각 국가마다 품종, 부터 생산방식 까지 각기 다른 방법으로 생산되고 있기때문에,<br> 생산 국가마다,
                           고유의 특성을 가지고 있습니다. <br>아래의 지도에서 국가를 클릭하여 각 국가의 커피원두 특성을
                           알아보세요.
                        </p>
                        <div id="vmap_wrap">
                           <div id="vmap" style="width:600px; height: 400px; margin-right:50px; "></div>
                        </div>
                        <div id="info_result">
                           <div>Info</div>
                           <div id="info_wrapper">         
                              <div class="info_wrap">Country : <span id="info_name"></span></div>
                              <div class="info_wrap">Price : <span id="info_price"></span></div>
                              <div class="info_wrap">kind : <span id="info_kind"></span></div>
                              <div class="info_wrap">Roasting : <span id="info_rt"></span></div>
                              <div class="info_wrap">Description : <span id="info_desc"></span></div> 
                           </div>
                           <div style="width:50%" id="rd_chart_wrapper">
                                   <canvas id="canvas"></canvas>
                           </div>
                            </div>
                        <button class="btn btn-primary" data-dismiss="modal"
                           type="button">
                           <i class="fa fa-times"></i> Close Project
                        </button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>