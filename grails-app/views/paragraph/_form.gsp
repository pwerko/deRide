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
	<g:textArea name="text" rows="5" cols="80" value="${paragraphInstance?.text}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paragraphInstance, field: 'imageAlt', 'error')} ">
	<label for="imageAlt">
		<g:message code="paragraph.imageAlt.label" default="Image Alt" />

	</label>
	<g:textField name="imageAlt" value="${paragraphInstance?.imageAlt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paragraphInstance, field: 'biImage', 'error')} ">
	<bi:hasImage bean="${paragraphInstance}">
	    <bi:img size="large" bean="${paragraphInstance}" />
	</bi:hasImage>
	<label for="image">
		<g:message code="paragraph.image.label" default="Image" />
	</label>
	<g:field name="image" type="file"/>
</div>

