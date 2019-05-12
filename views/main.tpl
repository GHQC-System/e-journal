<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Arise Admin Dashboard" />
		<meta name="keywords" content="Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Themeforest, Bootstrap, C3 Graphs, D3 Graphs, NVD3 Graphs, Admin Skin, Black Admin Dashboard, Grey Admin Dashboard, Dark Admin Dashboard, Simple Admin Dashboard, Simple Admin Theme, Simple Bootstrap Dashboard, Invoice, Tasks, Profile" />
		<meta name="author" content="Ramji" />
		<link rel="shortcut icon" href="/static/img/fav.png">
		<title>Dashboard - Admin Dashboard - Arise Admin Panel - shared on themelock.com</title>

		<!-- Bootstrap CSS -->
		<link href="/static/css/bootstrap.min.css" rel="stylesheet" media="screen" />

		<!-- Main CSS -->
		<link href="/static/css/main.css" rel="stylesheet" media="screen" />

		<!-- Ion Icons -->
		<link href="/static/fonts/icomoon/icomoon.css" rel="stylesheet" />

		<!-- C3 CSS -->
		<link href="/static/css/c3/c3.css" rel="stylesheet" />

		<!-- NVD3 CSS -->
		<link href="/static/css/nvd3/nv.d3.css" rel="stylesheet" />

		<!-- Horizontal bar CSS -->
		<link href="/static/css/horizontal-bar/chart.css" rel="stylesheet" />

		<!-- Calendar Heatmap CSS -->
		<link href="/static/css/heatmap/cal-heatmap.css" rel="stylesheet" />

		<!-- Circliful CSS -->
		<link rel="stylesheet" href="/static/css/circliful/circliful.css" />
