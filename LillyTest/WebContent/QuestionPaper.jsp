<div class="row" ng-show="QueVisiblity">

			<div class="panel panel-default">
				<div class="panel-heading">
					<span class=""><img
						src="Asset/Img/Eli_Lilly_and_Company.svg.png" alt=""
						style="height: 50px" /> </span> <strong>Lilly Exit Test</strong>
				</div>
				<label style=""> Paper number:<span ng-model="paperId">{{paperId}}</span></label>
				<form class="form-horizontal" role="form">
					<div class="panel-body">

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-1 control-label">
								Question</label>
							<div class="col-sm-9">

								<input type="text" class="form-control" runat="server"
									id="search" placeholder="List the applications supported."
									name="id_number" ng-value="Question" size="16" maxlength="16"
									readonly />

							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-1 control-label">
								Answer</label>
							<div class="col-sm-9">
								<textarea ng-model="Answer" id="ans"
									class="col-md-4 form-control" placeholder="Enter Answer here"
									style="height: 150px;"></textarea>
							</div>
						</div>

					</div>
					<div class="panel-footer">
						<label>{{AnswerSubmit}}</label>
						<div class="form-group">
							<button class="col-md-offset-9  btn btn-primary "
								onclick="counter()" ng-click="Submit()" style="">
								Submit</button>

						</div>
					</div>

				</form>
			</div>
		</div>