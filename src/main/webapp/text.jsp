<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>report</title>
    <style type="text/css">
        .Content-Main{
            max-width: 500px;
            margin: auto;
            margin-top: 50px;
            padding: 20px 30px 20px 30px;
            font: 12px "Helvetica Neue", Helvetica, Arial, sans-serif;
            text-shadow: 1px 1px 1px #FFF;
            border: 1px solid #DDD;
            border-radius: 5px;
            color: #888;
            background: #FFF;
			text-align: center;
        }
        .Content-Main h1{
            display: block;
            padding: 0px 0px 10px 40px;
            margin: -10px -30px 30px -30px;
            font: 25px "Helvetica Neue", Helvetica, Arial, sans-serif;
            border-bottom: 1px solid #DADADA;
            color: #888;
        }
        .Content-Main h1>span{
            display: block;
            font-size: 11px;
        }
        .Content-Main label{
            display: block;
            margin: 0px 0px 5px;
        }
        .Content-Main label>span{
            float: left;
            width: 20%;
            padding-right: 10px;
            margin-top: 10px;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-weight: bold;
            text-align: right;
            color: #333;
        }
        .Content-Main input[type="text"],.Content-Main textarea{
            width: 70%;
            height: 20px;
            padding: 5px 0px 5px 5px;
            margin-bottom: 16px;
            margin-right: 6px;
            margin-top: 2px;
            line-height: 15px;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .select1{
            width: 71%;
            height: 35px;
            margin-bottom: 16px;
            margin-right: 6px;
            margin-top: 2px;
            line-height: 15px;
            padding: 5px 0px 5px 5px;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .select2{
            width: 13%;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .Content-Main textarea{
			
            width: 70%;
            height: 200px;
            padding: 50px 50px 50px 50px;
			
        }
        .button{
            padding: 10px 25px 10px 25px;
            margin-left: 111px;
            border-radius: 4px;
            border:1px solid #CCC;
            background: #FFF;
            color: #333;
        }
        .button:hover{
            color: #333;
            background-color: #EBEBEB;
            border-color: #ADADAD;
        }
		.input-wrapper input{
			background: none;
			outline: none;
			border: 0px;
			border-bottom: 1px solid #000;
		}
		
		.cube-upload-btn{
				float: left;
				margin: 0 10px 10px 0;
				position: relative;
				overflow: hidden;
				left: 70px;
				bottom: -300px;
			}
			.cube-upload-btn-def{
				width: 80px;
				height: 80px;
				box-sizing: border-box;
				background-color:#fff ;
				box-shadow: 0 0 6px 2px rgba(0,0,0,.08);
				border-radius: 2px;
				border:1px solid #AAAAAA;
				position: relative;
			}
			.cube-upload-btn-def>i:after,.cube-upload-btn-def>i:before{
				content: "";
				position: absolute;
				top: 50%;
				left: 50%;
				width: 20px;
				height: 2px;
				-webkit-transform: translate(-50%,-50%);
				transform: translate(-50%,-50%);
				background-color: #666;
			}
			.cube-upload-btn-def>i:after{
				transform: translate(-50%,-50%) rotate(90deg);
			}
			.cube-upload-input{
				position: absolute;
				top: 0;
				left: 0;
				right: 0;
				bottom: 0;
				width: 100%;
				font-size: 1px;
				opacity: 0;
				border-style:solid;
		border-width:5px;s
				
			}
    </style>
</head>
<body>
<div class="Content-Main">
    <div class="Content-Main1">
        <h1>问题反馈</h1>
    </div>
	<div style="display: flex;">
	<div style="padding-left:150px;">
		 <input type="button" class="button" value="意见反馈"  style="margin: 0 auto; display: block;">
    </div>
	<div style="margin-left: 0px;">
		 <input type="button" class="button" value="客服回复"  style="margin: 0 auto; display: block;">
	</div>
	</div>
    <form  name="myform" action="" method="post" class="form-report">
       
        <label>
             <div class="cube-upload-btn">
             	<div class="cube-upload-btn-def">
             		<i></i>
             	</div>
             	<input type="file" class="cube-upload-input" multiple="multiple" accept="image/*" />
             </div>
            <textarea id="mesaage" name="message" placeholder="Your can tell me" ></textarea>
        </label>
        <label>
			
			<input type="checkbox" name="box" id="box" value="1" onclick="check()" >希望与ebemate工程师联系<br> 
			<label for="tel">联系电话：<input type="text" name="aa" id="text" disabled="disabled" placeholder="15625504640"></label> 
            <input type="button" class="button" value="提交	">
        </label>
		</form>
</div>
<script type="text/javascript"> 
function check() 
{ 
if(myform.box.checked){ 
document.getElementById("text").disabled=false; 
} else{ 
document.getElementById("text").disabled=true; 
 
} 
}
</script>
</body>
</html>