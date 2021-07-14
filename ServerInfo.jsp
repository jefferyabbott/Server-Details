<!DOCTYPE html>
<html>
<head>
  <title>Server Info</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

  <link rel="stylesheet" type="text/css" href="QuizOne.css">
<body>
  <div id="wrapper">
  <h2>Server Info</h2>

<% 
  String displayItems[] = request.getParameterValues("details");

  if (displayItems != null)
  {
		out.println("<table><tr><th>Property</th><th>Server Detail</th></tr>");
	  for (String item : displayItems)
	  {
	    out.println("<tr><td>");
	    switch (item)
	    {
	      case "javaVersion":
	        out.println("Java Version</td><td>");
	        out.println(System.getProperty("java.version"));
	        break;
	      case "javaHome":
	        out.println("Java Home Directory</td><td>");
	        out.println(System.getProperty("java.home"));
	        break;
	      case "operatingSystem":
	        out.println("Operating System</td><td>");
	        out.println(System.getProperty("os.name"));
	        break;
	      case "userName":
	        out.println("User Name</td><td>");
	        out.println(System.getProperty("user.name"));
	        break;
	      case "userHome":
	        out.println("User Home Directory</td><td>");
	        out.println(System.getProperty("user.home"));
	        break;
	      case "userCurrentDirectory":
	        out.println("Current Directory</td><td>");
	        out.println(System.getProperty("user.dir"));
	        break;
	      case "javaFileName":
	        out.println("Java Filename</td><td>");
	        out.println(Thread.currentThread().getStackTrace()[1].getClassName());
	        break;
	      default:
	        break; 
	    }
	    out.println("</td></tr>");
  		}
  		out.println("</table>");
  	}
  	else 
  	{
  		out.println("<p>No data requested.</p>");
  	}
%>

</div>	<!-- wrapper -->
</body>
</html>
