<!-- 


<div class="col-lg-10">
    <div class="container-fluid">
        <div class="row d-flex justify-content-between mt-3">
            <div class="col-lg-4 mt-3">
                <h2>DANH MỤC</h2>
            </div>
            <div class="col-lg-4 mt-3">
                <nav aria-label="breadcrumb ">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Trang Chủ</a></li>
                        <li class="breadcrumb-item"><a href="#">Danh Mục</a></li>
                        <li class="breadcrumb-item"><a href="#">Thêm</a></li>
                    </ol>
                </nav>
            </div>
        </div>
        <hr>
        <div class="row mt-3">
            <div class="col-lg-12 bg-white pb-4 border">
                <form action="" method="post" enctype="multipart/form-data">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <h3 class="mt-4 text-center">THÊM BÌNH LUẬN</h3>
                            <p class="text-center">Bạn có thể thêm bình luận ở đây!</p>
                              <div class="row mt-4">
                                <div class="col-lg-3">
                                    <label for=""><strong>Khách Hàng</strong></label>
                                </div>
                                <div class="col-lg-9">
                                    <select class="form-control" name="idkh" id="" >
                                        <option value="">Chọn</option>
                                        <?php foreach ($showallkh as $motkh) {?>
                                            <option value="<?=$motkh['id']?>"><?=$motkh['user']?></option>
                                        <?php }?>
                                    </select>
                                </div>
                            </div>    
                            <div class="row mt-4">
                                <div class="col-lg-3">
                                    <label for=""><strong>Bài Viết</strong></label>
                                </div>
                                <div class="col-lg-9">
                                    <select class="form-control" name="idbaiviet" id="" >
                                        <option value="">Chọn</option>
                                        <?php foreach ($showallbv as $motbv) {?>
                                            <option value="<?=$motbv['id']?>"><?=$motbv['name']?></option>
                                        <?php }?>
                                    </select>
                                </div>
                            </div>
                            <div class="row mt-4">
                                <div class="col-lg-3">
                                    <label for=""><strong>Star</strong></label>
                                </div>
                                <div class="col-lg-9">
                                    <input type="text" name="star" id="" class="form-control" placeholder="Star"
                                        aria-describedby="helpId" >
                                </div>
                            </div>
                            <div class="row mt-4">
                                <div class="col-lg-3">
                                    <label for=""><strong>Bình Luận</strong></label>
                                </div>
                                <div class="col-lg-9">
                                    <textarea class="form-control" name="noidung" id="" rows="5" placeholder="Bình luận"></textarea>
                                </div>
                            </div>
                      
                        
                            <div class="row mt-4">
                                <div class="col-lg-3">
                                    <label for=""><strong>Ẩn Hiện</strong></label>
                                </div>
                                <div class="col-lg-9">
                                    <div class="form-check">
                                    <label class="form-check-label">
                                    Hiện ?
                                        <input type="checkbox" value="1" class="ml-2 form-check-input" name="anhien" id="" checked>
                                    </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-lg-3"></div>
                                <div class="col-lg-9 ">
                                    <div class="row d-flex justify-content-end">
                                        <div class="col-lg-5">
                                            <div class="form-group">
                                                <a href="index.php?ctrl=loaihang&act=index"> <input type="button" name="" id="" value="Huỷ" class="btn btn-cancel"></a>
                                            </div>
                                        </div>
                                        <div class="col-lg-5 pr-2 mr-2">
                                            <div class="form-group">
                                                <input type="submit" name="them" id="" value="Thêm Bình Luận"
                                                    class="btn btn-submit text-center">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

 -->
