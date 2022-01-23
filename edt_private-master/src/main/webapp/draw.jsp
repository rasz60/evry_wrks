<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/draw.css" type="text/css">
    <title>EDT_SHOP</title>
</head>

<body>
    <header id="header">
        <div id="logo">
            <a href="index.html">
                <img src="resources/img/logo-basic.png">
            </a>
        </div>
        <div id="search">
            <input type="search" name="search" autofocus autocomplete="off" onfocus="this.placeholder=''" onblur="this.placeholder='brand, name, model . . .'">
            <a href="#">
                <img src="resources/img/search_btn2.png">
            </a>
        </div>
        <div id="menu">
            <ul>
                <li>
                    <a href="draw.jsp">DRAW</a>
                </li>
                <li>
                    <a href="products.jsp">SHOP</a>
                </li>
                <li>
                    <a href="#">JOIN</a>
                </li>
                <li>
                    <a href="#">LOGIN</a>
                </li>
            </ul>
        </div>
    </header>
    <section id="products">
        <div class = "p_box">
            <span class="p_photo"><img src ="resources/img/DD3357-100_1.jpg" alt ="이미지1"></span>
            <span class="p_photo"><img src ="resources/img/DD3357-100_2.jpg" alt ="이미지1"></span>
            <span class="p_photo"><img src ="resources/img/DD3357-100_3.jpg" alt ="이미지1"></span>
            <span class="p_photo"><img src ="resources/img/DD3357-100_4.jpg" alt ="이미지1"></span>
            <span class="p_photo"><img src ="resources/img/DD3357-100_5.jpg" alt ="이미지1"></span>
            <span class="p_photo"><img src ="resources/img/DD3357-100_6.jpg" alt ="이미지1"></span>
        </div>
        <div class="p_detail">
            <ul>
                <li><h3>Nike Dunk Low Retro PRM Halloween</h3></li>
                <li>DD3357-100</li>
                <li><span>129,000</span>원</li><br>
                <li>응모기간 <span>01/18(화) 15:00 ~ 01/19(수) 09:00</span></li>
                <li>구매기간 <span>01/19(수) 12:00 ~ 01/19(수) 14:00</span></li><br>
                <li>상품정보<br><br>
                    <span>
                        언제 신어도 늘 새롭습니다. 에어 조던 1 로우는 조던의 
                        역사와 헤리티지가 담긴 아이템으로 온종일 편안함을 선사합니다. 
                        마음에 드는 컬러를 선택한 후, 고급 소재의 조합과 힐의 내장형 
                        에어가 어우러진 아이코닉한 스타일을 누리며 문밖을 나서보세요.
                    </span>
                </li><br>
                <li>
                    * THE DRAW 이벤트의 응모결과 안내 메시지는 기본적으로 SMS를 통해 모든 이벤트 당첨자에게 발송되고 있습니다.<br> 
                      단, 휴대폰 문자메시지의 경우, 개개인의 문자메시지 수신 설정에 따라 메시지가 차단될 수 있습니다.<br>
                      이 경우, 차단된 문자 확인은 수신자 본인이 단말기 및 이동통신사 홈페이지에서 확인하실 수 있습니다. (문자 수신 설정과 같은 개인정보관련 내용은 본인 이외 타인은 조회할 수 없으므로 수신자 본인의 확인이 필요합니다.)<br>
                    * 어렵게 잡은 기회를 놓치지않도록 당첨 결과는 마이페이지에서도 확인하시기바랍니다.<br>
                    * 라플 상품 구매 시 중개 거래 업체[EX. KREAM, SOLDOUT 등]의 직접 발송은 불가합니다. 상품 결제 시 해당 업체들로 등록된 주소는 자동으로 당첨이 취소됩니다.<br>
                </li>
            </ul>
        </div>
        <div class="p_select">
            <form> SIZE :
                <label for="id_btn_01">
                    <input type="radio" class="btn" id="id_btn_01" name="p_size" value="260">260
                </label>
                <label for="id_btn_02">
                    <input type="radio" class="btn" id="id_btn_02" name="p_size" value="270">270
                </label>
                <label for="id_btn_03">
                    <input type="radio" class="btn" id="id_btn_03" name="p_size" value="280">280
                </label>
                <input type="submit" value="응모하기">   
            </form>
        </div>
    </section>
    <footer>
        <div class="top">
            <div class="footer_menu">
                <h1>PRODUCTS</h1>
                <ul>
                    <li><a href="#">신상품</a></li>
                    <li><a href="#">인기상품</a></li>
                    <li><a href="#">할인상품</a></li>
                    <li><a href="#">랜덤박스</a></li>
                    <li><a href="#">DRAW</a></li>
                </ul>
            </div>
            <div class="footer_menu">
                <h1>BRAND</h1>
                <ul>
                    <li><a href="#">JORDAN</a></li>
                    <li><a href="#">NIKE</a></li>
                    <li><a href="#">ADIDAS</a></li>
                    <li><a href="#">SUPREME</a></li>
                    <li><a href="#">BALENCIAGA</a></li>
                </ul>
            </div>
            <div class="footer_menu">
                <h1>COMPANY</h1>
                <ul>
                    <li><a href="#">회사소개</a></li>
                    <li><a href="#">인재채용</a></li>
                    <li><a href="#">제휴제안</a></li>
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">개인정보처리방침</a></li>
                </ul>
            </div>
        </div>
        <div class="mid">
            <div class="des">
                <h1>COMPANY : edt# </h1>
                <h1>COMPANY_REGNO : [777777777] NETWORK_REGNO 7777-7777-7777 [사업자정보확인]</h1>
                <h1>TEL: 010-6246-2257 ADDRESS : Seoul,Republic of Korea, Earth</h1>
                <h1>edt_shop@gmail.com</h1>
                <h1>Bank info : 우리은행 77777777777777 : edt </h1>
                <h1>CS center : 070-7777-7777 AM10:00 ~ PM5:00 (점심시간 PM1:00~2:00) ( WEEKEND/HOLIDAY OFF )</h1>
                <h1>CEO | DESIGN | MACKETING | WEB | ENGINE</h1>
            </div>
        </div>
        <div class="bottom">
            <div class="logo_name">
                <img src="resources/img/logo-basic_bold.png" alt="NOTYOURBUSINES">
            </div>
        </div>
    </footer>

</body>
</html>