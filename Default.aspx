<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .top-to-bottom .carousel-inner {
  height: 100%;
}

.carousel.top-to-bottom .item {
   -webkit-transition: 0.6s ease-in-out top;
   -moz-transition: 0.6s ease-in-out top;
   -ms-transition: 0.6s ease-in-out top;
   -o-transition: 0.6s ease-in-out top;
   transition: 0.6s ease-in-out top;
}

.carousel.top-to-bottom .active {
   top: 0;
}

.carousel.top-to-bottom .next {
   top: 400px;
}

.carousel.top-to-bottom .prev {
   top: -400px;
}
.carousel.top-to-bottom .item {
   left: 0;
}
#my_text_slider
{
    text-transform:uppercase;
    color:#fff;
    font-size:5em;
    font-family: 'Fjalla One';
}

    </style>
<script type="text/javascript">
    $(function () {
        $("#modal_success").modal();
        setTimeout(function () {
            $('#modal_success .close').click();
        }, 2000);        get_newitems();

    });

    function empty_leave_message() {
        document.getElementById('name').value = " ";
        document.getElementById('email').value = " ";
        document.getElementById('subject').value = " ";
        document.getElementById('message').value = " "
    }

    function Leave_message() {
        var name = document.getElementById('name').value;
        if (name == null || name == "") {
            document.getElementById("name").focus();
            check_name();
            return false;
        }
        var email = document.getElementById('email').value;
        if (email == null || email == "") {
            document.getElementById("email").focus();
            check_mail();
            return false;
        }

        var subject = document.getElementById('subject').value;
        if (subject == null || subject == "") {
            document.getElementById("subject").focus();
            check_subject();
            return false;
        }

        var message = document.getElementById('message').value;
        if (message == null || message == "") {
            document.getElementById("message").focus();
            check_message();
            return false;
        }

        var data = { 'op': 'Leave_message', 'name': name, "email": email, "subject": subject, "message": message };
        var s = function (msg) {
            if (msg) {
                if (msg == "Message successfully sent!") {
                    loading_gif_stop();
                    Message_success();
                    empty_leave_message();
                }
                else {
                    loading_gif_stop();
                    Message_failed();
                    empty_leave_message();
                }

            }
            else {
                document.location = "Default.aspx";
            }
        }
        var e = function (x, h, e) {
            alert(e.toString());
        };
        callHandler(data, s, e);
        loading_gif_start();
    }



    function loading_gif_start() {

        $("#gif_load").css("display", "block");


    }
    function loading_gif_stop() {

        $("#gif_load").css("display", "none");


    }

    function check_mail() {
        $("#check_mail").css("display", "block");
        $("#check_name").css("display", "none");
        $("#check_subject").css("display", "none");
        $("#check_message").css("display", "none");
    }
    function check_name() {
        $("#check_mail").css("display", "none");
        $("#check_name").css("display", "block");
        $("#check_subject").css("display", "none");
        $("#check_message").css("display", "none");
    }
    function check_subject() {
        $("#check_mail").css("display", "none");
        $("#check_name").css("display", "none");
        $("#check_subject").css("display", "block");
        $("#check_message").css("display", "none");
    }
    function check_message() {
        $("#check_mail").css("display", "none");
        $("#check_name").css("display", "none");
        $("#check_subject").css("display", "none");
        $("#check_message").css("display", "block");
    }
    function check_data() {
        $("#check_mail").css("display", "none");
        $("#check_name").css("display", "none");
        $("#check_subject").css("display", "none");
        $("#check_message").css("display", "none");
    }
    function Message_success() {
        $("#Message_failed").css("display", "none");
        $("#Message_success").css("display", "block");
        $("#check_message").css("display", "none");
    }
    function Message_failed() {
        $("#Message_failed").css("display", "block");
        $("#Message_success").css("display", "none");
        $("#check_message").css("display", "none");

    }

    var get_menu;
    var masterbranchid = 0;
    function get_newitems() {

        var data = { 'op': 'get_newitems' };
        var s = function (msg) {
            if (msg) {
                get_menu = msg;
                display_menu();


            }
            else {
                document.location = "Default.aspx";
            }
        }
        var e = function (x, h, e) {
            alert(e.toString());
        };
        callHandler(data, s, e);
    }

    function display_menu() {
        var results = "";
        for (var i = 0; i < get_menu.length; i++) {
            if (get_menu[i].menu_type==2){
                var menu_type = get_menu[i].menu_type;
                var image = get_menu[i].image;
                var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
                var pic = ftplocation + image + '?' + Math.random();
                results += '<div class="mu-single-gallery col-md-4 mix food"> <div class="mu-single-gallery-item"> <figure class="mu-single-gallery-img"> <a href="#"><img class="img" src="' + pic + '" alt=""></a></figure>';
                results += '<div class="mu-single-gallery-info"> <a href="' + pic + '" data-fancybox-group="gallery" class="fancybox">';
                results += '<img src="assets/img/plus.png" alt="plus icon img"></a></div></div></div>';
                $("#gallery_show").html(results);
                display_ads();
            }
        }
    }

    function display_ads() {
        var results = "";
        for (var i = 0; i < get_menu.length; i++) {
            if (get_menu[i].menu_type==34){
                var menu_type = get_menu[i].menu_type;
                var image = get_menu[i].image;
                var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
                var pic = ftplocation + image + '?' + Math.random();
                results += '<div class="mu-single-gallery col-md-4 mix food"> <div class="mu-single-gallery-item"> <figure class="mu-single-gallery-img"> <a href="#"><img class="img" src="' + pic + '" alt=""></a></figure>';
                results += '<div class="mu-single-gallery-info"> <a href="' + pic + '" data-fancybox-group="gallery" class="fancybox">';
                results += '<img src="assets/img/plus.png" alt="plus icon img"></a></div></div></div>';
                $("#gallery_show2").html(results);
            }
        }
    }
      
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br />
  <!-- Start slider  -->
  <%--<section id="mu-slider">
   <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
  <div class="item active">
      <img src="http://admin.mirchi-austin.com/files/assets/img/3.jpg"  alt="New York">
    </div>
    <div class="item">
      <img src="http://admin.mirchi-austin.com/files/assets/img/1.jpg"  alt="New York">
    </div>
    
    <div class="item">
      <img src="http://admin.mirchi-austin.com/files/assets/img/2.jpg"  alt="New York">
    </div>
    <div class="item">
      <img src="http://admin.mirchi-austin.com/files/assets/img/4.jpg"  alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  </section>--%>
  <!-- End Restaurant Menu -->
   <!-- Start Chef Section -->


    <section id="mu-slider">
         <div id="myCarousel" class="carousel slide top-to-bottom"  data-ride="carousel">
                <!-- Carousel items -->
