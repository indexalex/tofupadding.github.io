<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
		<link rel="icon" href="/images/logo2.ico" type="image/x-icon" />
		<title>鹿港美食小吃~冷凍豆花大王</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script> 
		<style type="text/css">
.card{
    margin-left: 15%;
    margin-right: 15%;
    box-shadow: 3px 3px 5px 6px #cccccc;
  }
li{
  	font-size: 16px;
  }
ul {  
    list-style:none;  
}  
.out {  
	width:100%;
	height:600px;
    margin:50px auto;  
    position:relative;  
}  
.img li {  
    position:absolute;  
    top:0px;  
    left:0px;  
    display:none  
}  
.out .num {  
    position:absolute;  
    bottom:0px;  
    left:0px;  
    font-size:0px;  
    text-align:center;  
    width:100%;  
}  
.num li {  
    width:20px;  
    height:20px;  
    background:#666666;  
    color:#FFFFFF;  
    text-align:center;  
    line-height:20px;  
    display:inline-block;  
    font-size:16px;  
    border-radius:50%;  
    margin-right:10px;  
    cursor:pointer;  
}  
.out .btn {  
    position:absolute;  
    top:50%;  
    margin-top:-30px;  
    width:30px;  
    height:60px;  
    background:rgba(0,0,0,0.5);  
    color:#FFFFFF;  
    text-align:center;  
    line-height:60px;  
    font-size:40px;  
    display:none;  
    cursor:pointer;  
}  
.out .num li.active-1 {  
    background:#AA0000;  
}  
.out:hover .btn {  
    display:block  
}  
.out .left {  
    left:-0px;  
}  
.out .right {  
    right:0px;  
}  
</style>  
</head>  
<body>
		<nav class="navbar  navbar-fixed-top" role="navigation" style="background-color:white">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"><img src="/images/logo.png" height="70px" width="350px" style="margin-left: 80%"></a>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav" style="margin-left: 20%;margin-top: 2%;">
					<li class="active"><a href="index.jsp">關於冷凍豆花大王</a></li>
					<li><a href="product.jsp">產品介紹</a></li>
					<li><a href="menu.jsp">MENU</a></li>
					<li><a href="fbview.jsp">加入粉絲團</a></li>
					<li><a href="productmanage.jsp">產品管理</a></li>
				</ul>
							</div>
		</nav>
				<div class="card" style="margin-top: 8%;'">
				 <div class="card-body">

<div class="out">   
  <!--上面-->  
  <ul class="img">  
    <li><a href=""><img src="/images/p1.jpg" width="100%" height="600px" alt=""></a></li>  
    <li><a href=""><img src="/images/a1.jpg" width="100%" height="600px" alt=""></a></li>  
    <li><a href=""><img src="/images/a2.jpg" width="100%" height="600px" alt=""></a></li>  
    <li><a href=""><img src="/images/a3.jpg" width="100%" height="600px" alt=""></a></li>  
    <li><a href=""><img src="/images/a4.jpg" width="100%" height="600px" alt=""></a></li>  
  </ul>  
  <!--下面-->  
  <ul class="num">  
  </ul>  
  <div class="left btn"><</div>  
  <div class="right btn">></div>  
</div>   


