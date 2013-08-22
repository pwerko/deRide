<article class="article">
	<h1>${content?.title}</h1>
	<div style="float: left; width: 728px; height: 15px;background-color:#DFDFDF;margin-top: 5px;"></div>
	<div style="float: right; width: 235px; height: 780px;background-color:#DFDFDF;margin-top: 5px;"></div>
	<div class="leaderboard" style="float:left;"></div>
	<div class="article-image" style="">
		<bi:hasImage bean="${content}">
		    <bi:img size="large" bean="${content}" alt="${content?.imageAlt}"/>
		</bi:hasImage>
	</div>
	<div class="paragraph" title="">
		<p style="text-align:justify;">
			${content?.introText}
		</p>
	</div>
	<div class="banner" style="float:left;margin-top: 10px;"></div>
	<div style="float:left;width: 255px;height: 60px;background-color:#DFDFDF;margin:10px 0 0 5px;background-color:#DFDFDF;"></div>
	<g:each var="paragraph" in="${content?.paragraphs}" status="i">
		<g:if test="${i == 0}">
			<div class="paragraph" style="margin-left: 0;" title="">
				<h2>${paragraph.headline}</h2>
				<p style="text-align:justify;">
					${paragraph.text}
				</p>
			</div>
			<div class="blockImage" style="margin-left: 5px;">
				<bi:hasImage bean="${paragraph}">
				    <bi:img size="large" bean="${paragraph}" alt="${paragraph.imageAlt}"/>
				</bi:hasImage>
			</div>
			<div style="float:left; width: 255px;height: 60px;background-color:#DFDFDF;margin: 10px 5px 0 0;background-color:#DFDFDF;"></div>
			<div class="banner" style="float:left;margin-top: 10px;"></div>
		</g:if>
		<g:elseif test="${(i % 2) != 0}">
			<div class="blockImage" style="margin-left: 0;">
				<bi:hasImage bean="${paragraph}">
				    <bi:img size="large" bean="${paragraph}" alt="${paragraph.imageAlt}"/>
				</bi:hasImage>
			</div>
			<div class="paragraph" style="margin-left: 5px;" title="">
			<h2>${paragraph.headline}</h2>
				<p style="text-align:justify;">
					${paragraph.text}
				</p>
			</div>
		</g:elseif>
		<g:else>
			<div class="paragraph" style="margin-left: 0;" title="">
			<h2>${paragraph.headline}</h2>
				<p style="text-align:justify;">
					${paragraph.text}
				</p>
			</div>
			<div class="blockImage" style="margin-left: 5px;">
				<bi:hasImage bean="${paragraph}">
				    <bi:img size="large" bean="${paragraph}" alt="${paragraph.imageAlt}"/>
				</bi:hasImage>
			</div>
		</g:else>
	</g:each>
	<div style="float: left; width: 728px; height: 15px;background-color:#DFDFDF;margin-top: 10px;margin-bottom: 10px;"></div>
</article>
