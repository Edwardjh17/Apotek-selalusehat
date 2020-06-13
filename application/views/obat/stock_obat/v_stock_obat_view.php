<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php require_once ('application/views/dasbord.php') ?>   
    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Data Stock Obat</h3>

            <div class="box-tools pull-right">
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama Obat</th>
                <th>Kode Obat</th>
                <th>Jenis Obat</th>
                <th>Tanggal Kadaluwarsa</th>
                <th>Jumlah Stock</th>
                <th>Harga Jual</th>
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
            <td align="center"><?=$row->jenis_obat?></td>
            <td align="center"><?=$row->tanggal_kadaluwarsa?></td>
            <td align="center"><?=$row->jumlah_stock?></td>
            <td align="left">Rp. <?=number_format($row->harga_jual)?></td>
            <td align="center">
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