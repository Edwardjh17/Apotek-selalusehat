<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Transaksi</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'tanggal_transaksi','value'=>$row->tanggal_transaksi,'type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_transaksi');?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">No Referensi</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_referensi','value'=>$row->no_referensi,'class'=>'form-control'));?>
            <?php echo form_error('no_referensi');?>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-4 control-label">Nama Obat</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('id_obat',$id_obat,$row->id_obat,'id="id_obat" class="form-control select2"');?>
                  <?php echo form_error('id_obat', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Harga Jual</label>
                <div class="col-sm-8">
                  <?php echo form_dropdown('harga_jual',$harga_jual,$row->harga_jual,'id="harga_jual" class="form-control select2"');?>
                  <?php echo form_error('harga_jual', '<span class="error-span">', '</span>'); ?>
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Pembeli</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_pembeli','value'=>$row->nama_pembeli,'class'=>'form-control'));?>
            <?php echo form_error('nama_pembeli');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Banyak</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'banyak','value'=>$row->banyak,'class'=>'form-control'));?>
            <?php echo form_error('banyak');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Total Penjualan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'total_penjualan','value'=>$row->total_penjualan,'class'=>'form-control'));?>
            <?php echo form_error('total_penjualan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"penjualan/data_penjualan/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>