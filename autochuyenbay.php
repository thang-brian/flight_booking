<?php
session_start();
ob_start();
//Cronjob chay moi 5p
//Lap qua cac hoa don co trang thai chua thanh toan
//Va kiem tra thoi gian neu vuot khoi muc quy dinh
//Thi tra l?i tr?ng thái ghe là chua chon d?ng th?i h?y hóa don và hdct
require_once "system/config.php";
require_once "system/database.php";
require_once "admin/models/ve.php";
include_once 'lib/vendor/autoload.php'; // require pusher
function selectData()
{
    $sql = "SELECT * FROM chuyenbay";
    return result1(0,$sql); 
}
// gi? di: l?y gi? di c?ng thêm 4 ti?ng
// gi? d?n : l?y gi? d?n công thêm 4 ti?ng
// ngày: n?u quá 24h thì tang thêm 1 ngày

if (isset($_POST['Action']))
{
  
    switch ($_POST['Action']) {
        case 'setttghe':
            $Array = array();
            $selectData = selectData();
            foreach ($selectData as $ve) {
            $today_date = strtotime(date("Y-m-d"));

            $today_time = strtotime(date('H:i:s'));

            $another_date = $ve['ngaydi'];

            if ($today_date > strtotime($another_date)) {
                setTrangThai($ve['id']);
            } else {
                if($ve['ngaydi'] == date("Y-m-d")&& strtotime($ve['gioden']) <= $today_time){
                    setTrangThai($ve['id']);
                }
            }
            }  
            $Array['StatusCode'] = 1;
            echo json_encode($Array);
            return;
            break;
        case 'getkqghe':
            $Array = array();
            $Array['StatusCode'] = (setAutoChuyenBay() === true) ? 1 : 0;
            echo json_encode($Array);
            return;
            break;
        case 'showkqghe':
            $Array = array();
            $Array['StatusCode'] = selectTime();
            echo json_encode($Array);
            return;
            break;
        default:
            # code...
            break;
    }
}
function setAutoChuyenBay(){
    $Array = array();
    $selectData = selectData();
    foreach ($selectData as $ve) {
        $today_date = strtotime(date("Y-m-d"));
    
        $today_time = strtotime(date('H:i:s'));
    
    
        if ( $ve['trangthai'] == 1) {
            
            // setTrangThai($ve['id']);
            $id = $ve['id'];

            $idTuyenDuong = $ve['idtuyenduong'];
            $idMayBay = $ve['idmaybay'];
            $gioDi = date('H:i:s',strtotime('+4 hour',strtotime($ve['giodi'])));
            
            $gioDen = date('H:i:s',strtotime('+4 hour',strtotime($ve['gioden'])));
            
            if(strtotime('+4 hour',strtotime($ve['giodi'])) >= strtotime('24:00:00')){
                $ngayDi =  date('Y-m-d',strtotime('+1 day',strtotime($ve['ngaydi'])));
            }else{
                $ngayDi =  $ve['ngaydi'];
            }

            $options = array(
                'cluster' => 'ap1',
                'useTLS' => true
              );
              $pusher = new Pusher\Pusher(
                '166bbd5af4fcbf088045',
                '14c083c06113b8053d69',
                '1103344',
                $options
              );
            
              if(updateveAuto($id,$idTuyenDuong,$idMayBay,$ngayDi,$gioDi,$gioDen,0)== true){
                $data['message'] = $id ;
                $Return['StatusCode'] = 1; 
                $pusher->trigger('my-channel', 'my-event', $data);
              }    
        } 
    }
    return true;
}
// set lại ghế trạng thái chưa đặt cho những ghế sau khi quá thời gian 5p
function setLaiTTGhe($loaiGhe,$idChuyenBay){  
    $sql = "SELECT ".$loaiGhe." FROM trangthaidatve WHERE idchuyenbay=".$idChuyenBay;
    $result = result1(1,$sql)[$loaiGhe];
    $arr =  explode(",",$result);
  
    for ($i=0; $i < count($arr); $i++) { 
        $temp = explode('-',$arr[$i]);

        if($temp[0] == '2'){
            $arr[$i] = 0 ;
        }
        $kq = implode(",",$arr);
        $sql = "UPDATE trangthaidatve  SET ".$loaiGhe."='{$kq}' WHERE idchuyenbay=".$idChuyenBay;
        exec1($sql);
    }
}
function selectCb(){
    $sql = "SELECT id FROM chuyenbay WHERE trangthai = 0";
    $idCb = result1(0,$sql);
    foreach ($idCb as $motcb) {
        setLaiTTGhe('ttghethuong',$motcb['id']);
        setLaiTTGhe('ttghethuonggia',$motcb['id']);
    }
}
// selectCb()

?>