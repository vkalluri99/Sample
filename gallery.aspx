<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    $(function () {
        get_menu_details();

    });
    var message = " ";

    //    function clickIE4() {
    //        if (event.button == 2) {
    //            alert(message);
    //            return false;
    //        }
    //    }

    //    function clickNS4(e) {
    //        if (document.layers || document.getElementById && !document.all) {
    //            if (e.which == 2 || e.which == 3) {
    //                return false;
    //            }
    //        }
    //    }

    //    if (document.layers) {
    //        document.captureEvents(Event.MOUSEDOWN);
    //        document.onmousedown = clickNS4;
    //    }
    //    else if (document.all && !document.getElementById) {
    //        document.onmousedown = clickIE4;
    //    }

    //    document.oncontextmenu = new Function("return false")

    var get_menu;
    var masterbranchid = 0;
    function get_menu_details() {

        var data = { 'op': 'get_menu_details' };
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
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<div class="mu-single-gallery col-md-4 mix food"> <div class="mu-single-gallery-item"> <figure class="mu-single-gallery-img"> <a href="#"><img class="img" src="' + pic + '" alt=""></a></figure>';
            results += '<div class="mu-single-gallery-info"> <a href="' + pic + '" data-fancybox-group="gallery" class="fancybox">';
            results += '<img src="assets/img/plus.png" alt="plus icon img"></a></div></div></div>';
            $("#gallery_show").html(results);
        }
    }

   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="mu-gallery">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-gallery-area">
            <div class="mu-title">
              <span class="mu-subtitle">Discover</span>
              <h2>Our Gallery</h2>
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
  </section>
</asp:Content>

