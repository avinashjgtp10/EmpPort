<div class="panel panel-default">
	<!-- Default panel contents -->
	<div class="panel-heading">Lilly Exit Test</div>

	<!-- Table -->

	<div class="panel-body">
		<form>
			<div class="form-group">
				<label>Question</label>
				<textarea class="form-control" disabled style="height: auto" id="Ques">{{Quesde}}</textarea>
			</div>
			<div class="form-group">
				<label>Answer</label>
				<textarea class="form-control" disabled style="height: 150px;">{{AnsDe}}</textarea>
			</div>
			<hr>
			<div class="form-group">
				<div class="col-md-7">Marks has been submited</div>
				<div class="col-md-1 ">
					<input type="text" class="form-control"  placeholder=" Mark" id="Mark">
				</div>
				<div class="col-md-3">
					<button type="submit" class="btn btn-primary col-md-3"
						ng-click="AnsSubmit()">Submit</button>
				</div>
			</div>
		</form>
	
	</div>