<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>sample-1 ${title}</title>
</head>
<body>
	<h1>正常情况</h1>
	<#if data.isRemembered >
		<p class="animal">${data.animal}</p>
		<p class="fish">${data.fish}</p>
		<p class="color">${data.color}</p>
	</#if>
	<h1>if里的字段为空时的容错处理</h1>
	<#if !data.isNotExisted??>
		<p class="animal">${data.animal}</p>
		<p class="fish">${data.fish}</p>
		<p class="color">${data.color}</p>
	</#if>
</body>
</html>