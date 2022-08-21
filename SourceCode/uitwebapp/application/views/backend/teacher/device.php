<?php
session_start();
$device_id = $_GET['device_id'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>On off toggle</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://write.corbpie.com/wp-content/litespeed/localres/aHR0cHM6Ly9jZG5qcy5jbG91ZGZsYXJlLmNvbS8=ajax/libs/bootswatch/4.5.0/flatly/bootstrap.min.css"/>
    <script src="https://write.corbpie.com/wp-content/litespeed/localres/aHR0cHM6Ly9jZG5qcy5jbG91ZGZsYXJlLmNvbS8=ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<!--UP DATE LIGHT STATUS-->

<?php

    if (isset($_POST['form_submit_light'])) {//Form was submitted

        if(isset($_POST['submit_light'])){
        $status_light = $this->db->get_where('classdevice', array('name_device' => 'light'))->result_array();
        foreach ($status_light as $row) {
//            echo '<option value="' . $row['device_id'] . '">' . $row['status'] . '</option>';
            if ($row['status'] == "ON") {
                $status = "OFF";
            } elseif ($row['status'] == "OFF") {
                $status = "ON";
            }
        }
        //Update DB
        $data = array(

            'status' => $status
        );

        $this->db->where('name_device', 'light');
        $this->db->update('classdevice', $data);
    }
    } else {//Page was loaded
        $status = $_SESSION['status'];
    }
?>
<!--UPDATE FAN STATUS-->
<?php
if (isset($_POST['form_submit_fan'])) {//Form was submitted

    if(isset($_POST['submit_fan'])){
        $status_fan = $this->db->get_where('classdevice', array('name_device' => 'fan'))->result_array();
        foreach ($status_fan as $row) {
//            echo '<option value="' . $row['device_id'] . '">' . $row['status'] . '</option>';
            if ($row['status'] == "ON") {
                $status = "OFF";
            } elseif ($row['status'] == "OFF") {
                $status = "ON";
            }
        }
        //Update DB
        $data = array(

            'status' => $status
        );

        $this->db->where('name_device', 'fan');
        $this->db->update('classdevice', $data);
    }
} else {//Page was loaded
    $status = $_SESSION['status'];
}
?>

<!--SHOW DEVICE STATUS-->
<script>
    //$.ajax({
    //    url: "<?php //echo base_url("Device_controller/viewajax");?>//",
    //    type: "POST",
    //    cache: false,
    //    success: function(data){
    //        //alert(data);
    //        $('#table').html(data);
    //    }
    //});
    $.ajax({
        url: "<?php echo base_url("Device_controller/light_status");?>",
        type: "POST",
        cache: false,
        success: function(data){
            //alert(data);
            $('#lightstatus').html(data);
        }
    });
    $.ajax({
        url: "<?php echo base_url("Device_controller/fan_status");?>",
        type: "POST",
        cache: false,
        success: function(data){
            //alert(data);
            $('#fanstatus').html(data);
        }
    });
</script>

<body>
<div class="row ">

    <div class="col-md-3">
        <div class="row">
            <div class="col-md-12">

                <div class="tile-stats tile-green" ">
                    <!--                    <div class="form-group">-->
                    <!--                        <div class="col-sm-offset-3 col-sm-5">-->
                    <!--                            <button type="submit" class="btn btn-info"><i class="entypo-users"></i>--><?php //echo get_phrase('Turn_ON/OFF');?><!--</button>-->
                    <!--                        </div>-->
                    <!--                    </div>-->
                    <!--                    <div class="row">-->

                    <div class="icon"><i class="entypo-users"></i></div>
                    <!--                    <div class="submit-btn" ">-->
                    <!--                    <button type="submit" class="btn btn-info" style="margin-left: 150px">--><?php //echo get_phrase('ON/OFF');?><!--</button>-->
                    <!--                </div>-->
                    <div class="num" data-start="0" data-end="<?php echo $this->db->count_all('classdevice');?>"
                         data-postfix="" data-duration="800" data-delay="0">0</div>

                    <h3><?php echo get_phrase('class_device');?></h3>
                    <p>Tổng Số Thiết Bị</p>
                    <!--                    </div>-->

                </div>


            </div>


        </div>
    </div>
    <div class="col-md-3">
        <div class="row">

            <div class="col-md-12">

                <div class="tile-stats tile-red">
                    <div class="icon"><i class="fa fa-group"></i></div>
                    <div class="boder-tile">
                    <div class="tile-lightstatus">

    <!--                    <button type="submit" class="btn btn-info" id="update_light" style="margin-left: 150px">--><?php //echo get_phrase('ON/OFF');?><!--</button>-->

                        <div class="num" id="lightstatus" data-start="0"
                             data-end= "0"
                             data-postfix="" data-duration="1500" data-delay="0">
                            <!--                --><?php
                            //                $status_light = $this->db->get_where('classdevice', array('name_device' => 'light'))->result_array();
                            //                foreach ($status_light as $row) {
                            //                    echo '<option value="' . $row['device_id'] . '">' . $row['status'] . '</option>';
                            //                }
                            //                ?><!-- -->
                        </div>
                        <h3><?php echo get_phrase('light');?></h3>
                        <p>Điều Khiển Đèn</p>
                        </div>
                        <form method="post">
                            <input type="submit" class="btn btn-info btn-sm" name="submit_light" value="ON/OFF"/>
                            <!--                        <label class="custom-control-label"-->
                            <!--                               for="customSwitch1">Currently --><?php //echo $status; ?><!--</label>-->
                            <input type="hidden" name="form_submit_light" value="">

                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="col-md-3">
        <div class="row">
            <div class="col-md-12">

                <div class="tile-stats tile-red">
                    <div class="icon"><i class="fa fa-group"></i> </div>
                    <div class="boder-tile">
                        <div class="tile-fanstatus">

                            <!--                    <button type="submit" class="btn btn-info" id="update_light" style="margin-left: 150px">--><?php //echo get_phrase('ON/OFF');?><!--</button>-->

                            <div class="num" id="fanstatus" data-start="0"
                                 data-end= "0"
                                 data-postfix="" data-duration="1500" data-delay="0">
                                <!--                --><?php
                                //                $status_light = $this->db->get_where('classdevice', array('name_device' => 'light'))->result_array();
                                //                foreach ($status_light as $row) {
                                //                    echo '<option value="' . $row['device_id'] . '">' . $row['status'] . '</option>';
                                //                }
                                //                ?><!-- -->
                            </div>
                            <h3><?php echo get_phrase('fan');?></h3>
                            <p>Điều Khiển Quạt</p>
                        </div>
                        <form class="btn-update" method="post">
                            <input type="submit" class="btn btn-info btn-sm" name="submit_fan" value="ON/OFF"/>
                            <!--                        <label class="custom-control-label"-->
                            <!--                               for="customSwitch1">Currently --><?php //echo $status; ?><!--</label>-->
                            <input type="hidden" name="form_submit_fan" value="">

                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
<div class="col-md-3">
    <div class="row">
        <div class="col-md-12">

            <div class="tile-stats tile-blue">
                <div class="icon"><i class="entypo-chart-bar"></i></div>
                <div class="submit-btn" ">
                <button type="submit" class="btn btn-info" style="margin-left: 150px"><?php echo get_phrase('ON/OFF');?></button>
            </div>
            <?php
            $check	=	array(	'timestamp' => strtotime(date('Y-m-d')) , 'status' => '1' );
            $query = $this->db->get_where('attendance' , $check);
            $present_today		=	$query->num_rows();
            ?>
            <div class="num" data-start="0" data-end="<?php echo $present_today;?>"
                 data-postfix="" data-duration="500" data-delay="0">0</div>

            <h3><?php echo get_phrase('other');?></h3>
            <p>Thiết Bị Khác</p>
        </div>

    </div>
</div>
</div>

</div>
<!--<div class="container">-->
<!--    <br/>-->
<!--    <h2 class="text-center">Biểu Đồ Thiết Bị</h2>-->
<!--    <div class="row">-->
<!--        <div class="col-md-10 col-md-offset-1">-->
<!--            <div class="panel panel-default">-->
<!--                <div class="panel-heading">Dashboard</div>-->
<!--                <div class="panel-body">-->
<!--                    <div id="container"></div>-->
<!--                </div>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--</div>-->
</body>
</html>