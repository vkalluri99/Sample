<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
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

       
      
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="mu-contact">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-contact-area">
            <div class="mu-title">
              <span class="mu-subtitle">Get In Touch</span>
              <h2>Contact Us</h2>
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
                        <input type="text" class="form-control" id="name" onkeyup="check_data();" placeholder="Name">
                      </div>
                       <div class="form-group" id="check_name" style="display:none;">
                       <p style="color:red"><b>Please Fill Your Name</b></p>
                      </div>
                      <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" class="form-control" onkeyup="check_data();" id="email" placeholder="Email">
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
                 <br /><div id="Message_failed" class="s-12 alert alert-danger" style="display:none;"><center><p style="color:red"><b>Message Sending Failed!</b></p><center></div> 
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
  </section>
   <section id="mu-map">
    <iframe src=https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6881.924817180092!2d-97.68463606739864!3d30.408808405709838!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8644ceb90e13a075%3A0xc0f8778a5b56de03!2sMirchi+Restaurant!5e0!3m2!1sen!2sus!4v1518248316475"  width="100%" height="100%" frameborder="0"allowfullscreen></iframe>
  </section>
</asp:Content>

