<%@ include file="/init.jsp" %>
<div class="gcse-searchbox"></div>
<div class="gcse-searchresults"></div>
<script async src="https://cse.google.com/cse.js?cx=000888210889775888983:y9tkcjel090"></script>
<script>
myWebResultsRenderedCallback = function(name, q, promos, results) {
    for (const div of promos.concat(results)) {
      const innerDiv = document.createElement('div');
      innerDiv.appendChild(document.createTextNode('Keep: '));
      const checkBox = document.createElement('input');
      checkBox.type = 'checkbox';
      checkBox.name = 'save';
      innerDiv.appendChild(checkBox);
      div.insertAdjacentElement('afterbegin', innerDiv);
    }
  };
window.__gcse || (window.__gcse = {});
window.__gcse.searchCallbacks = {
  web: {
    rendered: 'myWebResultsRenderedCallback',
  },
};
</script>

<portlet:renderURL var="homeURL">
</portlet:renderURL>
<br/>
<br/>
<clay:link
	href="<%= homeURL %>"
	label="Home"
/>