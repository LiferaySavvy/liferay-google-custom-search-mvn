<%@ include file="/init.jsp" %>
<div class="input-group search-bar-scope">
	<div class="input-group-item search-bar-keywords-input-wrapper">
	   <input class="form-control input-group-inset input-group-inset-after search-bar-keywords-input" id="search-input"  placeholder="search" title="search" type="text" value="LiferaySavvy" />
		<div class="input-group-inset-item input-group-inset-item-after search-bar-search-button-wrapper">
			<clay:button ariaLabel='asasd' elementClasses="search-bar-search-button" icon="search" style="unstyled" id="lsSearch" type="submit"/>
		</div>
	</div>
</div>
<div id="google-search-results"></div>
<portlet:renderURL var="homeURL">
</portlet:renderURL>
<br/>
<br/>
<clay:link
	href="<%= homeURL %>"
	label="Home"
/>
<script async src="https://cse.google.com/cse.js?cx=016080267653024587377:dlk531h1uoe"></script>
<script>
document.getElementById("lsSearch").addEventListener("click", function(event){
  event.preventDefault();
  searchSite();
});

function searchSite() {

     document.getElementById("google-search-results").innerHTML = "";
     
	   google.search.cse.element.render({
         div: "google-search-results",
         tag: 'searchresults-only',
         gname: 'google-results-gname'
     });
	   var element = google.search.cse.element.getElement('google-results-gname');
	   var query = document.getElementById("search-input").value
     element.execute(query);		
   }
</script>