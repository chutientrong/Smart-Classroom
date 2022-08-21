<?php if(isset($error_con_fail)) { ?>
  <div class="row"
    style="margin-top: 20px;">
    <div class="col-md-8 col-md-offset-2">
      <div class="alert alert-danger">
        <strong><?php echo $error_con_fail; ?></strong>
      </div>
    </div>
  </div>
<?php } ?>
<?php if(isset($error_nodb)) { ?>
  <div class="row"
    style="margin-top: 20px;">
    <div class="col-md-8 col-md-offset-2">
      <div class="alert alert-danger">
        <strong><?php echo $error_nodb; ?></strong>
      </div>
    </div>
  </div>
<?php } ?>
<div class="row"
  style="margin-top: 30px;">
  <div class="col-md-8 col-md-offset-2">
    <div class="panel panel-default" data-collapsed="0"
      style="border-color: #dedede;">
      <!-- panel body -->
      <div class="panel-body" style="font-size: 14px;">
        <p style="font-size: 14px;">
            Dưới đây, bạn nên nhập chi tiết kết nối cơ sở dữ liệu của mình. Nếu bạn không chắc chắn về những điều này, hãy liên hệ với quản lý của bạn.
        </p>
        <br>
        <div class="row">
          <div class="col-md-12">
            <form class="form-horizontal form-groups" method="post"
              action="<?php echo site_url('install/step2/configure_database');?>">
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label">Database Name</label>
        				<div class="col-sm-5">
        					<input type="text" class="form-control" name="dbname" placeholder=""
                    required autofocus>
        				</div>
                <div class="col-sm-4" style="font-size: 12px;">
                    Tên của cơ sở dữ liệu bạn muốn sử dụng với ứng dụng này
                </div>
        			</div>
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label">Username</label>
        				<div class="col-sm-5">
        					<input type="text" class="form-control" name="username" placeholder=""
                    required>
        				</div>
                <div class="col-sm-4" style="font-size: 12px;">
                  Your database Username
                </div>
        			</div>
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label">Password</label>
        				<div class="col-sm-5">
        					<input type="password" class="form-control" name="password" placeholder="">
        				</div>
                <div class="col-sm-4" style="font-size: 12px;">
                  Your database Password
                </div>
        			</div>
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label">Database Host</label>
        				<div class="col-sm-5">
        					<input type="text" class="form-control" name="hostname" placeholder=""
                    required>
        				</div>
                <div class="col-sm-4" style="font-size: 12px;">
                    Nếu 'localhost' không hoạt động, bạn có thể lấy tên máy chủ từ máy chủ lưu trữ web
                </div>
        			</div>
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label"></label>
        				<div class="col-sm-7">
        					<button type="submit" class="btn btn-info">Tiếp tục</button>
        				</div>
        			</div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
