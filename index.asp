<!--#include file="inc/config.asp"-->
<!--#include file="inc/conn.asp"-->
<!--#include file="inc/function.asp"-->
<!doctype html>
<html>
<head>
    <!-- Basic Page Needs -->
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="keywords" content="<%=keywords%>" />
    <meta name="description" content="<%=description%>" />
    <title><%=SiteName%></title>
    <!-- javascript -->
    <script type="text/javascript"  rel="stylesheet" src="../images/yz/js/index.js"></script>
    <script type="text/javascript"  rel="stylesheet" src="../images/yz/js/jquery.js"></script>
    <script type="text/javascript"  rel="stylesheet" src="../images/yz/js/superslide.2.1.js"></script>
    <!-- css -->
    <link href="images/school.css" rel="stylesheet" type="text/css">
    <link href="images/lh.css" rel="stylesheet" type="text/css">
    <link type="text/css" rel="stylesheet" href="../images/yz/css/style.css">
    <!-- favicons -->
    <link rel="shortcut icon" href="favicon.ico">
<!--#include file=images/ini.sys -->
</head>
<body>
<!-- header -->
<!--#include file="inc/top.asp"-->
<!-- box family-->

<section class="box boxp">
<div class="fullSlide" >
	<div class="bd">
		<ul>
            <li style="background:#817165 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/18.jpg"></a></li>
            <li style="background:#68696E center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/11.jpg"></a></li>
            <li style="background:#334C26 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/25.jpg"></a></li>
            <li style="background:#654337 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/20.jpg"></a></li>
            <li style="background:#86193A center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/3.jpg"></a></li>
            <li style="background:#774C43 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/4.jpg"></a></li>
            <li style="background:#020001 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/5.jpg"></a></li>
            <li style="background:#92D1D6 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/6.jpg"></a></li>
            <li style="background:#484F33 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/7.jpg"></a></li>
            <li style="background:#92D1D6 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/8.jpg"></a></li>
            <li style="background:#215841 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/9.jpg"></a></li>
            <li style="background:#91AAAD center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/10.jpg"></a></li>
			<li style="background:#FBF5CD center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/1.jpg"></a></li>
            <li style="background:#BAC0B4 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/2.jpg"></a></li>
            <li style="background:#5D626F center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/12.jpg"></a></li>
            <li style="background:#AC6957 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/13.jpg"></a></li>
            <li style="background:#D2CFBF center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/14.jpg"></a></li>
            <li style="background:#5D626F center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/15.jpg"></a></li>
            <li style="background:#11ABCD center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/16.jpg"></a></li>
            <li style="background:#C0DAFB center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/17.jpg"></a></li>
            <li style="background:#251E29 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/19.jpg"></a></li>
            <li style="background:#C2C9BD center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/21.jpg"></a></li>
            <li style="background:#5D626F center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/22.jpg"></a></li>
            <li style="background:#C3B9AD center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/23.jpg"></a></li>
            <li style="background:#92D1D6 center 0 no-repeat;"><a href="#"><img src="images/yz/image/cdu/24.jpg"></a></li>
			
		</ul>
	</div>
	<div class="hd"><ul></ul></div>
	<span class="prev"></span>
	<span class="next"></span>
</div><!--fullSlide end-->

<script type="text/javascript">
$(".fullSlide").hover(function(){
    $(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
},
function(){
    $(this).find(".prev,.next").fadeOut()
});
$(".fullSlide").slide({
    titCell: ".hd ul",
    mainCell: ".bd ul",
    effect: "fold",
    autoPlay: true,
    autoPage: true,
    trigger: "click",
    startFun: function(i) {
        var curLi = jQuery(".fullSlide .bd li").eq(i);
        if ( !! curLi.attr("_src")) {
            curLi.css("background-image", curLi.attr("_src")).removeAttr("_src")
        }
    }
});
</script>
</section>
<section class="box box1">
    <!-- cool box-->
<div class="newsbox">
    <div class="news">
        <div class="news1">
            <div class="news11"><h1>综合新闻</h1></div>
            <div class="news12">
                <a href="Sort.asp?id=1" target="_blank"><h4>更多</h4></a>
            </div>
        </div>
        <div class="news2">
            <ul id="plist1"><%=ShowNews(1,8)%></ul>
        </div>
    </div>
    <div class="newsb">
        <div class="news1b">
            <div class="news11b"><h1>学生工作</h1></div>
            <div class="news12b">
                <a href="Sort.asp?id=1" target="_blank"><h4>更多</h4></a>
            </div>
        </div>
        <div class="news2b">
            <ul id="plist2"><%=ShowNews2(8,8)%></ul>
        </div>
    </div>
        <div class="newsc">
        <div class="news1b">
            <div class="news11b"><h1>校外咨询</h1></div>
            <div class="news12b">
                <a href="Sort.asp?id=1" target="_blank"><h4>更多</h4></a>
            </div>
        </div>
        <div class="news2b">
            <ul id="plist5"><%=ShowNews3(19,8)%></ul>
        </div>
    </div>
</div>
</section>
<!--#include file="inc/bottom.asp"-->
</body>
</html>