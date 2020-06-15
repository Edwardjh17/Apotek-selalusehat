<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Data Penjualan</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' ||  $sesi == '5' ) {
                echo button('load_silent("penjualan/data_penjualan/form/base","#modal")','Tambah Penjualan','btn btn-success');
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
                <th>Nama Obat</th>
                <th>Haraga Jual</th>
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
            <td align="center"><?=date('j F Y',strtotime($row->tanggal_transaksi))?></td>
            <td align="center"><?=$row->no_referensi?></td>
            <td align="center"><?=$row->nama_obat?></td>
            <td align="left">Rp. <?=number_format($row->harga_jual)?></td>
            <td align="center"><?=$row->nama_pembeli?></td>
            <td align="center"><?=$row->banyak?></td>
            <td align="left">Rp. <?=number_format($row->total_penjualan)?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2'|| $sesi == '3' || $sesi == '5' ) {
                echo button('load_silent("penjualan/data_penjualan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
            } else {
                # code...
              }
              ?>
              <a href="<?= site_url('penjualan/data_penjualan/view_print/'.$row->id) ?>" class="btn btn-warning" ><i class="fa fw fa-print"></i></a>
              <?php
              $sesi = from_session('level');
              if ($sesi == '1'|| $sesi == '2' || $sesi == '3' || $sesi == '5'  ) {
                echo button('load_silent("penjualan/data_penjualan/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');
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
  <div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>