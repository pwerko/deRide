<div id="adSense1" class="menu"></div>
<div id="mainSearch" class="inner-component" title="">
	<g:form name="simple_search" controller="ride" action="buscar">
		<div class="from">
	        <g:field type="text" id="simple_search_start" name="start" placeholder="Origen" class="search-from complete-radius" autocomplete="off" />
	        <g:field id="simple_search_start_lat" type="hidden" name="start_latitude" value="" />
			<g:field id="simple_search_start_lng" type="hidden" name="start_longitude" value="" />
	    </div>
	    <div class="to">
	        <g:field type="text" id="simple_search_destination" name="destination" placeholder="Destino" class="search-to complete-radius" autocomplete="off" />
	        <g:field id="simple_search_destination_lat" type="hidden" name="destination_latitude" value="" />
			<g:field id="simple_search_destination_lon" type="hidden" name="destination_longitude" value="" />
	    </div>
	    <div class="date">
	        <g:field type="text" id="simple_search_date" name="varbal_date" placeholder="Fecha" class="search-date" data-bind="date-picker"/>
	        <g:field id="search_date" type="hidden" name="date" value="" />
	    </div>
	    <g:actionSubmit class="home-button-search" value="Buscar"/>
	</g:form>
</div>
<div id="howItWorks" class="inner-component" title=""></div>
<div id="topDestinations" class="inner-component" style="" title="">
	<span style="font-size: 12px;">Guadalajara</span>
	<span style="font-size: 13px;">México DF</span>
	<span style="font-size: 14px;">Vallarta</span>
	<span style="font-size: 10px;">Aguscalientes</span>
	<span style="font-size: 11px;">Puebla</span>
	<span style="font-size: 12px;">Monterrey</span>
	<span style="font-size: 13px;">Cancún</span>
	<span style="font-size: 14px;">Mérida</span>
	<span style="font-size: 10px;">SLP</span>
	<span style="font-size: 11px;">Querétaro</span>
	<span style="font-size: 13px;">Los Mochis</span>
	<span style="font-size: 14px;">Colima</span>
	<span style="font-size: 10px;">Maztlán</span>
	<span style="font-size: 11px;">Hermosillo</span>
	<span style="font-size: 12px;">Ensenada</span>
	<span style="font-size: 13px;">Tijuana</span>
	<span style="font-size: 14px;">La Paz</span>
	<span style="font-size: 10px;">Toluca</span>
	<span style="font-size: 11px;">San Jose Del Cabo</span>
	<span style="font-size: 12px;">Campeche</span>
	<span style="font-size: 10px;">Tepic</span>
	<span style="font-size: 14px;">Mochis</span>
	<span style="font-size: 11px;">Morelia</span>
	<span style="font-size: 12px;">Tampico</span>
	<span style="font-size: 13px;">Hermosillo</span>
	<span style="font-size: 12px;">Ensenada</span>
	<span style="font-size: 10px;">Tijuana</span>
	<span style="font-size: 14px;">Toluca</span>
	<span style="font-size: 12px;">Cd Juárez</span>
	<span style="font-size: 11px;">Reynosa</span>
	<span style="font-size: 13px;">Coahuila</span>
	<span style="font-size: 12px;">Torreón</span>
	<span style="font-size: 14px;">Acapulco</span>
	<span style="font-size: 11px;">Ensenada</span>
	<span style="font-size: 12px;">Oaxaca</span>
	<span style="font-size: 10px;">Puerto Escondido</span>
	<span style="font-size: 12px;">Tuxtla Gutierrez</span>
	<span style="font-size: 11px;">Mazatlán</span>
	<span style="font-size: 12px;">Palenque</span>
	<span style="font-size: 13px;">Saltillo</span>
	<span style="font-size: 12px;">Laredo</span>
	<span style="font-size: 11px;">Veracruz</span>
	<span style="font-size: 14px;">Celaya</span>
	<span style="font-size: 10px;">Jalapa</span>
	<span style="font-size: 12px;">Campeche</span>
	<span style="font-size: 14px;">Playa del Carmen</span>
	<span style="font-size: 12px;">Culiacán </span>
	<span style="font-size: 11px;">Mexicali</span>
	<span style="font-size: 10px;">Matamoros</span>
	<span style="font-size: 12px;">Durango</span>
	<span style="font-size: 13px;">Ixtapa</span>
	<span style="font-size: 14px;">Celaya</span>
	<span style="font-size: 12px;">Xalapa</span>
