<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Transaksi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_transaksi','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_transaksi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">No Referensi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_referensi','class'=>'form-control'));?>
            <?php echo form_error('no_referensi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Pembeli</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_pembeli','class'=>'form-control'));?>
            <?php echo form_error('nama_pembeli');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Banyak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'banyak','class'=>'form-control'));?>
            <?php echo form_error('banyak');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Total Penjualan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'total_penjualan','class'=>'form-control'));?>
            <?php echo form_error('total_penjualan');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan?</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"data/data_penjualan/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>
