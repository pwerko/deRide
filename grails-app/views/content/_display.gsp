<article class="article">
	<h1 style="color: #262626;display: block;font-size: 20px;font-weight: bold;margin: 0 0 15px;border-bottom: 1px solid #DDDDDD;margin-bottom: 10px !important;padding-bottom: 10px;">${content?.title}</h1>
	<div style="float: left; width: 728px; height: 15px;background-color:#DFDFDF;margin-top: 5px;"></div>
	<div style="float: right; width: 235px; height: 780px;background-color:#DFDFDF;margin-top: 5px;"></div>
	<div class="leaderboard" style="float:left;"></div>
	<div class="article-image" style="width: 300px; margin-top: 10px; float: left; height: 300px;text-align: center;background-color:#DFDFDF;">
		<bi:hasImage bean="${content}">
		    <bi:img size="large" bean="${content}" alt="${content?.imageAlt}"/>
		</bi:hasImage>
	</div>
	<div class="paragraph"style="float: left;padding: 5px;height: 300px; margin-left: 5px; margin-top: 10px; width: 423px;background-color:#DFDFDF;" title="">
		<p style="text-align:justify;">
			${content?.introText}
		</p>
	</div>
	<div class="banner" style="float:left;margin-top: 10px;"></div>
	<div style="float:left;width: 255px;height: 60px;background-color:#DFDFDF;margin:10px 0 0 5px;background-color:#DFDFDF;"></div>
	<g:each var="paragraph" in="${content?.paragraphs}" status="i">
		<g:if test="${i == 0}">
			<div class="paragraph" style="float: left;padding: 5px;height: 300px; margin-top: 10px; width: 423px;background-color:#DFDFDF;" title="">
				<h2>${paragraph.headline}</h2>
				<p style="text-align:justify;">
					${paragraph.text}
				</p>
			</div>
			<div style="width: 300px; margin-top: 10px; float: left; height: 300px; margin-left: 5px;background-color:#DFDFDF;">
				<bi:hasImage bean="${paragraph}">
				    <bi:img size="large" bean="${paragraph}" alt="${paragraph.imageAlt}"/>
				</bi:hasImage>
			</div>
			<div style="float:left; width: 255px;height: 60px;background-color:#DFDFDF;margin: 10px 5px 0 0;background-color:#DFDFDF;"></div>
			<div class="banner" style="float:left;margin-top: 10px;"></div>
		</g:if>
		<g:elseif test="${(i % 2) != 0}">
			<div style="width: 300px; margin-top: 10px;float: left; height: 300px;background-color:#DFDFDF;">
				<bi:hasImage bean="${paragraph}">
				    <bi:img size="large" bean="${paragraph}" alt="${paragraph.imageAlt}"/>
				</bi:hasImage>
			</div>
			<div class="paragraph" style="float: left;padding: 5px;height: 300px; margin-top: 10px; width: 423px; margin-left: 5px;background-color:#DFDFDF;" title="">
			<h2>${paragraph.headline}</h2>
				<p style="text-align:justify;">
					${paragraph.text}
				</p>
			</div>
		</g:elseif>
		<g:else>
			<div class="paragraph" style="float: left;padding: 5px;height: 300px; margin-top: 10px; width: 423px;background-color:#DFDFDF;" title="">
			<h2>${paragraph.headline}</h2>
				<p style="text-align:justify;">
					${paragraph.text}
				</p>
			</div>
			<div style="width: 300px; margin-top: 10px; float: left; height: 300px; margin-left: 5px;background-color:#DFDFDF;">
				<bi:hasImage bean="${paragraph}">
				    <bi:img size="large" bean="${paragraph}" alt="${paragraph.imageAlt}"/>
				</bi:hasImage>
			</div>
		</g:else>
	</g:each>
	<div style="float: left; width: 728px; height: 15px;background-color:#DFDFDF;margin-top: 10px;"></div>
</article>
