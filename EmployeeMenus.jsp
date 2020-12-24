<head>
<link href="static/css/opd.css" rel="stylesheet" type="text/css"/>

</head>
<div class="nav-side-menu">
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
        <div class="menu-list">
            <ul id="menu-content" class="menu-content">
			<li data-toggle="collapse" data-target="#products"
				class="collapsed active"><a href="#"><i
					class="fa fa-user fa-lg"></i>Doctor<span
					class="arrow"></span></a>
				<ul class="sub-menu collapse" id="products">
					<li><a href="${pageContext.request.contextPath}/DOCTOR">Doctor</a></li>
			
				</ul></li>
				<li data-toggle="collapse" data-target="#opd"
				class="collapsed active"><a href="#"><i
					class="fa fa-user fa-lg"></i> Staff <span
					class="arrow"></span></a>

				<ul class="sub-menu collapse" id="opd">
						<li><a href="${pageContext.request.contextPath}/STAFF">Staff</a>
				</ul></li>
		</ul>
     </div>
</div>