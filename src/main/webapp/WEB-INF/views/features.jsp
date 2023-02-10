<%@ page language="java" contentType="text/html; charset=UTF-8" 
	%>


<%@ include file="header.jsp"  %> 
 
<style>
.full{
    width: 1500px;
}
.screen1{
    position:absolute; 
  top:15%; 
  left:10%; 
  width:20%;
     
}
.screen1-1{
    width: 200px;
   
}
.screen2{
     position:absolute; 
  top:20%; 
  left:20%; 
  width:60%;
} 
.screen2-1{
    width: 700px;
    height:700px;
    float: left;
   
} 
.screen3{
   position:absolute; 
  top:150%; 
   
  width:100%;
}  
</style>

<div class="full">
<div class="screen1">

</div>
<div class="screen2">
<img src="/img/img2.jpg" width="1000" ><br>

 
   
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#collection"/></svg>
        </div>
        <h3 class="fs-2">Customized Veterinary Consultation</h3>
        <p>Precise and detailed consultation is possible based on previously registered information. Various pets can be registered and customized veterinarian counseling is possible for pets.</p>      
      </div>
      <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#people-circle"/></svg>
        </div>
        <h3 class="fs-2">Effective health care of pets</h3><br><br>
        <p>It is important to check your health checkup in a timely manner. Minor health changes of pets can be easily treated and continuously managed efficiently. </p>       
      </div>
      <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#toggles2"/></svg>
        </div>
        <h3 class="fs-2">Comfortable pet care with non-face-to-face care</h3>
        <p>It is difficult to find the right hospital for various pets. Check the need for visit through prior medical treatment before visiting the hospital, select the appropriate hospital, and provide it to the pet guardian.</p>       
      </div>
    </div>
  </div>





</div>
</div>
<div class="screen3">
	<%@ include file="footer.jsp" %>   
</div>
