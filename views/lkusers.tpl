<!-- Dashboard Wrapper Start -->
		<div class="dashboard-wrapper">

			<!-- Container fluid Starts -->
			<div class="container-fluid">

				<!-- Top Bar Starts -->
				<div class="top-bar clearfix">
					<div class="row gutter">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="page-title">
								<h3>Список пользователей</h3>

							</div>
						</div>

					</div>
				</div>
				<!-- Top Bar Ends -->

				<!-- Row Starts -->
				<div class="row gutter">
					<div class="col-lg-4 col-md-8 col-sm-12 col-xs-12">
						<div class="panel panel-blue">

							<div class="panel-body">
								<div class="table-responsive">
									<table id="basicExample" class="table table-striped table-condensed table-bordered no-margin">
										<thead>
										  <tr>
									      <th>ФИО</th>
									      <th>Класс</th>
									      <th>E-ID</th>

										  </tr>
										</thead>

										<tbody>
										{{range $id, $record := .records}}
										  <tr align="center">
												<td>{{$record.Fio}}</td>
												<td>{{$record.E_id}}</td>
												<td>{{$record.E_id}}</td>

										  </tr>

                                         {{end}}
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Row Ends -->



			</div>
			<!-- Container fluid ends -->

		</div>
		<!-- Dashboard Wrapper End -->