<%@ page import="com.deride.Paragraph" %>



<div class="fieldcontain ${hasErrors(bean: paragraphInstance, field: 'headline', 'error')} ">
	<label for="headline">
		<g:message code="paragraph.headline.label" default="Headline" />
		
	</label>
	<g:textField name="headline" value="${paragraphInstance?.headline}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paragraphInstance, field: 'text', 'error')} ">
	<label for="text">
		<g:message code="paragraph.text.label" default="Text" />
		
	</label>
	<g:textField name="text" value="${paragraphInstance?.text}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paragraphInstance, field: 'imageAlt', 'error')} ">
	<label for="imageAlt">
		<g:message code="paragraph.imageAlt.label" default="Image Alt" />
		
	</label>
	<g:textField name="imageAlt" value="${paragraphInstance?.imageAlt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paragraphInstance, field: 'biImage', 'error')} ">
	<label for="biImage">
		<g:message code="paragraph.biImage.label" default="Bi Image" />
		
	</label>
	<g:select name="biImage" from="${pl.burningice.plugins.image.ast.Image.list()}" multiple="multiple" optionKey="id" size="5" value="${paragraphInstance?.biImage*.id}" class="many-to-many"/>
</div>

