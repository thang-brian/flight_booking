<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>user profile bio graph and total sales - Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container bootstrap snippets bootdey">
<div class="row">
<div class="profile-nav col-md-3">
      <div class="panel">
          <div class="user-heading round">
              <a href="index.php?act=showhs">
                  <img src="views/img/ava.jpg" alt="">
              </a>
              <?php  foreach ($showhs as $hs ) {?>
              <h1><?=$hs['user']?></h1>
              <p><?=$hs['email']?></p>
              <?php }?>
          </div>
         

          <ul class="nav nav-pills nav-stacked">
              <li class="active"><a href="index.php?act=showhs"> <i class="fa fa-user"></i> Thông Tin Cá Nhân</a></li>
              <li><a href="index.php?act=userprofile"> <i class="fa fa-calendar"></i> Đổi Mật Khẩu </a></li>
               <?php  foreach ($showhs as $hskh ) {
              $id=$hskh['id'];
              $linkedit = "index.php?act=hsedit&idedit=".$id; 
          ?>
              <li><a href="<?=$linkedit?>"> <i class="fa fa-edit"></i> Chỉnh Sửa Thông Tin</a></li>
               <?php }?>
          </ul>
      </div>
  </div>
  <div class="profile-info col-md-9">
    
      <div class="panel">
          <div class="bio-graph-heading">
            Đổi Mật Khẩu
        </div>
          <div class="panel-body bio-graph-info">
              <h1>Hồ Sơ</h1>
              <div class="row">
              <form class="forms-sample " method="post" enctype="multipart/form-data">
 
        
         <div class="form-group">
             <label for="exampleInputEmail1">Nhập Pass Mới </label>
             <input type="password" name="password" class="form-control" value="" id="exampleInputEmail1" placeholder="Nhập Pass">
         </div>
     
         
      
    
     <input type="submit" name="doimk" class="btn btn-gradient-success mr-2" value="Đổi Mật Khẩu">
     
 </form>
                            
          </div>
      </div>
     
  </div>
</div>
</div>
<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>