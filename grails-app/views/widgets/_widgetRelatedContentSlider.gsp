<r:require modules="carousel"/>

<r:script>
$("#related-article-list").carouFredSel({
  circular: true,
  infinite: false,
  auto  : false,
  height: 206,
  prev  : {
    button  : "#related-article-list_prev",
    key   : "left"
  },
  next  : {
    button  : "#related-article-list_next",
    key   : "right"
  },
  pagination  : "#article_pag"
});
</r:script>

 <!-- Related Articles -->
<g:if test="${relatedContentList}">
  <div class="relatedContentSlider content-widget">
     <g:if test="${widgetTitle}">
        <span class="titleWidget">${widgetTitle}</span>
      </g:if>
    <div class="image-carousel">
      <ul id="related-article-list">

        <g:each in="${relatedContentList}" var="content" status="i">

            <g:if test="${i < contentSliderMax}">
                <tmpl:/shared/widgets/widgetRelatedContent i="${i}" content="${content}"/>
             </g:if>
        </g:each>

      </ul>

      <div class="carousel-clearfix"></div>
      <a class="prev" id="related-article-list_prev" href="#"><span>prev</span></a>
      <a class="next" id="related-article-list_next" href="#"><span>next</span></a>
    </div>

  </div>
</g:if>
