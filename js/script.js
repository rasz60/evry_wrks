$(function() {
    var search_btn = $(".r_menu").eq(4);
    search_btn.on("click", function() {
        $(".search_bar").show();
    });
});

$(function() {
    var close_btn = $(".search_bar span");
    close_btn.on("click", function() {
        $(".search_bar").hide();
    });
});
