<?php 
$min = 0;
$mid = 0;
$mid2 = 0;
$max = 0;
?>
<div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">Fuzzy</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html" class="text-muted">Dashboard</a></li>
                                    <li class="breadcrumb-item text-muted active" aria-current="page">Fuzzy</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
					 <div class="col-5 align-self-center">
					
                        <div class="customize-input float-right">
                    <button class="btn waves-effect waves-light btn-rounded btn-success text-center" data-toggle="modal" data-target="#ModalaAdd">Tambah Data</button>
				</div>
				</div>
                </div>
            </div>
			
			<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
					<h4 class="card-title">Rule Fuzzy</h4>
				 <?php
            echo form_open_multipart('fuzzytrapesium/edit', 'role="form" class="form-horizontal"');
            ?>
				<?php foreach ($rule as $r) { ?>
                        <?php
                        $min += $r->min;
                        $mid += $r->mid;
                        $mid2 += $r->mid2;
                        $max += $r->max;
                       ?>         
				<div class="row">
				<input type="number" name="id" value="<?php echo $r->id ?>" class="form-control" hidden>
				 <div class="col-3">
					<div class="form-group">
                        <label class="control-label col-xs-3" >Nilai Min</label>
                        <div class="col-xs-9">
                           <input type="number" name="min" value="<?php echo $r->min ?>" class="form-control">
                        </div>
                    </div>
				</div>
				<div class="col-3">
					<div class="form-group">
                        <label class="control-label col-xs-3" >Nilai Tengah (b)</label>
                        <div class="col-xs-9">
                           <input type="number" name="mid" value="<?php echo $r->mid ?>" class="form-control">
                        </div>
                    </div>
				</div>
                <div class="col-3">
					<div class="form-group">
                        <label class="control-label col-xs-3" >Nilai Tengah (c)</label>
                        <div class="col-xs-9">
                           <input type="number" name="mid2" value="<?php echo $r->mid2 ?>" class="form-control">
                        </div>
                    </div>
				</div>
				<div class="col-3">
					<div class="form-group">
                        <label class="control-label col-xs-3" >Nilai Max</label>
                        <div class="col-xs-9">
                           <input type="number" name="max" value="<?php echo $r->max ?>" class="form-control">
                        </div>
                    </div>
				</div>
				<?php } ?>
				<div class="col-3">
					<div class="form-group">
						</br>
                        <button type="submit" name="submit" class="btn btn-danger text-center" style="margin-top:7px; width:100%;">Submit</button>
                    </div>
				</div>
				</div>
			</form>
		</div>
		</div>
		</div>
</div>

 <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
						<h4 class="card-title">Dynamic Average</h4>
						<?php 
						$jumtot = 0;
						foreach($data as $x){ //untuk menampilkan variabel data yang diangkut dari controller
						$jumtot += $x->nilai;
						} 
						$jumdat = $this->db->from('fuzzy')->get()->num_rows(); //Untuk mengambil total data pada tabel fuzzy ?>
						<p>Nilai Dynamic Average : <?php echo number_format((float)$jumtot/$jumdat, 2, '.', '') ?> </p>

</div>
</div>
</div>
</div>

<div class="row">
				
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
					<h4 class="card-title">Data Materi</h4>
			
           <canvas id="myChart"></canvas>
        
		</div>
		</div>
		</div>
