$(document).ready(function() {
    ClickBtn();
    ClickBtn2();
})
    function fireErr(text) {
        Swal.fire({
            icon: 'error',
            type: 'error',
            title: 'Oops...',
            text: text,
            showConfirmButton: true,
            showCancelButton: false,
        });
    }

    function ClickBtn() {

        $('.l-ghe-thuonggia').each(function() {
            $('.l-bg-gray').each(function() {
                let ThisBox = $(this);
                ThisBox.click(async function(Events) {
                    Events.preventDefault();
                    fireErr('Ghế không còn trống !');
                    return;
                })
            })


            let ThisBox = $(this);
            ThisBox.click(async function(Events) {
                Events.preventDefault();
                let MaxSheet = $('.l-ghe-active.l-ghe-thuongia').length;

                let IsRemoveSelected = (ThisBox.hasClass('l-bg-gray'));

                let IsChoosed = (ThisBox.hasClass('l-ghe-active'));
                if (IsChoosed) {
                    // fireErr('Ghế không còn trống !');
                    // huy ghe
                    let ID = ThisBox.text();
                    let idChuyenBay = $("#idcb").val();
                    var huyGhe = new FormData();
                    huyGhe.append('Action', 'huyghekh');
                    huyGhe.append('idghekh', ID);
                    huyGhe.append('idcbkh', idChuyenBay);
                    await $.ajax({
                        type: "POST",
                        url: 'controllers/ajax/chonghe.php',
                        dataType: 'JSON',
                        cache: false,
                        contentType: false,
                        processData: false,
                        data: huyGhe,
                        success: function(Data) {
                            location.reload();
                            
                        }
                    })
                    return;
                } else if (MaxSheet >= 5 && IsRemoveSelected === false) {
                    fireErr('Bạn chỉ được đặt tối đa 5 vé !');
                    return;
                } else if (IsRemoveSelected) {
                    fireErr('Ghế đã có người khác chọn rồi !');
                    return;
                } else {
                    let ID = ThisBox.text();
                    let idChuyenBay = $("#idcb").val();
                    var setGhe = new FormData();
                    setGhe.append('Action', 'setghetg');
                    setGhe.append('idghe', ID);
                    setGhe.append('idcb', idChuyenBay);
                    await $.ajax({
                        type: "POST",
                        url: 'controllers/ajax/chonghe.php',
                        dataType: 'JSON',
                        cache: false,
                        contentType: false,
                        processData: false,
                        data: setGhe,
                        success: function(Data) {},
                        complete: function() {
                            // var html = '<p class="lead text-center seat-cart" id="'+ID+'">Chỗ: ' + ID + '</p>';
                            // $('.bool-seat').html(html);
                            
                        }
                    })
                }

            })
        })
    }
 

    function ClickBtn2() {
        $('.l-ghe-phothong').each(function() {
            let ThisBox = $(this);
            ThisBox.click(async function(Events) {
                Events.preventDefault();
                let MaxSheet = $('.l-ghe-active.l-ghe-phothong').length;

                let IsRemoveSelected = (ThisBox.hasClass('l-bg-gray'));

                let IsChoosed = (ThisBox.hasClass('l-ghe-active'));
                if (IsChoosed) {
                    // fireErr('Ghế không còn trống !');
                    let ID = ThisBox.text();
                    let idChuyenBay = $("#idcb").val();
                    var huyGhe = new FormData();
                    huyGhe.append('Action', 'huyghe');
                    huyGhe.append('idghe', ID);
                    huyGhe.append('idcb', idChuyenBay);
                    await $.ajax({
                        type: "POST",
                        url: 'controllers/ajax/chonghe.php',
                        dataType: 'JSON',
                        cache: false,
                        contentType: false,
                        processData: false,
                        data: huyGhe,
                        success: function(Data) {}
                    })
                    return;
                } else if (MaxSheet >= 5 && IsRemoveSelected === false) {
                    fireErr('Bạn chỉ được đặt tối đa 5 vé !');
                    return;
                } else if (IsRemoveSelected) {
                    fireErr('Ghế đã có người khác chọn rồi !');
                    return;
                } else {

                    let ID = ThisBox.text();
                    let idChuyenBay = $("#idcb").val();
                    var setGhe = new FormData();
                    setGhe.append('Action', 'setghethuong');
                    setGhe.append('idghe', ID);
                    setGhe.append('idcb', idChuyenBay);

                    await $.ajax({
                        type: "POST",
                        url: 'controllers/ajax/chonghe.php',
                        dataType: 'JSON',
                        cache: false,
                        contentType: false,
                        processData: false,
                        data: setGhe,
                        success: function(Data) {}
                    });
                }
            })
        })
    }

