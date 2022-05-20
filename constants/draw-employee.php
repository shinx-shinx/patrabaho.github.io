<form name="frm" action="app/create-account.php" method="POST" autocomplete="off">
<div class="login-box-wrapper">
							
<div class="modal-header">
<h4 class="modal-title text-center">Create your account for free</h4>
</div>

<div class="modal-body">
																
<div class="row gap-20">
											

												

												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>First Name</label>
<input class="form-control" placeholder="Enter your first name" name="fname" required type="text"> 
</div>
												
</div>

<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Last Name</label>
<input class="form-control" placeholder="Enter your last name" name="lname" required type="text"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Email Address</label>
<input class="form-control" placeholder="Enter your email address" name="email" required type="text"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">
												
<div class="form-group"> 
<label>Password</label>
<input class="form-control" placeholder="Min 8 and Max 20 characters" name="password" required type="password"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">
												
<div class="form-group"> 
<label>Password Confirmation</label>
<input class="form-control" placeholder="Re-type password again" name="confirmpassword" required type="password"> 
</div>

<div class="form-group"> 
<input type="checkbox" id="employee" name="employer" value="employer">
  <label for="employee"> Im also an employer</label>
</div>

<div class="form-group hidden" id="company-div"> 
<label>Company Name</label>
<input class="form-control" placeholder="Enter your company name" name="company" type="text" id="company"> 
</div>
											

<div class="form-group hidden" id="type-div"> 
<label>Employer Type</label>
<input class="form-control" placeholder="Eg: Result-producer, Businessman etc" name="type" type="text" id="type"> 
</div>

</div>
												
<input type="hidden" name="acctype" value="101" id="acctype">
												
												
</div>

</div>

<div class="modal-footer text-center">
<button  onclick="return val();" type="submit" name="reg_mode" class="btn btn-primary">Register</button>
</div>
										
</div>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
  $('#employee').click(function() {
      if(document.getElementById('employee').checked) {
        $('#company-div').removeClass('hidden')
        $('#type-div').removeClass('hidden')
        $('#company').addAttr('required')
        $('#type').addAttr('required')  
        $('#acctype').val("102")
      } else {
        $('#company-div').addClass('hidden')
        $('#type-div').addClass('hidden')
        $('#company').removeAttr('required')
        $('#type').removeAttr('required')
        $('#acctype').val("101")
      }  
  });
</script>