<div class="carousel-inner" id="my_text_slider">
   <div class="item active">
      <img src="http://admin.mirchi-austin.com/files/assets/img/3.jpg"  alt="New York">
    </div>
    <div class="item">
      <img src="http://admin.mirchi-austin.com/files/assets/img/1.jpg"  alt="New York">
    </div>
    
    <div class="item">
      <img src="http://admin.mirchi-austin.com/files/assets/img/2.jpg"  alt="New York">
    </div>
    <div class="item">
      <img src="http://admin.mirchi-austin.com/files/assets/img/4.jpg"  alt="New York">
    </div>
             </div>
  </section>

  <section id="mu-gallery">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-gallery-area">
            <div class="mu-title">
              <span class="mu-subtitle">Discover</span>
              <h2>Our New Items</h2>
              <i class="fa fa-spoon"></i>              
              <span class="mu-title-bar"></span>
            </div>
            <div class="mu-gallery-content">
   <div class="mu-gallery-body" id="gallery_show">
                </div> 
                </div>
                 </div>
            </div>
          </div>

        </div>
        <br />
      <br /><br />
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-gallery-area">
            <div class="mu-title">
              <span class="mu-subtitle">Discover</span>
              <h2>Our Ad's</h2>
              <i class="fa fa-spoon"></i>              
              <span class="mu-title-bar"></span>
            </div>
            <div class="mu-gallery-content">
   <div class="mu-gallery-body" id="gallery_show2">
                </div> 
                </div>
                 </div>
            </div>
          </div>

        </div>
        <br />
  </section>
              
                <!-- End si
  <!-- End Chef Section -->
  <section id="mu-contact">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-contact-area">
            <div class="mu-title">
              <span class="mu-subtitle">Get In Touch</span>
              <h2>Catering</h2>
              <i class="fa fa-spoon"></i>              
              <span class="mu-title-bar"></span>
            </div>
            <div class="mu-contact-content">
              <div class="row">
                <div class="col-md-6">
                  <div class="mu-contact-left">
                    <form class="mu-contact-form">
                      <div class="form-group">
                        <label for="name">Your Name</label>
                        <input type="text" class="form-control" id="name" onkeyup="check_data();" required placeholder="Name">
                      </div>
                       <div class="form-group" id="check_name" style="display:none;">
                       <p style="color:red"><b>Please Fill Your Name</b></p>
                      </div>
                      <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" onkeyup="check_data();" id="email"  placeholder="Email" required>
                      </div>     
                       <div class="form-group"  id="check_mail" style="display:none;">
                       <p style="color:red"><b>Please fill Your Email</b></p>
                      </div>                 
                      <div class="form-group" >
                        <label for="subject">Subject</label>
                        <input type="text" class="form-control" onkeyup="check_data();" id="subject" placeholder="Subject">
                      </div>
                       <div class="form-group" id="check_subject" style="display:none;">
                       <p style="color:red"><b>Please fill the Subject</b></p>
                      </div>
                      <div class="form-group" >
                        <label for="message">Message</label>                        
                        <textarea class="form-control" id="message" cols="30" onkeyup="check_data();" rows="10" placeholder="Type Your Message"></textarea>
                      </div> 
                       <div class="form-group" id="check_message" style="display:none;">
                       <p style="color:red"><b>Please fill  the Message</b></p>
                      </div>                     
                      <input type="button" class="mu-send-btn" onclick="Leave_message();" value="Send Message" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                      <div id="gif_load" style="display:none;" ><img  src="images/301.GIF" alt="" style="height:40px;width:40px"/><br /></div> <br />
                 <br /><div id="Message_failed" class="s-12 alert alert-info" style="display:none;"><center><p style="color:red"><b>Message Sending Failed!</b></p><center></div> 
                  <div id="Message_success" class="s-12 alert alert-success" style="display:none;"><center><p style="color:Green"><b>Thank You for Contacting us! We will contact u within short time..</b></p></center></div> 
                    </form>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="mu-contact-right">
                    <div class="mu-contact-widget">
                      <h3><b>Office Address</b></h3>
                      <address>
                      <br />
                        <p style="font:Arial"><i class="fa fa-phone"></i><b><a href="tel:512-284-8298">512-284-8298  </a></b> </p>
                        <p style="font:Arial"><i class="fa fa-envelope-o"></i><b><a href="mailto:ktpathan@hotmail.com">ktpathan@hotmail.com</a></b></p>
                        <p style="font:Arial"><i class="fa fa-map-marker"></i><b><a href="https://www.google.com/maps/place/Mirchi+Restaurant/@30.409049,-97.6824527,17z/data=!3m1!4b1!4m5!3m4!1s0x8644ceb90e13a075:0xc0f8778a5b56de03!8m2!3d30.409049!4d-97.6802587">1212 W Parmer Ln A, Austin, TX 78727</a></b></p>
                      </address>
                    </div>
                    <div class="mu-contact-widget">
                      <h3><b>Business Hours</b></h3>                      
                      <address>
                      <br />
                        <p><span><b>Monday - Sunday</span>: 11.00 AM to 11.00 PM</b></p>
                      </address>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
   <!-- Start Map section -->
  </section>

        <div id="modal_success" class="modal fade " role="dialog">
  <div class="modal-dialog ">
    <!-- Modal content-->
    <div class="modal-content" style="background-color:#f3e9af">
          
      <div class="modal-body ">
       <div class="box-body">
                <div class="row">
                    <br />
                  <center> 
             <p style="font-size:20px;color:orangered"><b> Welcome To Mirchi Restauraunt</b></p>
        <button type="button" class="btn btn-danger btn-lg close"  style="display:none;" data-dismiss="modal"></button>
                      <hr />
           <img class="img-responsive" src="assets/img/email-web-logo.png" style="height:100%;width:100%"/>
                      </center>
           </div>
            </div>
      </div>
    </div>

  </div>
</div>
  <!-- End Map section -->
  <script>
    </script>

</asp:Content>

