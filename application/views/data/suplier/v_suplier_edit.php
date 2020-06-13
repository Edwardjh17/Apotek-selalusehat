<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <?php echo form_input(array('name'=>'id','value'=>$row->id,'class'=>'form-control'));?>
            <?php echo form_error('id');?>
            </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Suplier</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_suplier','value'=>$row->nama_suplier,'class'=>'form-control'));?>
            <?php echo form_error('nama_suplier');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">No Telephone</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'no_telephone','value'=>$row->no_telephone,'class'=>'form-control'));?>
            <?php echo form_error('no_telephone');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Alamat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'alamat','value'=>$row->alamat,'class'=>'form-control'));?>
            <?php echo form_error('alamat');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"data/suplier/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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