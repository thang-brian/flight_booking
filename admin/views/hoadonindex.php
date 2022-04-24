<div class="col-lg-10">
    <div class="l-box-white">
        <div class="container-fluid">
            <div class="row d-flex justify-content-between mt-3">
                <div class="col-lg-4 text-dark mt-3">
                    <h2>HOÁ ĐƠN</h2>
                </div>
                <div class="col-lg-3 mt-3">
                    <nav aria-label="breadcrumb ">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Trang Chủ</a></li>
                            <li class="breadcrumb-item"><a href="#">Hoá Đơn</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
            <hr>
            <div class="row mt-3">
                <div class="col-lg-12 bg-white pb-4 border">
                    <div class="row d-flex justify-content-center">
                        <table class="table table-striped table-inverse table-responsive">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>ID</th>
                                    <th>Họ Tên</th> 
                                    <th>Điểm Đi</th>
                                    <th>Điểm Đến</th>
                                    <th>Ngày Bay</th>
                                    <th>Giờ Bay</th>
                                    <th>Loại Vé</th>
                                    <th>Trạng Thái</th>
                                    <th>Chi Tiết</th> 
                                    <th>Hành Động</th> 
                                </tr>
                            </thead>

                            <tbody id="result">
                                <?php
                                    $i=0;
                                    foreach ($showallhd as $hd) {
                                        $i++;
                                        $id=$hd['id'];
                                        $linkdel = "/ban-ve-may-bay/admin/index.php?ctrl=hoadon&act=del&iddel=".$id;
                                        $linkedit = "/ban-ve-may-bay/admin/index.php?ctrl=hoadon&act=add&idedit=".$id;
                                        $linkhdct = "/ban-ve-may-bay/admin/index.php?ctrl=hoadon&act=hdct&idhd=".$id;

                                        $tenKh = isset(showHdCt($hd['id'])['tenkh']) ? showHdCt($hd['id'])['tenkh'] : '';

                                        $trangThai = $hd['trangthai'];
                                        if($trangThai == 1){
                                            $trangThai = 'Chưa Thanh Toán';
                                        }elseif($trangThai == 2){
                                            $trangThai = 'Đã Thanh Toán';
                                        }
                                        
                                        $soLuong = isset($hd['id']) ? demSoluong($hd['id']) : '';
                                        if(isset($soLuong['sl']) && $soLuong['sl'] > 1){
                                            $loaiVe ='Khứ Hồi';
                                        }else{
                                            $loaiVe ='Một Chiều';
                                        }
                                    ?>
                                    <tr>
                                        <td><?=$i?></td>  
                                        <td><?=$tenKh?></td>
                                        <td><?= isset(showHdCt($hd['id'])['idchuyenbay']) ? showVeAdmin(showHdCt($hd['id'])['idchuyenbay'])['0']['tinh_di'] : ''?></td>
                                        <td><?= isset(showHdCt($hd['id'])['idchuyenbay']) ? showVeAdmin(showHdCt($hd['id'])['idchuyenbay'])['0']['tinh_den'] : '' ?></td>
                                        <td><?= isset(showHdCt($hd['id'])['idchuyenbay']) ? showVeAdmin(showHdCt($hd['id'])['idchuyenbay'])['0']['ngaydi'] : '' ?></td>
                                        <td><?= isset(showHdCt($hd['id'])['idchuyenbay']) ? showVeAdmin(showHdCt($hd['id'])['idchuyenbay'])['0']['giodi'] : '' ?></td>
                                        <td><?= $loaiVe?></td>
                                        <td><?=$trangThai?></td>
                                        <td><a href="<?=$linkhdct?>">Xem Chi Tiết</a></td>
                                        <td>
                                            <a onclick='checkDelete("<?=$linkdel?>")'><i class="fa fa-trash mr-3"></i></a>
                                            <a href="<?=$linkedit?>"><i class="fa fa-edit"></i></a>
                                        </td>
                                    </tr>
                                <?php }?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>