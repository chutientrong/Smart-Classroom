<?php if(isset($error)) { ?>
  <div class="row"
    style="margin-top: 20px;">
    <div class="col-md-8 col-md-offset-2">
      <div class="alert alert-danger">
        <strong><?php echo $error; ?></strong>
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
          <strong>Cơ sở dữ liệu của bạn đã được kết nối thành công</strong>. Tất cả những gì bạn cần làm bây giờ là
          <strong>nhấn nút 'Cài đặt'</strong>.
            Trình cài đặt tự động sẽ chạy một tệp sql, sẽ thực hiện tất cả các công việc và tự động thiết lập ứng dụng của bạn.
        </p>
        <br>
        <div class="row">
          <div class="col-md-12">
            <button type="button" id="install_button" class="btn btn-info">
              <i class="entypo-check"></i> &nbsp; Cài đặt
            </button>
            <div id="loader" style="margin-top: 20px;">
              <img src="<?php echo base_url('assets/loader.gif');?>" alt="" width="20">
              &nbsp; Đang nhập cơ sở dữ liệu....
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
s
<script type="text/javascript">
  $(document).ready(function() {
    $('#loader').hide();
    $('#install_button').click(function() {
      $('#loader').fadeIn();
      window.location.href = '<?php echo site_url('install/step3/confirm_install');?>';
    });
  });
</script>
