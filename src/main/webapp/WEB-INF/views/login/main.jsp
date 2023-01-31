<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


<style>
.text-center{

 padding-left:40%;

  
    align-items: center;
   display: flex;
    padding-bottom: 40px;
    background-color: #f5f5f5;
        height: 100%;
}

</style>


<body class="text-center" >
    

  <form >
    <img class="mb-4" src="../../img/maintest.png" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">User Id</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    
      
  
    <button class="w-100 btn btn-lg btn-primary" type="submit" style="margin: 2 0 2 0;"  >Sign in</button>
    <button class="w-100 btn btn-lg btn-primary" type="submit" style="margin: 2 0 2 0;" >Sign up</button>
    <button class="w-100 btn btn-lg btn-primary" type="button" style="margin: 2 0 2 0;" onClick="location.href='../index'">Home</button>
    <p class="mt-5 mb-3 text-muted">&copy; MyPetCare2023</p>
    
  </form>



    
  </body>
</html>

