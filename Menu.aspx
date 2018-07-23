<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="menu" %>

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
                display_Appetizers();


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

    function display_Appetizers() {
        var results = "";
        var apna20 = " ";
        var apna21 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 0) {
                    apna20 += results;
                    $("#left_Appetizers").html(apna20);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 0) {
                    apna21 += results;
                    $("#right_Appetizers").html(apna21);
                    j++
                }
            }

        }
    }



    function display_Wraps() {
        var results = "";
        var apna3 = " ";
        var apna4 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 1) {
                    apna3 += results;
                    $("#Left_Wraps").html(apna3);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 1) {
                    apna4 += results;
                    $("#Right_Wraps").html(apna4);
                    j++
                }
            }

        }
    }


    function display_Soup() {
        var results = "";
        var apna5 = " ";
        var apna6 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 2) {
                    apna5 += results;
                    $("#left_Soup").html(apna5);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 2) {
                    apna6 += results;
                    $("#right_Soup").html(apna6);
                    j++
                }
            }

        }
    }


    function display_Rice() {
        var results = "";
        var apna7 = " ";
        var apna8 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 3) {
                    apna7 += results;
                    $("#left_Rice").html(apna7);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 3) {
                    apna8 += results;
                    $("#Right_Rice").html(apna8);
                    j++
                }
            }

        }
    }

    function display_Grill() {
        var results = "";
        var apna9 = " ";
        var apna10 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 4) {
                    apna9 += results;
                    $("#left_Grill").html(apna9);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 4) {
                    apna10 += results;
                    $("#right_Grill").html(apna10);
                    j++
                }
            }

        }
    }

    function display_Curries() {
        var results = "";
        var apna11 = " ";
        var apna12 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 5) {
                    apna11 += results;
                    $("#left_Curries").html(apna11);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 5) {
                    apna12 += results;
                    $("#right_Curries").html(apna12);
                    j++
                }
            }

        }
    }
    

    function display_Vegetables() {
        var results = "";
        var apna13 = " ";
        var apna14 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 6) {
                    apna13 += results;
                    $("#left_Vegetables").html(apna13);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 6) {
                    apna14 += results;
                    $("#right_Vegetables").html(apna14);
                    j++
                }
            }

        }
    }

    function display_Bread() {
        var results = "";
        var apna13 = " ";
        var apna14 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 7) {
                    apna13 += results;
                    $("#left_Bread").html(apna13);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 7) {
                    apna14 += results;
                    $("#right_Bread").html(apna14);
                    j++
                }
            }

        }
    }

    function display_Desserts() {
        var results = "";
        var apna13 = " ";
        var apna14 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 8) {
                    apna13 += results;
                    $("#left_Desserts").html(apna13);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 8) {
                    apna14 += results;
                    $("#right_Desserts").html(apna14);
                    j++
                }
            }

        }
    }

    function display_drinks() {
        var results = "";
        var apna13 = " ";
        var apna14 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image;
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image + '?' + Math.random();
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 9) {
                    apna13 += results;
                    $("#left_drinks").html(apna13);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 9) {
                    apna14 += results;
                    $("#right_drinks").html(apna14);
                    j++
                }
            }

        }
    }

    function display_Kids() {
        var results = "";
        var apna13 = " ";
        var apna14 = " ";
        var j = 1;
        for (var i = 0; i < get_menu.length; i++) {
            results = " ";
            var menu_type = get_menu[i].menu_type;
            var image = get_menu[i].image + '?' + Math.random();
            var ftplocation = "http://admin.mirchi-austin.com/images/apnafiles/";
            var pic = ftplocation + image;
            results += '<li><div class="media" ><div class="media-left mu-single-gallery-info"><a href="' + pic + '" data-fancybox-group="gallery" class="fancybox"><img class="media-object img" src="' + pic + '" alt="assets/img/menu/item-1.jpg">';
            results += '</a></div><div class="media-body"><h4 class="media-heading"><a href="#">' + get_menu[i].food_name + '</a></h4>';
            //results += '<span class="mu-menu-price">$' + get_menu[i].price + '</span>';
            results += '<p style="color:#850d20;font-family:arial;">' + get_menu[i].desc + '.</div></div></li>';
            if (j%2 == 1) {
                if (get_menu[i].food_type == 10) {
                    apna13 += results;
                    $("#left_Kids").html(apna13);
                    j++
                }
            }
            else if (j%2 == 0) {
                if (get_menu[i].food_type == 10) {
                    apna14 += results;
                    $("#right_Kids").html(apna14);
                    j++
                }
            }

        }
    }


   

    function Appetizers() {
        $("#Appetizers").css("display", "block");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Appetizers();
    }

    function Wraps() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "block");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Wraps();
    }


    function Soup() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "block");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Soup();
    }

    function Rice() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "block");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Rice();
    }

    function Grill() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "block");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Grill();
    }

    function Curries() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "block");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Curries();
    }

    function Vegetables() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "block");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Vegetables();
    }

    function Bread() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "block");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Bread();
    }

    function Desserts() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "block");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "none");
        display_Desserts();
    }

    function drinks() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "block");
        $("#Kids").css("display", "none");
        display_drinks();
    }

    function Kids() {
        $("#Appetizers").css("display", "none");
        $("#Wraps").css("display", "none");
        $("#Soup").css("display", "none");
        $("#Rice").css("display", "none");
        $("#Grill").css("display", "none");
        $("#Curries").css("display", "none");
        $("#Vegetables").css("display", "none");
        $("#Bread").css("display", "none");
        $("#Desserts").css("display", "none");
        $("#drinks").css("display", "none");
        $("#Kids").css("display", "block");
        display_Kids();
    }

   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="mu-restaurant-menu" style="background-color:#f3e9af">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-restaurant-menu-area">
            <div class="mu-title">
              <span class="mu-subtitle">Discover</span>
              <h2>OUR  MENU</h2>
              <i class="fa fa-spoon"></i>              
              <span class="mu-title-bar"></span>
            </div>
            <div class="mu-restaurant-menu-content">
              <ul class="nav nav-tabs mu-restaurant-menu">
                <li class="active"><a href="#Appetizers" data-toggle="tab" onclick="Appetizers();">Appetizers</a></li>
                <li><a href="#Wraps" data-toggle="tab" onclick="Wraps();">Wraps</a></li>
                <li><a href="#Soup" data-toggle="tab" onclick="Soup();">Soup</a></li>
                <li><a href="#Rice" data-toggle="tab" onclick="Rice();">Rice</a></li>
                <li><a href="#Grill" data-toggle="tab" onclick="Grill();">Grill & Tandoor</a></li>
                <li><a href="#Curries" data-toggle="tab" onclick="Curries();">Curries</a></li>
                <li><a href="#Vegetables" data-toggle="tab" onclick="Vegetables();">Vegetables</a></li>
                <li><a href="#Bread" data-toggle="tab" onclick="Bread();">Bread</a></li>
                <li><a href="#Desserts" data-toggle="tab" onclick="Desserts();">Desserts</a></li>
                <li><a href="#drinks" data-toggle="tab" onclick="drinks();">Drinks</a></li>
                <li><a href="#Kids" data-toggle="tab" onclick="Kids();">Kids</a></li>
              </ul>

              <!-- Tab panes -->
              <div class="tab-content">
                <div class="tab-pane fade in active" id="Appetizers" style="display:block;" >
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Appetizers">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_Appetizers">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                <div class="tab-pane fade in active" id="Wraps" style="display:none;" >
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="Left_Wraps">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="Right_Wraps">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                <div class="tab-pane fade in active" id="Soup" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Soup">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_Soup">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                <div class="tab-pane fade in active" id="Rice" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Rice">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="Right_Rice">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                <div class="tab-pane fade in active" id="Grill" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Grill">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_Grill">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                <div class="tab-pane fade in active" id="Curries" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Curries">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_Curries">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                <div class="tab-pane fade in active" id="Vegetables" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Vegetables">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_Vegetables">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                  <div class="tab-pane fade in active" id="Bread" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Bread">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_Bread">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                  <div class="tab-pane fade in active" id="Desserts" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Desserts">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_Desserts">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                  <div class="tab-pane fade in active" id="drinks" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_drinks">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_drinks">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
                  <div class="tab-pane fade in active" id="Kids" style="display:none;">
                  <div class="mu-tab-content-area">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="mu-tab-content-left">
                          <ul class="mu-menu-item-nav" id="left_Kids">
                          </ul> 
                        </div>
                      </div>
                     <div class="col-md-6">
                       <div class="mu-tab-content-right">
                          <ul class="mu-menu-item-nav" id="right_Kids">
                          </ul>   
                       </div>
                     </div>
                   </div>
                 </div>
                </div>
             
                <center><h3 style="color:#eb1402;"><b>Note: Some Items may not be available everyday</b></h3></center>
                <center><h3 style="color:#eb1402;"><b>Everything is Halal(Hand Slaughtered Meat)</b></h3></center>
                <br /><br />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</asp:Content>

