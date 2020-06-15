<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Obat</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'nama_obat','value'=>$row->nama_obat,'class'=>'form-control'));?>
            <?php echo form_error('nama_obat');?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Obat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_obat','value'=>$row->kode_obat,'class'=>'form-control'));?>
            <?php echo form_error('kode_obat');?>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Obat</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_jenis_obat">
                <?php foreach ($jenis_obat->result() as $jenis_obat): ?>
                    <option value="<?= $jenis_obat->id ?>" <?= $jenis_obat->id == $row->id_jenis_obat ? "selected" : null ?>><?= $jenis_obat->jenis_obat ?></option>
                <?php endforeach; ?>
                </select>
            <?php echo form_error('id_jenis_obat');?>
            <span id="check_data"></span>
            </div>

        </div>
    
        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Kadaluwarsa</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tanggal_kadaluwarsa','value'=>$row->tanggal_kadaluwarsa,'type'=>'date','class'=>'form-control'));?>
            <?php echo form_error('tanggal_kadaluwarsa');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah Stock</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah_stock','value'=>$row->jumlah_stock,'class'=>'form-control'));?>
            <?php echo form_error('jumlah_stock');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Jual</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_jual','value'=>$row->harga_jual,'class'=>'form-control'));?>
            <?php echo form_error('harga_jual');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"obat/stock_obat/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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