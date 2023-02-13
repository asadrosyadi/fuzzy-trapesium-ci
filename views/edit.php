<div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h2 class="card-title">Ubah Data</h4>
                                 <?php
            echo form_open_multipart('data/edit', 'role="form" class="form-horizontal"');
            echo form_hidden('id', $data['id']);
            ?>
<div class="form-group input-rounded">
<label>Data 1</label>
<input type="text" value = "<?php echo $data['data1'] ?>" class="form-control" name="data1">
</div>
<div class="form-group input-rounded">
<label>Data 2</label>
<input type="text" value = "<?php echo $data['data2'] ?>" class="form-control" name="data2">
</div>
<div class="form-group input-rounded">
<label>Data 3</label>
<input type="text" value = "<?php echo $data['data3'] ?>" class="form-control" name="data3">
</div>
<div class="form-inline">
</div>
<button type="submit" name="submit" value="submit" class="btn btn-primary btn-block">Ubah</button>
</form>
</br>
</br>
</br>
</div>
</div>
</div>
</div>
</div>
