<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head>
  <title>Calling page methods with jQuery</title>
  <style type="text/css">
    #Result {
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div id="Result">Click here for the time.</div>

  <script src="jquery-1.6.2.min.js"></script>
  <script>
    $('#Result').click(function() {
      $.ajax({
        type: "POST",
        url: "Default.aspx/HelloWorld",
        data: "{}",
        contentType: "application/json",
        dataType: "json",
        success: function(msg) {
          // Replace the div's content with the page method's return.
          $("#Result").text(msg.d);
        }
      });
    });
  </script>
</body>
</html>