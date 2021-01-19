<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
   <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Medicio landing page template for Health niche</title>
  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
 
</head>
<body class=""style="background-color: #E8F8F5;" >
	<div class="row mb-3">
			<div class="col-md-12"
				style="height: 60px; background-color: #38C2BA;">
				<div class="container mt-3 text-white">
					<span class=""><b>Monday - Saturday, 8am to 10pm </b></span> <span
						class="float-right"><b>Call us now +62 008 65 001</b></span>
				</div>
			</div>
		</div>
<section class="content-info">
   <div class="container" style="margin-top:;">
       <div class="text-center px-lg-5">
           
           <h3 class="title-w3ls mb-5" style="color: green;">Please Registation</h3>
           <hr/>
       </div>
       <div class="contact-w3ls-form mt-5">
           <form action="/save" class="w3-pvt-contact-fm" method="post">
               <div class="row">
                   <div class="col-lg-6">
                       <div class="form-group">
                           <label>First Name</label> <input class="form-control" type="text"
                               name="fName" placeholder="Enter First Name" required="">
                       </div>
                       <div class="form-group">
                           <label>Last Name</label> <input class="form-control" type="text"
                               name="lName" placeholder="Enter last Name" required="">
                       </div>
                       <div class="form-group">
                           <label>Email</label> <input class="form-control" type="email"
                               name="email" placeholder="Enter Email" required="">
                       </div>
                       <div class="form-group">
                           <label>Created Date</label> <output class="form-control"
                               type="date" id="demo" name="createDate" />
                       </div>
                        
                       
                   </div>
                   <div class="col-lg-6">
                       <div class="form-group">
                           <label>Username</label> <input class="form-control" type="text"
                               name="username" placeholder="Enter Username" required="">
                       </div>
                       <div class="form-group">
                           <label>Password</label> <input class="form-control" type="password"
                               name="password" placeholder="Enter Password" required="">
                       </div>
                       <div class="form-group">
                           <label>Enabled</label> <select class="form-control"
                               name="enabled">
                               <option value="True">True</option>
                               <option value="False">False</option>
                           </select>
                       </div>
                       <div class="form-group">
                           <label>Role</label> <select class="form-control" name="role">
                               
                               <option value="user">User</option>
                           </select>
                       </div>
                   </div>
                   <div class="form-group mx-auto mt-3">

						<button type="submit" class="btn submit btn-success" style="width:100%; margin-left:340px;">Submit</button>
                   </div>
               </div>
           </form>
       </div>
   </div>
</section>
<footer>

      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-md-4 card ">
            <div class="" data-wow-delay="0.1s">
              <div class="widget">
                <h5 class="text-center" style="color:#38C2BA">About Medicio</h5>
                <p>
                  Lorem ipsum dolor sit amet, ne nam purto nihil impetus, an facilisi accommodare sea
                </p>
              </div>
            </div>
            <div class="wow fadeInDown" data-wow-delay="0.1s">
              <div class="widget">
                <h5>Information</h5>
                <ul>
                  <li><a href="#">Home</a></li>
                  <li><a href="#">Laboratory</a></li>
                  <li><a href="#">Medical treatment</a></li>
                  <li><a href="#">Terms & conditions</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 card">
            <div class="wow fadeInDown" data-wow-delay="0.1s">
              <div class="widget">
                <h5 class="text-center" style="color:#38C2BA">Medicio center</h5>
                <p>
                  Nam leo lorem, tincidunt id risus ut, ornare tincidunt naqunc sit amet.
                </p>
                <ul>
                  <li>
                    <span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-calendar-o fa-stack-1x fa-inverse"></i>
								</span> Monday - Saturday, 8am to 10pm
                  </li>
                  <li>
                    <span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-phone fa-stack-1x fa-inverse"></i>
								</span> +62 0888 904 711
                  </li>
                  <li>
                    <span class="fa-stack fa-lg">
									<i class="fa fa-circle fa-stack-2x"></i>
									<i class="fa fa-envelope-o fa-stack-1x fa-inverse"></i>
								</span> rabiul.idb40@gmail.com
                  </li>

                </ul>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4 card">
            <div class="wow fadeInDown" data-wow-delay="0.1s">
              <div class="widget">
                <h5 class="text-center" style="color:#38C2BA">Our location</h5>
                <p>The Suithouse V303, Kuningan City, Jakarta Indonesia 12940</p>

              </div>
            </div>
            
        </div>
      </div>
      <div class="sub-footer">
        <div class="container">
          <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-6">
              <div class="wow fadeInLeft" data-wow-delay="0.1s">
                <div class="text-left">
                  <p>&copy;Copyright -Rabiul islam. All rights reserved.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-6 col-lg-6">
              <div class="wow fadeInRight" data-wow-delay="0.1s">
                <div class="text-right">
                  <div class="credits">
                    <!--
                      All the links in the footer should remain intact. 
                      You can delete the links only if you purchased the pro version.
                      Licensing information: https://bootstrapmade.com/license/
                      Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Medicio
                    -->
                    Designed by <a href="">Md. Rabiul Islam</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>

  
  <script>
   var d = new Date();
   document.getElementById("demo").innerHTML = d;
</script>
 

</body>

</html>
