// 模态框登录
var categoryId = '',
    directionId = '',
    className = '';

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
                $("#category").append("<li id='"+categoryList.data[i].id+"'><a>" + categoryList.data[i].categoryname + "</a></li>");
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
                $("#direction").append("<li id='"+directionList.data[i].id+"'><a>" + directionList.data[i].directionname + "</a></li>");
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

    $("#searchInput").change(function () {
        className = $(this).val();
    });

    $("#searchBtn").click(function () {
        getClass();
    });

    $(function () {
        $("#login-btn").click(function () {
            $("#exampleModal").modal("show");
        });
    });

    categoryDefered.promise.then(function () {
        $("#category li").click(function () {
            $("#category li").removeClass("active");
            $(this).addClass("active");
            categoryId = $(this).attr('id') || '';
            getClass();
        });
    });

    directionDefered.promise.then(function () {
        $("#direction li").click(function () {
            $("#direction li").removeClass("active");
            $(this).addClass("active");
            directionId = $(this).attr('id') || '';
            getClass();
        });
    });
});

function getClass(){
    $.ajax({
        type: "GET",
        url: "/action/clazz",
        dataType: "json",
        data:{
            categoryId: categoryId,
            directionId: directionId,
            className: className
        },
        success: function (classList) {
            //  console.log(JSON.stringify(categoryList));
            var html = "";
            for (var i = 0; i < classList.data.length; i++) {
            //
            //<div  class="col-xs-6 col-md-3">
            //        <a href="test/content/?cid=${ classs.id }" class="thumbnail">
            //        <img src="${ classs.picture }" alt="${ classs.className }"/>
            //        <h5>${ classs.className }</h5>
            //        </a>
            //        </div>

                html +=
                "<div class='col-xs-6 col-md-3'>"+
                    "<a href='/action/chapter/getContent?id="+
                classList.data[i].id+"' class='thumbnail'>" +
                    "<img src= '"+classList.data[i].pictureul+"' alt='"+classList.data[i].classname+ "' />"+
                    "<h5>"+classList.data[i].classname+"</h5></a></div>";
            }
            $("#thumbnail").html(html);
            //categoryDefered.resolve(categoryList);
        },
        error: function (e) {
            //categoryDefered.reject(e);
        }
    });

}