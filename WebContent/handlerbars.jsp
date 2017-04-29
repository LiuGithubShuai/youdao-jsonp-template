<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>

<button id="btn">click</button>
<div id="result"></div>

<script src="/static/js/jquery-1.11.3.min.js"></script>
<script src="/static/js/handlebars-v4.0.5.js"></script>

<script id="temp1" type="text/handlebars">
    <div class="entry">
		<h1>{{title}}</h1>
		<div class="body">
			{{{body}}}
		</div>
		<ul>
			{{#each datas}}
				<li>{{name}}</li>
			{{/each}}
		</ul>
		{{#if vip}}
			<div>welcom,VIP!</div>
		{{/if}}
	</div>
</script>

<script>
	$(function(){
		
		$("#btn").click(function(){
			var source = $("#temp1").html();
			var template = Handlebars.compile(source);

			var data = {
				title:"模板的使用方式",
				body:"<span style='color:red'>按照这种套路编写</span>",
				datas:[
				    {name:"jack"},
				    {name:"tom"},
				    {name:"relex"}
				],
				vip:true
			};
			
			var html = template(data);
			
			$(html).appendTo($("#result"));
		});
		
	});

</script>




</body>
</html>