<%@ page language="java" import="java.util.*"
	contentType="text/html;charest=utf-8" pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<script language="javascript" src="../images/jquery.js"></script>
		<script src="../images/jquery-1.7.1.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="../js/gotop.js"></script>
		<link href="../images/style.css" rel="stylesheet">
		<link href="../images/newcommons.css" rel="stylesheet" type="text/css">
		
		
		<style type="text/css">
			
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
-->
	
.nav {

	height: 50px;
	background-color: black;
	margin: 0 auto;
}

.nav ul {
	line-height: 50px;
	list-style: none;
	padding: 0;
	margin: 0;
	position: relative;
}

.nav>ul li {
	float: left;
	text-align: center;
}

.nav>ul>li a {
	display: block;
	text-decoration: none;
	padding: 0 20px;
	color: #fff;
}
.nav>ul>li h1 {
	display: block;
	text-decoration: none;
	padding: 0 20px;
	color: #fff;
}
.nav>ul>li>a:hover {
	color: #fff;
	background-color: #5F5F5F;
}

.nav>ul>li a:hover+ul {
	display: block;
}

.nav>ul>li ul:hover {
	display: block;
}
	

</style>

		<!--------------------------------demo-->
<link rel="stylesheet" href="../style.css">
		<!--------------------------------->
	</head>
	<body>
<div class="nav" >
			<ul>
                            <li style="color: #fff;font-size:17px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;VideoForFree&nbsp;&nbsp;&nbsp;</li>
				<li>
					<a style="font-size:17px;" href="http://123.207.89.70/VideoForFree/home.jsp">home</a>
				</li>
				<li>
					<a style="font-size:17px;" href="http://123.207.89.70/VideoForFree/movie.jsp">movie</a>
				</li>
			</ul>
		</div>    


		<div class="centers">
			<!--�ӿ������޸�-->
			<br />
			<br />
			<br />
			<br />
			<br />
			<div id="cdl">
				<select style="border: 0px; font-size: 18px"
					onChange="xuanzejiekou(this)" id="op">
					<option value="http://p2.api.47ks.com/webcloud/?v=" id="o1">
						ͨ��vip�ӿ�
					</option>
					<option value="http://000o.cc/jx/ty.php?url=" id="o2">
						�ȶ��ӿ�
					</option>

				</select>

				<div class="searchs">
					<div class="from">
						<input name="url" id="url" type="text" class="text"
							value="http://v.youku.com/v_show/id_XMTI4NTY3MTY1Mg==.html"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'http://v.youku.com/v_show/id_XMTI4NTY3MTY1Mg==.html';}">

						<input name="doplayers" type="button" id="doplayers"
							class="button" onClick="jiexi()" value="��������">
					</div>
					<div id="clear"></div>
				</div>
			</div>
			<div class="screen_container"></div>
			<div id="ckplays">
				<iframe id="jiekou" name="jiekou" src="../images/ty.html"
					width="100%" height="550px">


				</iframe>
			</div>
			<!--   < --------------------------demo-->
<div id="cdl">
<div class="searchs">
 <div class="from">
        <input id="screenBulletText" type="text" class="textt" placeholder="���ڴ����뵯Ļ���ݣ�"/>
        <button class="send">����</button>
        <button class="clear">�ر�</button>

    </div>
    </div>
</div>
			<!--<--------------------------------------->
			<div class="tips">
				<div id="clear" class="height20"></div>
				<strong>����֧��������վ��Ƶ���ţ�</strong>

				<div class="logos_lists">

					<div class="wait">
						<p <dl>
								<dt>
									<a href="http://www.youku.com/" target="_blank"><img
											src="../2/youkulogo.png" /> </a>
								</dt>

								<br />
								<br />
								<br />
							</dl>
						<p
						<span><b>��������վ���нӿڽ��ṩ���ز���ʹ�ã����������κ���ҵ��;���������Ը������������ַ������İ�Ȩ����,�������Ұ���</b>
						</span>

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
        alert('��������Ƶ��վ��ַ��');
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
		alert('��������Ƶ��վ��ַ��');
	}else{
		jiekou = v.value
	}
}
</script>
				<!---------------------------demo-->
<script type="text/javascript" src="../main.js"></script>
				<!-------------------------------->

				<div id="code"></div>
				<div id="code_img"></div>
				<a id="gotop" href="javascript:void(0)"></a>

			</div>


			</script>

			</script>
	</body>
</html>
