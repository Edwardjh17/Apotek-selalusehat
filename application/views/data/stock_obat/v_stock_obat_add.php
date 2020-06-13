<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Obat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_obat','class'=>'form-control'));?>
            <?php echo form_error('nama_)obat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Obat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_obat','class'=>'form-control'));?>
            <?php echo form_error('kode_obat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Obat</label>
            <div class="col-sm-8">
            <div class="form-gorup">
                <select class="form-control" name="jenis_obat">
                <?php foreach ($jenis_obat->result() as $jenis_obat): ?>
                    <option value="<?= $jenis_obat->id ?>"><?= $jenis_obat->jenis_obat ?></option>
                <?php endforeach; ?>
                </select>
                </div>
            <?php echo form_error('jenis_obat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Kadaluwarsa</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_kadaluwarsa','type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_kadaluwarsa');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Stock</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah_stock','class'=>'form-control'));?>
            <?php echo form_error('jumlah_stock');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Beli</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_beli','class'=>'form-control'));?>
            <?php echo form_error('harga_beli');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Jual</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_jual','class'=>'form-control'));?>
            <?php echo form_error('harga_jual');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Suplier</label>
            <div class="col-sm-8">
            <div class="form-gorup">
                <select class="form-control" name="suplier">
                <?php foreach ($suplier->result() as $suplier): ?>
                    <option value="<?= $suplier->id ?>"><?= $suplier->nama_suplier ?></option>
                <?php endforeach; ?>
                </select>
                </div>
            <?php echo form_error('suplier');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"data/stock_obat/show_addForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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