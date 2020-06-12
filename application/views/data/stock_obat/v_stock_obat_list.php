<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Data Stock Obat</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("data/stock_obat/form/base","#modal")','Tambah Stock Obat','btn btn-success','data-toggle="tooltip" title="Tambah Data Stock"');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama Obat</th>
                <th>Kode Obat</th>
                <th>Tanggal Masuk</th>
                <th>Tanggal Kadaluarsa</th>
                <th>Jumlah Stock</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($stock_obat->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_obat?></td>
            <td align="center"><?=$row->kode_obat?></td>
            <td align="center"><?=$row->tanggal_masuk?></td>
            <td align="center"><?=$row->tanggal_kadaluarsa?></td>
            <td align="center"><?=$row->jumlah_stock?></td>
            <td align="center">
            <?php
             $sesi = from_session('level');
             if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
              echo button('load_silent("data/stock_obat/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
             } else {
               # code...
             }
             ?>
             <?php
             $sesi = from_session('level');
             if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
               echo button('load_silent("data/stock_obat/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
             } else {
               # code...
             }
             ?>
           </td>
         </tr>

       <?php endforeach;?>
       </tbody>
           </table>
         </div>
       </div>
     </div>
   </div>
<script type="text/javascript">
 $(document).ready(function() {
   var table = $('#tableku').DataTable( {
     "ordering": false,
   } );
 });
</script>