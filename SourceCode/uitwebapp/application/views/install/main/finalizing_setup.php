<div class="row"
  style="margin-top: 30px;">
  <div class="col-md-8 col-md-offset-2">
    <div class="panel panel-default" data-collapsed="0"
      style="border-color: #dedede;">
      <!-- panel body -->
      <div class="panel-body" style="font-size: 14px;">
        <center>
          <i class="entypo-thumbs-up" style="font-size: 32px;"></i>
          <h3>Xin chúc mừng!! Cài đặt thành công</h3>
        </center>
        <br>
        <center>
          <strong>
              Trước khi bạn bắt đầu sử dụng ứng dụng của mình, hãy biến nó thành của bạn. Đặt tên và tiêu đề ứng dụng của bạn, email đăng nhập quản trị và
              mật khẩu mở khóa. Hãy nhớ thông tin đăng nhập mà bạn sẽ cần sau này để đăng nhập vào tài khoản của mình. Sau bước này,
              bạn sẽ được chuyển hướng đến trang đăng nhập của ứng dụng.
          </strong>
        </center>
        <br>
        <div class="row">
          <div class="col-md-12">
            <form class="form-horizontal form-groups" method="post"
              action="<?php echo site_url('install/finalizing_setup/setup_admin');?>">
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label">Tên Trường</label>
        				<div class="col-sm-5">
        					<input type="text" class="form-control" name="system_name" placeholder=""
                    required autofocus>
        				</div>
                <div class="col-sm-4" style="font-size: 12px;">
                    Tên ứng dụng của bạn
                </div>
        			</div>
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label">Tên Admin</label>
        				<div class="col-sm-5">
        					<input type="text" class="form-control" name="name" placeholder="" required>
        				</div>
                <div class="col-sm-4" style="font-size: 12px;">
                    Tên đầy đủ của Quản trị viên
                </div>
        			</div>
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label">Admin Email</label>
        				<div class="col-sm-5">
        					<input type="email" class="form-control" name="email" placeholder="" required>
        				</div>
                <div class="col-sm-4" style="font-size: 12px;">
                    Địa chỉ email để đăng nhập quản trị viên
                </div>
        			</div>
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label">Mật khẩu</label>
        				<div class="col-sm-5">
        					<input type="password" class="form-control" name="password" placeholder=""
                    required>
        				</div>
                <div class="col-sm-4" style="font-size: 12px;">
                    Mật khẩu đăng nhập quản trị viên
                </div>
        			</div>
              <hr>
              <div class="form-group">
        				<label class="col-sm-3 control-label"></label>
        				<div class="col-sm-7">
        					<button type="submit" class="btn btn-info">Thiết lập cho tôi</button>
        				</div>
        			</div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
