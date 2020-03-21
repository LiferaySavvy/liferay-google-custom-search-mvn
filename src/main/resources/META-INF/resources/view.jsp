<%@ include file="/init.jsp" %>

<portlet:renderURL var="renderLSCustomSearch">
	<portlet:param name="mvcRenderCommandName" value="/ls/liferaysavvysearch" />
</portlet:renderURL>
<portlet:renderURL var="renderDefaultCustomSearch">
	<portlet:param name="mvcRenderCommandName" value="/ls/googlesearch" />
</portlet:renderURL>
<h1>Welcome to Liferay Savvy Google Custom Search Widget</h1>
<clay:link
	href="<%= renderLSCustomSearch %>"
	label="Liferay Savvy Search"
/>
<br/>
<br/>
<clay:link
	href="<%= renderDefaultCustomSearch %>"
	label="Google Search"
/>