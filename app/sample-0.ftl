<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>sample-0 ${title}</title>
</head>
<body>
	<h1 class="title-1">正常解析情况</h1>
	<ul class="list-people">
		<#list items as listPeople>
			<li>${listPeople.id}</li>
			<li>${listPeople.lastName}</li>
			<li>${listPeople.firstName}</li>
			<li>${listPeople.phone}</li>
		</#list>
	</ul>
	<h1 class="title-1">变量值为空的容错情况</h1>
	<ul class="list-people">
		<#list items as listPeople>
			<li>${listPeople.id}</li>
			<li>${listPeople.lastName}</li>
			<li>${listPeople.firstname!''}</li>
			<li>${listPeople.phone}</li>
		</#list>
	</ul>
	<h1 class="title-1">期间变量值不正确的情况</h1>
	<p class="notes">
		如果变量值不存在，则freemarker的解析会到此结束, 如下方的例子
	</p>
	<ul class="list-people">
		<#list items as listPeople>
			<li>${listPeople.id}</li>
			<li>${listPeople.lastName}</li>
			<li>变量值不正确：${listPeople.firstname}</li>
			<li>${listPeople.phone}</li>
		</#list>
	</ul>
</body>
</html>