<%-- 
    Document   : index
    Created on : Oct 13, 2014, 4:06:51 PM
    Author     : akursat
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
       
        <script type="text/javascript">
            $(document).ready(function() {
                $('#button1').click(function(event) {
                    var name = $('#name').val();
                    var password = $('#password').val();
                    $.get( 'ServletDemo1',
                            {
                                username: name,
                                password: password
                            }, function(responseText) {
                        $('#ajaxResponse').text(responseText);
                    });
                });
            });
        </script>
        <style type="text/css">
            .login
            {
                border-radius: 10px 10px 10px 10px;
                -moz-border-radius: 10px 10px 10px 10px;
                -webkit-border-radius: 10px 10px 10px 10px;
                border: 0px solid #000000;
                left: 600px;
                top:  100px;
                width: 300px;
                height: 190px;
                position: absolute;
                background-color: #e74c3c;
            }
            .field{
                left: 600px;
                top:  300px;
                width: 270px;
                height: 20px;
                position: absolute;
                background-color: #f1c40f;
            }
        </style>

    </head>
    <body>
        <form>
        
            <div class="login">
                <h1>JqueryAjaxServlet</h1>
                <form  class="form1" name="form1" method="post" action="Demo1">
                    <p><input type="text"  id="name" value="" placeholder="Username or Email"></p>
                    <p><input type="password" id="password" value="" placeholder="Password"></p>
                    <p><input type="button" id="button1"  value="Login"></p>
                </form>
            </div>
            
            <fieldset class="field">
                <div id="ajaxResponse"></div>
            </fieldset>
            
        </form>
    </body>

</html>
