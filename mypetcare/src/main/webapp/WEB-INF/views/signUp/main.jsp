<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">

<link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/checkout/">
<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">



<style>
.bg-light{

 padding-left:40%;

   text-align: center!important;
  
   
    padding-bottom: 40px;
    background-color: #f5f5f5;
        height: 100%;
}

</style>




</head>


	 <body class="bg-light">
    
<div class="container">
  <main>
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
      <h2>SignUp</h2>
      
    </div>
      </div>
    
    
      
      <div  padding-left="-40%">
        <h4 class="mb-3">Billing address</h4>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">UserId</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first UserId is required.
              </div>
            </div>
             </div>
            
            <div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">Password</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first Password is required.
              </div>
            </div>
            </div>
            
            <div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">Password Check</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first Password is required.
              </div>
            </div>
            </div>

			<div class="row g-3">
            <div class="col-sm-8">
              <label for="username" class="form-label">Username</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <input type="text" class="form-control" id="username" placeholder="Username" required>
              <div class="invalid-feedback">
                  Your Username is required.
                </div>
              </div>
            </div>
			</div>
			
			<div class="row g-3">	
            <div class="col-sm-8">
              <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>
			 </div>
			 
			 <div class="row g-3">
            <div class="col-sm-8">
              <label for="firstName" class="form-label">Phone</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid first Phone is required.
              </div>
            </div>
            </div>
			 
			 <div class="row g-3">	
            <div class="col-sm-8">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" id="address" placeholder="Address" required>
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>
			 </div>
			 
			 
            <div class="col-sm-8">
              <label for="address2" class="form-label">Address Detail <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
            </div>

            <div class="col-md-8">
              <label for="country" class="form-label">의료인여부</label>
              <select class="form-select" id="country" required>
                <option value="">Choose...</option>
                <option>의료인</option>
              </select>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>

		<div class="row g-3">
          <div class="my-8">
          <label for="country" class="form-label">의료인여부</label>
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">의료인</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">간호사</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">의대생</label>
            </div>
          </div>
		</div>	
         

          <hr class="my-4" width=70%>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">회원가입 동의합니다.</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">진짜로 동의합니다.</label>
          </div>

          <hr class="my-4"  width=70%>

          

         



          <button class="btn btn-primary btn-lg" type="submit"  width=70% >Continue to SignUp</button>
        </form>
      </div>
    </div>
  </main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; MyPetCare2023</p>
   
  </footer>
</div>


    <script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
      <script src="form-validation.js"></script>
  </body>



</html>