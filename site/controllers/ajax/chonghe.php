<?php
    session_start();
    include_once '../../../system/config.php';
    include_once '../../../system/database.php';
    include_once '../../../lib/vendor/autoload.php'; // require pusher
    include_once '../../../lib/myfunctions.php';
    include_once '../../models/ve.php';
    if ($_POST['Action'])
    {
        switch ($_POST['Action']) {
            case 'setghetg': 
                $Return = array(); 

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
                  try {
                    $ip =  get_client_ip();

                  if(setGhe($_POST['idghe'],$_POST['idcb'],'ttghethuonggia',$ip)){
                    $data['message'] = $id ;
                    $Return['StatusCode'] = 1; 
                    $pusher->trigger('my-channel', 'my-event', $data);
                  }  
                  } catch (TypeException $Error) {  
                    LogFile($Error -> getMessage(), 'pusher', get_defined_vars());
                  }  
                echo json_encode($Return);
                return;
                break;
            
            case 'setghethuong': 
             
                $Return = array(); 

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
                try {
                  $ip =  get_client_ip();
                  if(setGhe($_POST['idghe'],$_POST['idcb'],'ttghethuong',$ip)){
                    $data['message'] = $id ;
                    $Return['StatusCode'] = 1; 
                    $pusher->trigger('my-channel', 'my-event', $data);
                  }   
                } catch (TypeException $Error) {  
                  LogFile($Error -> getMessage(), 'pusher', get_defined_vars());
                }
              echo json_encode($Return);
              return;
              break;
            
            case 'showghetg': 
                $Return = array(); 
            
                $Return['html'] = renderHtml ($_POST['idcb'],'ttghethuonggia');
                $Return['StatusCode'] = 1;

                echo json_encode($Return);
                return;
                break;
            case 'showghethuong': 
                $Return = array(); 
                try {
                  $Return['html'] = renderHtml ($_POST['idcb'],'ttghethuong');
                  $Return['StatusCode'] = 1;
                } 
                catch (TypeException $Error) {  
                  LogFile($Error -> getMessage(), 'showghethuong', get_defined_vars());
                }
                echo json_encode($Return);
                return;              
                break;
                case 'chonghe':
                  $_SESSION['vitrighe'] = $_POST['idghe'];
                  $_SESSION['idchuyenbay'] = $_POST['idcb'];
                  $_SESSION['hangghe'] = $_POST['hangghe'];
                  return;
                  break;
            case 'chonghekhuhoi':
                $_SESSION['vitrighekh'] = $_POST['idghekh'];
                $_SESSION['idchuyenbaykh'] = $_POST['idcbkh'];
                $_SESSION['hangghekh'] = $_POST['hangghekh'];
                return;
                break;
            case 'checkkhuhoi':
                $Array = array();

                if(isset($_SESSION['ngayve'])){
                    $Array["StatusCode"] = '1';
                    $Array['urlve'] = $_SESSION['urlve']; // chuy???n ??i
                }else{
                    $Array["StatusCode"] = '0'; // chuy???n v???
                }
                echo json_encode($Array);
                unset($_SESSION['ngayve']);
                return;
                break; 

            case 'checkslghe':
              $Array = array();
              if(isset($_SESSION['vitrighe'])&&isset($_SESSION['vitrighekh'])&&count($_SESSION['vitrighe']) !== count($_SESSION['vitrighekh'])){
                $Array['StatusCode'] = 1;
                $Array['slghe'] = count($_SESSION['vitrighe']);
              }else{
                $Array['StatusCode'] = 0;
              }
              echo json_encode($Array);
              return;
              break;
            case 'huyghe':
              $Array = array();
              $ip =  get_client_ip();
              if(huyGhett($_POST['idghe'],$_POST['idcb'],'ttghethuong',$ip)){
                $Array['StatusCode'] = 1;
              }else{
                $Array['StatusCode'] = 0;
              }
              // var_dump($Array);
              echo json_encode($Array);
              return;
              break;
            case 'huyghekh':
              $Array = array();
              $ip =  get_client_ip();
              if(huyGhett($_POST['idghekh'],$_POST['idcbkh'],'ttghethuonggia',$ip)){
                $Array['StatusCode'] = 1;
                
              }else{
                $Array['StatusCode'] = 0;
              }
              echo json_encode($Array);
              return;
              break;
            default:
                # code...
                break;
        }
    }

?>