<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>

	<button id="btn">jsonp</button>
	
	
	<script src="/static/js/jquery-1.11.3.min.js"></script>
	
	<script>
	
		$(function(){
			
			
			function callback(user){
				alert("hello,"+user.username);
			}
			
			$("#btn").click(function(){
				
				$.getJSON("/jsonp?method=?").done(function(data){
					alert(data.username+"——>"+data.address);
				}).error(function(){
					alert("服务器异常");
				});
				
			});
			
			
		});
	
	</script>

</body>
</html>