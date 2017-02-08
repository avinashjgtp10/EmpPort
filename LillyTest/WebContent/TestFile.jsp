<div class="panel panel-default">
	<!-- Default panel contents -->
	<div class="panel-heading">Exit Test</div>

	<!-- Table -->

	<div class="panel-body">
		<div class="thumbnail" ng-show="EmpOption">
			<form class="form-inline">
				<div class="form-group col-md-2">
					<label>Select Name</label>
				</div>
				<div class="col-md-4 form-group">
					<select class="selectpicker" name="reSelect" ng-model="aname.model"
						style="width: 150px;">
						<option ng-repeat="option in aname.avilOption"
							value="{{option.id}}">{{option.name}}</option>
					</select>
				</div>

				<button type="submit" class="btn btn-primary" ng-click="Check()">Submit</button>

			</form>

		</div>


		<div class="thumbnail" ng-show="CheckPaper">
			<form>
				<div class="form-group">
					<label>Question</label>
					<textarea class="form-control" disabled style="height: auto"
						id="Ques">{{Quesde}}</textarea>
				</div>
				<div class="form-group">
					<label>Answer</label>
					<textarea class="form-control" disabled style="height: 150px;">{{AnsDe}}</textarea>
				</div>
				<div class="form-group ">

					<div class="col-md-6">

						<label><span ng-show="alertDisplay">
								{{resMsg}}</span></label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control " placeholder=" Mark" ng-model="Mark"
							id="Mark" maxlength="10">
					</div>

					<div class="">
						<button type="submit" class="btn btn-primary "
							ng-click="AnsSubmit()">Submit</button>
					</div>

				</div>
			</form>

		</div>


		<!-- <div class="">
			<form>
				<div class="form-group">
					<label>Question</label>
					<textarea class="form-control" disabled style="height: auto"
						id="Ques">{{Quesde}}</textarea>
				</div>
				<div class="form-group">
					<label>Answer</label>
					<textarea class="form-control" disabled style="height: 150px;">{{AnsDe}}</textarea>
				</div>

				<div class="form-group ">
					<div class="col-md-7">
						<span ng-show="alertDisplay">{{resMsg}}</span>
					</div>
					<div class="col-md-2 ">
						<input type="text" class="form-control" placeholder=" Mark"
							id="Mark">
					</div>
					<div class="col-md-3">
						<button type="submit" class="btn btn-primary col-md-3"
							ng-click="AnsSubmit()">Submit</button>
					</div>
				</div>
			</form>
		</div> -->
	</div>