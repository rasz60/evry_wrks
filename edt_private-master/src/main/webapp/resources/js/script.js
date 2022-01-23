/*=====================================Product Detail.html=====================================*/
/* size + 버튼 눌렀을 때 사이즈 선택 박스가 보이고 다시 누르면 사라지는 function */
$(function() {
    $("#p_size span").on("click", function() {
        if($("#size_detail").is(":visible") == false) {
            $("#size_detail").css({"display":"block"});
        } else {
            $("#size_detail").css({"display":"none"});
        };
    });
});


/* 
사이즈 선택 박스에서 사이즈를 골랐을 때
1) #check에 선택한 사이즈 text 가져오기
2) 선택된 사이즈 칸의 배경색(black), 글씨색(white) 변경
3) 선택된 사이즈가 아닌 칸의 나머지는 원래 색으로 변경
*/
$(function() {
    $(".size td").on("click", function() {
        var size = $(this).text();
        $("#check").text(size).css({"color":"blue"});
        $(this).css({"background-color":"black", "color":"white"});
        $(".size td").not(this).css({"background-color":"transparent", "color":"black"});
    });
});


/* 사이즈 선택 박스에서 x 버튼을 눌렀을 때, #check에 표시한 text와 사이즈 박스 선택도 초기화 */
$(function() {
    $("#cancel_size").on("click", function() {
        $("#check").text("");
        $(".size td").css({"background-color":"transparent", "color":"black"});
    });
});


/* 
사이즈 선택 박스에서 choose 버튼을 눌렀을 때
1) #size_detail 박스 사라지게 하기
2) #check에 text 가져와서 #p_size에 표시
3) Size text와 size + 버튼 사이 margin-right 조정 (5% -> 23%)
*/
$(function() {
    $("#size_btn #submit").on("click", function() {
        var size = $("#check").text();
        if ( size == "" ) {
            $("#p_size div:nth-child(2)>p>b").text("Ur Size");
            $("#p_size div:nth-child(2)>p").css({"margin-right":"5%"});
            $("#size_detail").css({"display":"none"});
        } else {
            $("#p_size div:nth-child(2)>p>b").text(size);
            $("#p_size div:nth-child(2)>p").css({"margin-right":"25%"});
            $("#size_detail").css({"display":"none"});
        }
    });
});


/* 
사이즈 선택 박스에서 cancel 버튼을 눌렀을 때
1) #size_detail 박스 사라지게 하기
2) #p_size에 text와 margin-right(23% -> 5%) 원상 복귀
3) #check에 표시되어있던 size와 size 박스 선택 풀기 
*/
$(function() {
    $("#size_btn #cancel").on("click", function() {
            $("#size_detail").css({"display":"none"});
            $("#p_size div:nth-child(2)>p>b").text("Ur Size");
            $("#p_size div:nth-child(2)>p").css({"margin-right":"5%"});
            $("#check").text("");
            $(".size td").css({"background-color":"transparent", "color":"black"});

    });
});


/* #rules 박스에 드롭단추 누르면 세부내용 나오게 하기 */
$(function dropRule() {
    $(".default span").on("click", function() {
        if( $(this).parent().next().is(":visible") == false) {
            $(this).css({"transform":"rotate(0deg)"});
            $(this).parent().next().css({"display":"block"});                            
        } else {
            $(this).css({"transform":"rotate(180deg)"});
            $(this).parent().next().css({"display":"none"});
        };
    });
});

/* #hit 버튼 누르면 카운트++, 배경색 바뀜 */
var count = 0;
$(function hit_click() {
    var hitCount = parseInt($("#hit small").text());
    $("#hit").on("click", function() {
        count++;
        if( count % 2 == 1 ) {
            $(this).css({"background-color":"#ec6810"});
            $("#hit span").text("♥");
            $("#hit small").text(++hitCount);
        } else {
            $(this).css({"background-color":"#ED853F"});
            $("#hit span").text("♡");
            $("#hit small").text(--hitCount);
        }
    });
});

/*=====================================Products.html=====================================*/
/* filter 글씨 누르면 색 바뀌기 */
$(function () {
    $(".filter").on("click", function() {
        $(this).css({"color":"black", "font-weight":"700"});
        $(this).siblings().css({"color":"#706B6B", "font-weight":"400"});
    });
});