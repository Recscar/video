<%@ page language="java" import="java.util.*" contentType="text/html;charest=utf-8" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>VideoForFree</title>
		<meta charset="utf-8">
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <style>

        input{
            border:none;
            outline: none;
        }
        button{
            border:none;
            outline: none;
        }
        .row button{
            background: #DB002C;
            color: white;
            border: none;
            width: 300px;
            padding: 14px 0;
            font-size: 20px;
            cursor: pointer;
            border-radius: 2px;
        }
    </style>
    <style type="text/css">
        .icon {
            width: 1em; height: 1em;
            vertical-align: -0.15em;
            overflow: hidden;
        }

    </style>
             
       <script type="text/javascript">    
            function reg(form){    
                if(form.email.value == ""){    
                    alert("用户不能为空！");    
                    return false;    
                }    
                if(form.password.value == ""){    
                    alert("密码不能为空！");    
                    return false;    
                }    
                if(form.passwordcomfirm.value == ""){    
                    alert("确认密码不能为空！");    
                    return false;    
                }    
                if(form.password.value != form.passwordcomfirm.value){    
                    alert("两次密码输入不一致！");    
                    return false;    
                }    
                
            }    
        </script> 
             
                
</head>

<body text-align:center;>
	 <div class="main">
		<div class="login-form">
			<h1>Sign up</h1>
					<div class="head">
						<img src="images/user.png" alt=""/>
					</div>
                        
        <form id="sign_up" action="servlet/SignUp" method="post" onsubmit="return reg(this);">
        <div class="row" text-align:center;>
            <center><label>
                账&nbsp&nbsp号<input type="text" name="email" value="" style="text-align:center" onfocus="this.value = '';" onblur="if (this.value ==='') {this.value = '';}">
            </label></center>
            
        </div>

        <div class="row">
            <center><label>
            密&nbsp&nbsp码<input type="password" name="password" value="" style="text-align:center" onfocus="this.value = '';" onblur="if (this.value ==='') {this.value = '';}"></label></center>
           
        </div>

        <div class="row">
            <center><label>确认密码<input type="password" name="passwordcomfirm" value="" style="text-align:center" onfocus="this.value = '';" onblur="if (this.value ==='') {this.value = '';}"></label></center>
        </div>

        <div class="row">
						<center><input type="submit" onclick="myFunction()" value="注册"></center>
					</div>
    </form>
			</div> 
					</div>


</body>
</html>
