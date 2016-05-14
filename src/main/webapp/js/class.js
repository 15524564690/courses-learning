// 模态框登录
$(function () {
    var categoryDefered = Q.defer(),
        directionDefered = Q.defer();

    getClass();
    $.ajax({
        type: "GET",
        url: "/action/category",
        dataType: "json",
        success: function (categoryList) {
            //  console.log(JSON.stringify(categoryList));
            for (var i = 0; i < categoryList.data.length; i++) {
                $("#category").append("<li><a>" + categoryList.data[i].categoryname + "</a></li>");
            }
            categoryDefered.resolve(categoryList);
        },
        error: function (e) {
            categoryDefered.reject(e);
        }
    });
    $.ajax({
        type: "GET",
        url: "/action/direction",
        dataType: "json",
        success: function (directionList) {
            // console.log(JSON.stringify(directionList));
            for (var i = 0; i < directionList.data.length; i++) {
                $("#direction").append("<li><a>" + directionList.data[i].directionname + "</a></li>");
            }
            directionDefered.resolve(directionList);
        },
        error: function (e) {
            directionDefered.reject(e);
        }
    });

    $("#mytab a").click(function (e) {
//      e.preventDefault();
        $(this).tab("show");
    })

    $(function () {
        $("#login-btn").click(function () {
            $("#exampleModal").modal("show");
        });
    });

    categoryDefered.promise.then(function () {
        $("#category li").click(function () {
            $("#category li").removeClass("active");
            $(this).addClass("active");

        });
    });

    directionDefered.promise.then(function () {
        $("#direction li").click(function () {
            $("#direction li").removeClass("active");
            $(this).addClass("active");
        });
    });
});

function getClass(){
    $.ajax({
        type: "GET",
        url: "/action/clazz",
        dataType: "json",
        data:{categoryId:"",directionId:"",className:""},
        success: function (classList) {
            //  console.log(JSON.stringify(categoryList));
            for (var i = 0; i < classList.data.length; i++) {
            //
            //<div  class="col-xs-6 col-md-3">
            //        <a href="test/content/?cid=${ classs.id }" class="thumbnail">
            //        <img src="${ classs.picture }" alt="${ classs.className }"/>
            //        <h5>${ classs.className }</h5>
            //        </a>
            //        </div>

                $("#thumbnail").append(
                "<div class='col-xs-6 col-md-3'>"+
                    "<a href='/action/chapter/getContent?id="+
                classList.data[i].id+"' class='thumbnail'>" +
                    "<img src= '"+classList.data[i].pictureul+"' alt='"+classList.data[i].classname+ "' />"+
                    "<h5>"+classList.data[i].classname+"</h5></a></div>");
            }
            //categoryDefered.resolve(categoryList);
        },
        error: function (e) {
            //categoryDefered.reject(e);
        }
    });

}