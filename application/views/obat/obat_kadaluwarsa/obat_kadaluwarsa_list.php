<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Data Obat Kadaluwarsa</h3>

        </ul>
        <div class="clearfix">
        </div>
      </div>

      <div class="x_content">
        <?php if ($nullex > 0) : ?>
        
            <div class="alert alert-warning">
              <h4><i class="fa fa-warning"></i> Peringatan!</h4> Obat sudah kedaluwarsa. Harap mengganti obat yang baru.
            </div>
        <?php endif; ?>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama Obat</th>
                <th>Kode Obat</th>
                <th>jenis Obat</th>
                <th>Tanggal Kadaluarsa</th>
                <th>Harga Jual</th>
                <th>Stock</th>
                <th>Suplier</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($table_exp->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_obat?></td>
            <td align="center"><?=$row->kode_obat?></td>
            <td align="center"><?=$row->jenis_obat?></td>
            <td align="center"><?=date('j F Y',strtotime($row->tanggal_kadaluwarsa))?></td>
            <td align="left">Rp. <?=number_format($row->harga_jual)?></td>
            <td align="center"><?=$row->jumlah_stock?></td>
            <td align="center"><?=$row->suplier?></td>
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
   <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Data Obat Hampir Kadaluwarsa</h3>

        
        <div class="x_content">
        <p>Obat dengan tanggal kedaluwarsa kurang dari 60 hari</p>
        </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama Obat</th>
                <th>Kode Obat</th>
                <th>jenis Obat</th>
                <th>Tanggal Kadaluarsa</th>
                <th>Harga Jual</th>
                <th>Stock</th>
                <th>Suplier</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($table_alex->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_obat?></td>
            <td align="center"><?=$row->kode_obat?></td>
            <td align="center"><?=$row->jenis_obat?></td>
            <td align="center"><?=date('j F Y',strtotime($row->tanggal_kadaluwarsa))?></td>
            <td align="left">Rp. <?=number_format($row->harga_jual)?></td>
            <td align="center"><?=$row->jumlah_stock?></td>
            <td align="center"><?=$row->suplier?></td>
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