<script>  
$(function(){  
//下方for循环  
    var size=$(".img li").size()  
    for(var i=1; i<=size; i++){  
        var li="<li>"+i+"</li>";  
        $(".num").append(li)  
        }  
/*size  获取当前元素个数*/  
     
//手动控制轮播  
$(".img li").eq(0).show()  
$(".num li").eq(0).addClass('active-1')  
/*mouseover  可以改成点击事件  click*/  
$(".num li").mouseover(function(){  
$(this).addClass('active-1').siblings('li').removeClass('active-1')  
var index=$(this).index()  /*index  当前元素的意思索引值*/  
i=index; //i值和自动轮播值是相同的  
$(".img li").eq(index).stop().fadeIn(/*淡入*/).siblings().stop().fadeOut(/*淡出*/)      /*eq 0开始*/  
    });  
      
//自动控制轮播  
 var i=0;  
 var t=setInterval(move,2000)   //定时器  
    //右  
    function move(){  
     i++;  
     if(i==size){i=0;}  
     $(".num li").eq(i).addClass('active-1').siblings('li').removeClass('active-1');  
     $(".img li").eq(i).fadeIn().siblings().fadeOut();  
     };  
     //左  
    function moveL(){  
     i--;  
     if(i==-1){i=size-1;}  
     $(".num li").eq(i).addClass('active-1').siblings('li').removeClass('active-1');  
     $(".img li").eq(i).fadeIn().siblings().fadeOut();  
     };   
//自动轮播鼠标经过移入和移除  
    $(".out").hover(function(){  
        clearInterval(t)  
        },function(){  
            t=setInterval(move,2000)  
            });  
              
//左右按钮  
    $(".out .left").click(function(){  
        moveL()  
        })  
    $(".out .right").click(function(){  
        move()  
        })  
});    
</script>  
<br>
				 <h3 style="margin-left: 5%;color: #00BFFF;"><b>關於冷凍豆花大王</b></h3>
				 <hr style="height: 3%;width: 96%;align-content: center;margin-top:-5px;"><br>
				   <table width="100%">
				   		<tr style="background-color: #F0FFFF;">
				   			<td colspan="2">&nbsp;</td>
				   		</tr>
				   		<tr style="background-color: #F0FFFF;">
				   			<td colspan="2"><h4 style="margin-left: 20%;margin-right: 20%;text-indent: 2em;"><span style="font-size: 22px;color: blue;font-family: DFKai-sb;"><b>冷</b></span><span style="font-family: DFKai-sb;">凍豆花大王創始從路邊攤到成為店面生意，近四十年歲月累積的足跡，成為了創始人郭旭民夫婦不可磨滅的回憶。</span></h4></td>
				   		</tr>
				   		<tr style="background-color: #F0FFFF;">
				   			<td colspan="2"><h4 style="margin-left: 20%;margin-right: 20%;text-indent: 2em;"><span style="font-size: 22px;color: blue;font-family: DFKai-sb;"><b>本</b></span><span style="font-family: DFKai-sb;">店在鹿港已經有40年的歷史，相較其他，冷凍豆花大王40年來堅持所有材料「純手工製作」，為了就是能在每一個環節，把品質照顧好，每天5~6個小時的浸泡、烹煮、冷卻，把最好最道地的鹿港美食呈現給您，讓您吃的健康、安心。</span></h4></td>
						</tr>
						<tr style="background-color: #F0FFFF;">
				   			<td colspan="2"><h4 style="margin-left: 20%;margin-right: 20%;text-indent: 2em;"><span style="font-size: 22px;color: blue;font-family: DFKai-sb;"><b>關</b></span><span style="font-family: DFKai-sb;">於「冷凍」一詞源自民國70年間，創店老闆郭旭民與老闆娘，一大早就把煮好的豆花，裝在水冷式冰箱內，並推到街角販售，因為豆花放在冰箱內冰的冰冰涼涼，固有「冷凍」這個說法。</h4></td>
				   		</tr>
				   		<tr style="background-color: #F0FFFF;">
				   			<td colspan="2">&nbsp;</td>
				   		</tr>
				   		<tr>
				   			<td><img src="/images/history.jpg" style="border-radius: 10px;width: 630px;height: 430px;margin-left: 2%;margin-top: 20%;" /></td>
				   			<td><img src="/images/p2.jpg" style="border:2px solid black;border-radius: 10px;width: 300px;height: 350px;margin-top: 20%;transform:rotate(5deg);" /></td>
				   		</tr>			   		
				   </table>
				   <br><br>
				  <hr style="height: 3%;width: 96%;align-content: center;">
				  <br><br><br>
				  <p align="center"><b><span style="font-size: 20px">凱擘-大彰化新聞</span></b>&nbsp;&nbsp;&nbsp;手工豆花綿密軟嫩 許秉鋐代表超愛吃
				  <video src="v1.mp4" controls width="80%" height="60%" style="border: 2px solid black;"></video></p><br>
				     </div>
  				</div>

		<script src="https://code.jquery.com/jquery.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<hr style="margin-bottom: -6px;">
		<table width="100%" style="background-color: #F0FFF0;border-top: 1px solid #E8E8E8">
		<tr>
			<td><p class="col-md-8 col-xs-12 center copyright" style="margin-left: 20%;margin-top: 1%;color: #4F94CD;">聯絡資訊<br>電話:04-7766765<br>住址:彰化縣鹿港鎮中山路289號</p></td>
		</tr>
		<tr>
			<td align="right"><p class="col-md-8 col-xs-12 center copyright">Copyright © 2021 . All rights reserved. Design by 冷凍豆花大王</p></td>
		</tr>
		</table>
	</body>
</html>
