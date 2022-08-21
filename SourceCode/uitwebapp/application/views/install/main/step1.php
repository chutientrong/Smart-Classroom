<?php
  $db_file_write_perm = is_writable('application/config/database.php');
  $routes_file_write_perm = is_writable('application/config/routes.php');
  $curl_enabled = function_exists('curl_version');
  if ($db_file_write_perm == false || $routes_file_write_perm == false || $curl_enabled == false) {
    $valid = false;
  } else {
    $valid = true;
  }
?>
<div class="row"
  style="margin-top: 30px;">
  <div class="col-md-8 col-md-offset-2">
    <div class="panel panel-default" data-collapsed="0"
      style="border-color: #dedede;">
			<!-- panel body -->
			<div class="panel-body" style="font-size: 14px;">
        <p style="font-size: 14px;">
            Chúng tôi đã chạy chẩn đoán trên máy chủ của bạn. Xem lại các mục có dấu đỏ trên đó. Nếu mọi thứ đều ổn, bạn
            có thể đi đến bước tiếp theo.
        </p>
        <br>
        <p style="font-size: 14px;">
          <?php if ($db_file_write_perm == true) { ?>
            <i class="entypo-check" style="color: #5ac52d;"></i>
          <?php } else { ?>
            <i class="entypo-cancel" style="color: #f12828"></i>
          <?php } ?>
          <strong>application/config/database.php </strong>: tệp cần có quyền ghi
        </p>
        <p style="font-size: 14px;">
          <?php if ($routes_file_write_perm == true) { ?>
            <i class="entypo-check" style="color: #5ac52d;"></i>
          <?php } else { ?>
            <i class="entypo-cancel" style="color: #f12828"></i>
          <?php } ?>
          <strong>application/config/routes.php </strong>: tệp cần có quyền ghi
        </p>
        <p style="font-size: 14px;">
          <?php if ($curl_enabled == true) { ?>
            <i class="entypo-check" style="color: #5ac52d;"></i>
          <?php } else { ?>
            <i class="entypo-cancel" style="color: #f12828"></i>
          <?php } ?>
          <strong>Curl Enabled</strong>
        </p>
        <p style="font-size: 14px;">
          <strong>Để tiếp tục quá trình cài đặt, cần kiểm tra tất cả các yêu cầu trên</strong>
        </p>
        <br>
        <?php if ($valid == true) { ?>
          <p>
            <?php
//            if ($_SERVER['SERVER_NAME'] == 'localhost' || $_SERVER['SERVER_NAME'] == '127.0.0.1') { ?>
<!--              <a href="--><?php //echo site_url('install/step2');?><!--" class="btn btn-info">-->
<!--                Continue-->
<!--              </a>-->
<!--            --><?php //}
//            else { ?>
              <a href="<?php echo site_url('install/step2');?>" class="btn btn-info">
                Continue
              </a>
<!--            --><?php //} ?>
          </p>
        <?php } ?>

        <?php if ($valid != true) { ?>
          <p>
            <?php
//            if ($_SERVER['SERVER_NAME'] == 'localhost' || $_SERVER['SERVER_NAME'] == '127.0.0.1') { ?>
<!--              <a href="--><?php //echo site_url('install/step2');?><!--" class="btn btn-info" disabled>-->
<!--                Continue-->
<!--              </a>-->
<!--            --><?php //}
//            else { ?>
              <a href="<?php echo site_url('install/step2');?>" class="btn btn-info" disabled>
                Tiếp tục
              </a>
<!--            --><?php //} ?>
            <a href="<?php echo site_url('install/step1');?>" class="btn btn-info" >
              <i class="entypo-cw"></i>Tải lại
            </a>
          </p>
        <?php } ?>
			</div>
		</div>
  </div>
</div>