<!-- Data Tables -->
		<link rel="stylesheet" href="/static/css/datatables/dataTables.bs.min.css">
		<link rel="stylesheet" href="/static/css/datatables//autoFill.bs.min.css">
		<link rel="stylesheet" href="/static/css/datatables/fixedHeader.bs.css">
		<!-- OdoMeter CSS -->
		<link rel="stylesheet" href="/static/css/odometer.css" />
        <link href="/static/css/users.css" rel="stylesheet" media="screen" />
		<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->

	</head>

	<body>

		<!-- Loading starts -->
		<div class="loading-wrapper">
			<div class="loading">
				<h5>Loading...</h5>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
			</div>
		</div>
		<!-- Loading ends -->

		<!-- Header starts -->
		<header>



			<!-- Header actions starts -->
			<ul id="header-actions" class="clearfix">


				<li class="list-box user-admin hidden-xs dropdown">
					<div class="admin-details">
						<div class="name">E-id - {{.e_id}}</div>
						<div class="designation">{{.fio}}</div>
					</div>
					<a id="drop4" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
						<i class="icon-user"></i>
					</a>
					<ul class="dropdown-menu sm">
						<li class="dropdown-content">



							<a href="/logout">Выход</a>
						</li>
					</ul>
				</li>
				<li>
					<button type="button" id="toggleMenu" class="toggle-menu">
						<i class="collapse-menu-icon"></i>
					</button>
				</li>
			</ul>
			<!-- Header actions ends -->


		</header>
		<!-- Header ends -->

		<!-- Left sidebar start -->
		<div class="vertical-nav vertical-nav-sm">

			<!-- Collapse menu starts -->
			<button class="collapse-menu">
				<i class="icon-menu2"></i>
			</button>
			<!-- Collapse menu ends -->



			<!-- Sidebar menu start -->
			<ul class="menu clearfix">
			{{str2html .actS}}

					<a href="/lk">
						<i class="icon-air-play"></i>
						<span class="menu-item">Список классов</span>
					</a>
				</li>
			<!--	<li>
					<a href="#">
						<i class="icon-lab3"></i>
						<span class="menu-item">Projects</span>
						<span class="down-arrow"></span>
					</a>
					<ul>
						<li>
							<a href='tasks.html'>Tasks</a>
						</li>
						<li>
							<a href='cards.html'>Cards</a>
						</li>
						<li>
							<a href='users.html'>Users</a>
						</li>
						<li>
							<a href='project-list.html'>Project List</a>
						</li>
					</ul>
				</li>
				<li>
					<a href='calendar.html'>
						<i class="icon-calendar7"></i>
						<span class="menu-item">Calendar</span>
					</a>
				</li>
				<li>
					<a href='widgets.html'>
						<i class="icon-colours"></i>
						<span class="menu-item">Widgets</span>
					</a>
				</li>-->
				{{str2html .actP}}
					<a href="/lkusers">
						<i class="icon-head"></i>
						<span class="menu-item">Пользователи</span>

					</a>

				</li>
				<!--<li>
					<a href="#">
						<i class="icon-line-graph"></i>
						<span class="menu-item">Graphs</span>
						<span class="down-arrow"></span>
					</a>
					<ul>
						<li>
							<a href='c3-graphs.html'>C3 Graphs</a>
						</li>
						<li>
							<a href='small-graphs.html'>Small Graphs</a>
						</li>
						<li>
							<a href='maps.html'>Vector Maps</a>
						</li>
						<li>
							<a href='flot.html'>Flot</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#">
						<i class="icon-layout5"></i>
						<span class="menu-item">Forms</span>
						<span class="down-arrow"></span>
					</a>
					<ul>
						<li>
							<a href='styled-inputs.html'>Styled Inputs</a>
						</li>
						<li>
							<a href='check-radio.html'>Check &amp; Radios</a>
						</li>
						<li>
							<a href='form-inputs.html'>Form Inputs</a>
						</li>
						<li>
							<a href='editor.html'>WYSIWYG Editor</a>
						</li>
					</ul>
				</li>
				<li>
					<a href='gallery.html'>
						<i class="icon-camera5"></i>
						<span class="menu-item">Gallery</span>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="icon-drop"></i>
						<span class="menu-item">UI Elements</span>
						<span class="down-arrow"></span>
					</a>
					<ul>
						<li>
							<a href='components.html'>Components</a>
						</li>
						<li>
							<a href='progressbars.html'>Progress Bars</a>
						</li>
						<li>
							<a href='notifications.html'>Notifications</a>
						</li>
						<li>
							<a href='buttons.html'>Buttons</a>
						</li>
						<li>
							<a href='typography.html'>Typography</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#">
						<i class="icon-layers4"></i>
						<span class="menu-item">Layouts</span>
						<span class="down-arrow"></span>
					</a>
					<ul>
						<li>
							<a href='custom-drag.html'>Drag &amp; Drop Panels</a>
						</li>
						<li>
							<a href='custom-panels.html'>Custom Panels</a>
						</li>
						<li>
							<a href='layout-sidebar.html'>Layout Sidebar</a>
						</li>
						<li>
							<a href='default.html'>Basic Grid</a>
						</li>
						<li>
							<a href='custom-grid.html'>Custom Grid</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#">
						<i class="icon-warning2"></i>
						<span class="menu-item">Error Pages</span>
						<span class="down-arrow"></span>
					</a>
					<ul>
						<li>
							<a href='login.html'>Login</a>
						</li>
						<li>
							<a href='signup.html'>SignUp</a>
						</li>
						<li>
							<a href='forgot-pwd.html'>Forgot Password</a>
						</li>
						<li>
							<a href="maintenance.html">Maintenance</a>
						</li>
						<li>
							<a href='coming-soon.html'>Coming Soon</a>
						</li>
						<li>
							<a href='error.html'>Page not Found</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#">
						<i class="icon-grid2"></i>
						<span class="menu-item">Tables</span>
						<span class="down-arrow"></span>
					</a>
					<ul>
						<li>
							<a href='tables.html'>Tables</a>
						</li>
						<li>
							<a href="data-tables.html">Data Tables</a>
						</li>
					</ul>
				</li>
				<li>
					<a href='icons.html'>
						<i class="icon-bolt"></i>
						<span class="menu-item">Icons</span>
					</a>
				</li>-->
			</ul>
			<!-- Sidebar menu snd -->
		</div>
		<!-- Left sidebar end -->


            {{.LayoutContent}}

		<!-- Footer Start -->
        		<footer>
        			Copyright Arise Admin <span>2016</span>
        		</footer>
        		<!-- Footer end -->

        		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        		<script src="/static/js/jquery.js"></script>

        		<!-- Include all compiled plugins (below), or include individual files as needed -->
        		<script src="/static/js/bootstrap.min.js"></script>

        		<!-- Sparkline Graphs -->
        		<!-- <script src="/static/js/sparkline/sparkline.js"></script> -->
        		<script src="/static/js/sparkline/retina.js"></script>
        		<script src="/static/js/sparkline/custom-sparkline.js"></script>

        		<!-- jquery ScrollUp JS -->
        		<script src="/static/js/scrollup/jquery.scrollUp.js"></script>

        		<!-- D3 JS -->
        		<script src="/static/js/d3/d3.v3.min.js"></script>
        		<script src="/static/js/d3/d3.powergauge.js"></script>

        		<!-- C3 Graphs -->
        		<script src="/static/js/c3/c3.min.js"></script>
        		<script src="/static/js/c3/c3.custom.js"></script>

        		<!-- NVD3 JS -->
        		<script src="/static/js/nvd3/nv.d3.js"></script>
        		<script src="/static/js/nvd3/nv.d3.custom.boxPlotChart.js"></script>

        		<!-- Horizontal Bar JS -->
        		<script src="/static/js/horizontal-bar/horizBarChart.min.js"></script>
        		<script src="/static/js/horizontal-bar/horizBarCustom.js"></script>

        		<!-- Gauge Meter JS -->
        		<script src="/static/js/gaugemeter/gaugeMeter-2.0.0.min.js"></script>
        		<script src="/static/js/gaugemeter/gaugemeter.custom.js"></script>

        		<!-- Calendar Heatmap JS -->
        		<script src="/static/js/heatmap/cal-heatmap.min.js"></script>
        		<script src="/static/js/heatmap/cal-heatmap.custom.js"></script>

        		<!-- Odometer JS -->
        		<script src="/static/js/odometer/odometer.min.js"></script>
        		<script src="/static/js/odometer/custom-odometer.js"></script>

        		<!-- Peity JS -->
        		<script src="/static/js/peity/peity.min.js"></script>
        		<script src="/static/js/peity/custom-peity.js"></script>

        		<!-- Circliful js -->
        		<script src="/static/js/circliful/circliful.min.js"></script>
        		<script src="/static/js/circliful/circliful.custom.js"></script>

        		<!-- Custom JS -->
        		<script src="/static/js/custom.js"></script>




                		<!-- jquery ScrollUp JS -->
                		<script src="/static/js/scrollup/jquery.scrollUp.js"></script>

                		<!-- Sparkline Graphs -->
                		<script src="/static/js/sparkline/sparkline.js"></script>
                		<script src="/static/js/sparkline/custom-sparkline.js"></script>

                		<!-- DataBars JS -->
                		<script src="/static/js/databars/jquery.databar.js"></script>
                		<script src="/static/js/databars/custom-databars.js"></script>

                		<!-- Data Tables -->
                		<script src="/static/js/datatables/dataTables.min.js"></script>
                		<script src="/static/js/datatables/dataTables.bootstrap.min.js"></script>
                		<script src="/static/js/datatables/autoFill.min.js"></script>
                		<script src="/static/js/datatables/autoFill.bootstrap.min.js"></script>
                		<script src="/static/js/datatables/fixedHeader.min.js"></script>
                		<script src="/static/js/datatables/custom-datatables.js"></script>

        	</body>
        </html>