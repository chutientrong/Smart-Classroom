<div class="row"
  style="margin-top: 30px;">
  <div class="col-md-8 col-md-offset-2">
    <div class="panel panel-default" data-collapsed="0"
      style="border-color: #dedede;">
			<!-- panel body -->
			<div class="panel-body" style="font-size: 14px;">
        <p style="font-size: 14px;">
          Welcome to UIT Installation. Bạn sẽ cần biết những điều sau đây trước khi
            tiến hành.
        </p>
        <ol>
          <li>Database Name</li>
          <li>Database Username</li>
          <li>Database Password</li>
          <li>Database Hostname</li>
        </ol>
        <p style="font-size: 14px;">
            Chúng tôi sẽ sử dụng thông tin trên để viết tệp database.php sẽ kết nối ứng dụng với
            cơ sở dữ liệu. Trong quá trình cài đặt, chúng tôi sẽ kiểm tra xem các tệp cần được viết
          (<strong>application/config/database.php</strong> & <strong>application/config/routes.php</strong>) có
          <strong>quyền ghi</strong>. Chúng tôi cũng sẽ kiểm tra nếu <strong>curl</strong> và <strong>php mail functions</strong>
            có được bật trên máy chủ của bạn hay không.
        </p>
        <p style="font-size: 14px;">
            Thu thập thông tin được đề cập ở trên trước khi nhấn nút bắt đầu cài đặt. Nếu bạn đã sẵn sàng....
        </p>
        <br>
        <p>
          <a href="<?php echo site_url('install/step1');?>" class="btn btn-info">
              Bắt đầu quá trình cài đặt
          </a>
        </p>
			</div>
		</div>
  </div>
</div>
