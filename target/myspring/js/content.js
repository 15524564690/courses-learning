
$(document).ready(function(){ 
// 模态框登录
    $("#mytab a").click(function (e) {
//        e.preventDefault();
        $(this).tab("show");
    })
    $(function () {
        $("#login-btn").click(function () {
            $("#exampleModal").modal("show");
        });
    });
});
    //tab 页显示隐藏
$(function () {
        $(".right-content li").click(function () {
            $(".right-content li").attr("class", "");
            $(this).attr("class", "active");
            var index = $(this).attr("id");
            switch (parseInt(index)) {
                case 0:
                    $(".tab").children("div").css("display", "none");
                    $(".video").css("display", "block");
                    break;
                case 1:
                    $(".tab").children("div").css("display", "none");
                    $(".ppt").css("display", "block");
                    break;
                case 2:
                    $(".tab").children("div").css("display", "none");
                    $(".eresource").css("display", "block");
                    break;
            }
        });
    });