</div>
<div class="publishRide">
	<g:link controller="ride" action="publicar">
		<div class="publish-center">
	        <h2><g:message code="com.deride.ride.offer.label"/></h2>
	    </div>
	    <div class="publish-right"><g:img alt="right-arrow" dir="images" file="right-publish.png"/></div>
	</g:link>
</div>
<div id="adSense2" class="banner" style="margin-right: 11px;float: right;" title=""></div>
<div id="content_left">
	<div class="box_grey clearfix">
	    <div id="homepage_box_1" class="homepage_box">
	    	<h2><g:message code="com.deride.ride.latest.label"/></h2>
			<div class="box_content_table clearfix" style="margin-bottom:10px;">
		    	<div id="new_lifts_homepage">
		    		<table id="homepage__latest_lifts" class="lift_list">
					    <thead>
					        <tr>
					            <th><g:message code="com.deride.ridetype.label"/></th>
					            <th style="text-align: left;"><g:message code="com.deride.ride.origin.label"/></th>
					            <th style="text-align: left;"><g:message code="com.deride.ride.destination.label"/></th>
					            <th><g:message code="com.deride.ride.date.label"/></th>
					            <th><g:message code="com.deride.ride.date_created.label"/></th>
					        </tr>
					    </thead>
					    <tbody>
					    	<g:each status="i" var="ride" in="${rides}">
					    		<tr class="${ (i % 2) == 0 ? 'even' : 'odd'} link_hover">
					                <td><g:link controller="ride" action="detalles" id="${ride.id}"><g:message code="${ride.type.getCode()}"/></g:link></td>
					                <td style="text-align: left;">${ride.origin}</td>
					                <td style="text-align: left;">${ride.destination}</td>
					                <td><g:formatDate format="dd/MM/yyyy" date="${ride.date}"/></td>
					                <td style="font-size:0.8em"><prettytime:display date="${ride.dateCreated}" capitalize="true"/></td>
					        	</tr>
					    	</g:each>
					    </tbody>
					</table>
				</div>
	    		<ul class="action_bar clearfix" style="float: right;margin-top:10px">
	        		<li class="noimg">
	        			<g:if test="${rides.size() > 0}"><g:link action="ultimos" controller="ride" class="button secondary small" style="border: none;">más viajes...</g:link></g:if>
	        		</li>
	    		</ul>
			</div>
		</div>
    </div>
</div>
<div id="adSense3" class="verticalBanner" title=""></div>
<div class="wpr">
	<a class="social" id="google" href="#" title="">
		<div class="icon"></div>
		<div class="shutter_frame">
			<div class="shutter">
				<div class="number">0</div>
				<div class="bar"></div>
				<div class="text">+1</div>
			</div>
		</div>
	</a>
	<a class="social" id="facebook" href="#" title="">
		<div class="icon"></div>
		<div class="shutter_frame">
			<div class="shutter">
				<div class="number">0</div>
				<div class="bar"></div>
				<div class="text">Like</div>
			</div>
		</div>
	</a>
	<a class="social" id="twitter" href="#" title="">
		<div class="icon"></div>
		<div class="shutter_frame">
			<div class="shutter">
				<div class="number">0</div>
				<div class="bar"></div>
				<div class="text">Like</div>
			</div>
		</div>
	</a>
</div>
