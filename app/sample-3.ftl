<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>sample-3 ${title}</title>
</head>
<body>
	<#assign x="Hello ${animal!''}!">
	<div id="iloveShanghai">${x}</div>
	<#assign y>
		<#list ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期天"] as n>
			${n}
		</#list>
	</#assign>
	<div id="iloveguangzhou">${y}</div>
</body>
</html>