<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Data Penjualan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("data/data_penjualan/form/base","#modal")','Add New Data Penjualan','btn btn-success');
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
                <th>Tanggal Transaksi</th>
                <th>No Referensi</th>
                <th>Nama Pembeli</th>
                <th>Banyak</th>
                <th>Total Penjualan</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($data_penjualan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->tanggal_transaksi?></td>
            <td align="center"><?=$row->no_referensi?></td>
            <td align="center"><?=$row->nama_pembeli?></td>
            <td align="center"><?=$row->banyak?></td>
            <td align="center"><?=$row->total_penjualan?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '3' || $sesi == '6') {
                echo button('load_silent("data/data_penjualan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
            } else {
                # code...
              }
              ?>
              <a href="<?= site_url('data/data_penjualan/delete/'.$row->id) ?>" class="btn btn-danger" onclick="return confirm('Anda yakin ingin menghapus Data Penjualan?')"><i class="fa fa-trash"></i></a>

            </td>
          </tr>
        <?php endforeach;?>
        </tbody>
        </table>
        <b>
          <a href="" class="btn btn-warning" style="margin-bottom;
        10px; "title="view/utily/v_dashboard.php"></i>Back</a>
          <a href ="application/page/data_penjualan/cetak.php" class="btn btn-primary" style="margin-bottom;
        10px; "title=""><i class="fa fa-print"></i>Cetak</a>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>