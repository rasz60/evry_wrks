
/* header에 돋보기버튼 누르면 search_bar 나오게 하기*/

$(function() {
    var search_btn = $(".r_menu").eq(4);
    search_btn.on("click", function() {
        $(".search_bar").slideDown(150);
    });
});


/* search_bar에 X버튼 누르면 search_bar 사라지게 하기*/

$(function() {
    var close_btn = $(".search_bar span");
    close_btn.on("click", function() {
        $(".search_bar").slideUp(150);
    });
});


/* brand_nike.html의 brand_submenu 스크롤 내리면 header와 합쳐져 따라오게 하기 */

onscroll = function() {
    var nVScroll = document.documentElement.scrollTop || document.body.scrollTop;
    if(nVScroll > 500) {
        $("#brand_submenu").css({"position":"fixed", "background-color":"white" ,"top":"50px", "width":"1600px", "box-shadow":"0 0 3px 0 rgb(0 0 0 / 20%)"});
    } else {
        $("#brand_submenu").css({"position":"", "box-shadow":""});
    }
};


/* nike_giannis.html의 side_menu에 버튼 누르면 sub_menu 나오게 하기 */

$(function() {
    var side_btn = $(".side_main");
    side_btn.click(function() {
        var side_sub = $(this).find(".side_submenu");
        var slide_btn = $(this).find("li:eq(1)");
        if( side_sub.is(":visible") ) {
            side_sub.slideUp();
            slide_btn.text("+");
        } else {
            side_sub.slideDown();
            slide_btn.text("-");
        }
    });
});