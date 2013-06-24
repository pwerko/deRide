<div class="article-share-container content-widget">
    <tmpl:/shared/sharethisButtons stTitle="${contentInstance?.title}" stUrl="${canonicalUrl?.trim()}"/>
    <dealies:shareButtons floatDirection='left' stTitle="${contentInstance?.title}" stUrl="${canonicalUrl?.trim()}" />
    %{--<a href="#comments-anchor" class="number-comments newLink">${contentInstance?.getApprovedComments()} <g:message code="content.number.comments" default="Comments"/></a>--}%

</div>
