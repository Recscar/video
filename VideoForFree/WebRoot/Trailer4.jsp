<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>VideoForFree</title>
		<link href="./favicon.ico" rel="shortcut icon" />
		<meta name="author" content="fly">
		<meta name="keywords" content="11111">
		<meta name="description" content="22222">

		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<script language="javascript" src="./images/jquery.js"></script>
		<script src="./images/jquery-1.7.1.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="./js/gotop.js"></script>
		<link href="./images/style.css" rel="stylesheet">
		<link href="./images/newcommons.css" rel="stylesheet" type="text/css">
        <style type="text/css">
            <!--
            .STYLE1 {
                font-size: 14px;
                font-weight: bold;
            }
            -->
        </style>
    </head>
    <body>



        <div class="centers" ><!--接口自行修改-->
            <br/><br/><br/><br/><br/>
            <div id="ckplays">
                <embed src="http://player.youku.com/player.php/sid/XMjc1NTI2MzE4NA==/v.swf" allowfullscreen="true" quality="high" width="720" height="600" align="middle" allowscriptacess="always" type="application/x-shockwave-flash">
            </div> 
            <div class="tips">
                <div id="clear" class="height20"></div>
                <strong>现已支持以下网站视频播放：</strong>

                <div class="logos_lists">




                    <div class="wait">
                        <p <dl>
                            <dt><a href="http://www.youku.com/" target="_blank"><img src="./2/youkulogo.png"  /></a></dt>
<br />
								<br />
								<br />
                        </dl>


                        <p <span><b>声明：本站所有接口仅提供本地测试使用，请勿用于任何商业用途，否则后果自负。若无意中侵犯到您的版权利益,你来打我啊！</b></span> 

                    </div>

                </div>

                <script type="text/javascript">
                    players();
                    $("#doplayers").bind("click", function() {
                    players()
                    });

                    function players() {
                    var a = $('#url').val();
                    if ($('#url').val() == "") {
                    alert('请输入视频网站网址！');
                    $('#url').focus();
                    return (false)
                    }
                    }
                    var jiekou = ""
                    function jiexi(){
                    var url = document.getElementById("url").value;
                    var dizhi=""

                    if(url.indexOf("://")==-1){
                    url = "http://"+document.getElementById("url").value;
                    }






                    if(jiekou==""){
                    document.getElementById("jiekou").src = "https://api.47ks.com/webcloud/?v=" + url;
                    }else{
                    document.getElementById("jiekou").src = jiekou + url;
                    }
                    }

                    function xuanzejiekou(v){
                    var url = document.getElementById("url").value;
                    if(url==""){
                    alert('请输入视频网站网址！');
                    }else{
                    jiekou = v.value
                    }
                    }
                </script>

</body>
</html>