</div>

                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
					<h4 class="card-title">Nilai Fuzzy</h4>
			<div class="table-responsive">
            <table id="datatable" class="table">
                <thead>
                    <tr>
                        <th>No</th>
						<th>Timestamp</th>
						<th>Nilai</th>
						<th>Hasil Fuzzy</th>
						<th>Kesimpulan</th>
                    </tr>
                </thead>
		<tbody>		
		<?php 
		$no = 1;
		foreach($data as $u){ //untuk menampilkan variabel data yang diangkut dari controller
		?>
		<?php
		$hasilmin = 0; // Untuk menampung hasil perhitungan
		$hasilmid = 0;
		$hasilmid2 = 0;
		$hasilmax = 0;
		//Fuzifikasi Nilai Min
		if ($u->nilai <= $min){
		$hasilmin += 1;
		} else if ($min <= $u->nilai && $u->nilai< $mid){
		$hasilmin += (($u->nilai - $min)/($mid - $min));
        $hasilmid += 1-$hasilmin;
		} else {
		$hasilmin += 0;
		}
		//Fuzifikasi Nilai Mid
		if ($mid <= $u->nilai && $u->nilai <= $mid2){
		$hasilmid += 1;
		$hasilmid2 += 1;
		} else {
            $hasilmid += 0;
            $hasilmid2 += 0;
		}
		//Fuzifikasi Nilai Max
		if ($max <= $u->nilai){
		$hasilmax += 1;
		} else if ($mid2 <= $u->nilai && $u->nilai <= $max){
		$hasilmax += ($max - $u->nilai) / ($max-$mid2);
        $hasilmid += 1-$hasilmax;
		} else {
		$hasilmax += 0;
		}
		?>
		<tr>  
			<td><?php echo $no++ ?></td>
			<td><?php echo $u->tgl ?></td>
			<td><?php echo $u->nilai ?></td>
			<td>Nilai Min = <?php echo number_format((float)$hasilmin, 2, '.', '')?>, Nilai Mid = <?php echo number_format((float)$hasilmid, 2, '.', '') ?>, Nilai Max = <?php echo number_format((float)$hasilmax, 2, '.', '') ?>,</td>
			<?php 
			if ($hasilmin > $hasilmid){
			?>
			<td>Kecil</td>
			<?php } else if ($hasilmid > $hasilmax){
			?>
			<td>Sedang</td>
			<?php } else {
			?>
			<td>Besar</td>
			<?php }
			?>
		</tr>
		<?php } ?>
		</tbody>
            </table>
        </div>
		</div>
		</div>
		</div>
</div>
</div>             
           
<!-- MODAL ADD -->
        <div class="modal fade" id="ModalaAdd" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="myModalLabel">TAMBAH DATA</h3>
            </div>
            <?php
            echo form_open_multipart('fuzzytrapesium/add', 'role="form" class="form-horizontal"');
            ?>
                <div class="modal-body">
 
                    <div class="form-group">
                        <label class="control-label col-xs-3" >Nilai</label>
                        <div class="col-xs-9">
                           <input type="text" name="nilai" class="form-control">
                        </div>
                    </div>
                    
 
                </div>
 
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
                    <button class="btn btn-info" id="btn_simpan">Simpan</button>
                </div>
            </form>
            </div>
            </div>
        </div>
        <!--END MODAL ADD-->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
  <script type="text/javascript">
$(document).ready(function() {
tabel();
window.setInterval(function(){
tabel();
}, 5000);
});

function tabel(){
 $.ajax({
                type  : 'GET',
                url   : '<?php echo base_url()?>fuzzytrapesium/grafik/',
                async : true,
                dataType : 'json',
                success : function(data){
				console.log(data);
                    var label = [];
                    var value = [];
					
                    for (var i in data) {
						label.push(data[i].tgl);
                        value.push(data[i].nilai);
						
                    }
// Mulai buat Grafik
    var ctx = document.getElementById('myChart').getContext('2d');
    var chart = new Chart(ctx, {
    type: 'line',
 
     data: {
                            labels: label,
                            datasets: [{
                                label: 'Data fuzzy',
								showLine : true,
								fill: false,
                                backgroundColor: 'rgba(252, 116, 101, 1)',
                                borderColor: 'rgb(252, 116, 101)',
                                data: value
                            }]
                        },
	options: {
	  scales: {
        yAxes: [{
            display: true,
            stacked: true,
            ticks: {
                min: 0, // minimum value
               
            }
        }]
    }
    
	}
});
}
});
}
  </script>
