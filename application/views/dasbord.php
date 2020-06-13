<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<section class="content" style="height: auto !important; min-height: 0px !important;">
		<!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box -->
		<div class="small-box bg-green">
		<div class="inner">
		<h3><?= $this->fungsi->itung_obat()?></h3>
		<p>Data Obat</p>
		</div>
		<div class="icon">
		<i class="fa fa-hourglass-2"></i>
		</div>
		<h5 class="small-box-footer"<?php echo button('load_silent("obat/stock_obat_view","#content")','' ,'  ');?>More info <i class="fa fa-arrow-circle-right"></i></h5>
		</div>
		</div>

    <!-- Small boxes (Stat box) --> 
		<div class="row">
		<div class="col-lg-3 col-xs-6">
		<!-- small box --> 
		<div class="small-box bg-red">
		<div class="inner">
		<h3><?= $this->fungsi->itung_kadaluwarsa()?></h3>
		<p>Obat Kadaluwarsa</p>
		</div>
		<div class="icon">
		<i class="fa fa-minus-circle"></i>
		</div>
		<h5 class="small-box-footer"<?php echo button('load_silent("obat/obat_kadaluwarsa_view","#content")','' ,'  ');?>More info <i class="fa fa-arrow-circle-right"></i></h5>
        </div>
		</div>


		<!-- ./col --> 
		<div class="col-lg-3 col-xs-6">
		<!-- small box --> 
		<div class="small-box bg-orange">
		<div class="inner">
		<h3><?= $this->fungsi->itung_abis()?></h3>
		<p>Obat Habis</p>
		</div>
		<div class="icon">
		<i class="fa fa-exclamation-triangle"></i>
		</div>
		<h5 class="small-box-footer"<?php echo button('load_silent("obat/obat_habis_view","#content")','' ,'  ');?>More info <i class="fa fa-arrow-circle-right"></i></h5>
		</div>
        </div>

	</div>
</section>
  
