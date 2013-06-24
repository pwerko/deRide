<g:if test="${socialMedia}">
<li class="widget followUs module-bordered-container">
	<div class="module-bordered pam" style="padding-right:8px!important">
	  <h5 class="widget-section-title mbm"><g:message code="follow.us" default="Síguenos!"/></h5>

	  <div class="share">
	    <g:each in="${socialMedia}" var="socialInstance">
	      <a href="${socialInstance?.link}">
	        <i class="icon-share-${socialInstance?.identifier}"></i>
	      </a>
	    </g:each>
	  </div>
	</div>
</li>
</g:if>