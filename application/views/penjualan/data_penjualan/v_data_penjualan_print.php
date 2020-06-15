

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
            <div class="cel head-title">
                <h3>Apotek Selalu Sehat</h3>
                    <div>
                    <td>Jln Jalan-jalan No. 5</td>
                    </div>
                    <div>
                    <td>SEMARANG</td>
                    </div>
                    <div>
                    <td>NO. Telp 0895264727</td>
                    </div>
            </div>

          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama Obat</th>
                <th>Haraga Jual</th>
                <th>Banyak</th>
                <th>Total</th>
                <th></th>
              </thead>
              <tbody>
              <?php 
          $i = 1;
          foreach($id->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_obat?></td>
            <td align="center">Rp. <?=number_format($row->harga_jual)?></td>
            <td align="center"><?=$row->banyak?></td>
            <td align="center">Rp. <?=number_format($row->total_penjualan)?></td>
            <td align="center">

            </td>
          </tr>
        <?php endforeach;?>
        </tbody>
        </table>
      </div>
      </div>
    </div>
    <div class="cel head-title">
                <h5>Terima Kasih Telah Berbelanja Di Toko Kami</h5>
    </div>
  <div>
</div>
<script type="text/javascript"> window.print(); 
</script>
