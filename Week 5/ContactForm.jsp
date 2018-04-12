<%@page import="java.sql.*,java.util.*"%>

<html>
<body>

<%
  String firstName = request.getParameter("name");
  String lastName = request.getParameter("email");
  String sex = request.getParameter("gender");

  try
  {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
      Statement st=conn.createStatement();

      int i = st.executeUpdate("insert into users(Name,Email,Gender)values("+name+","+email+","+gender+")");
      out.println("Data is successfully inserted!");
  }
  catch(Exception e)
  {
      System.out.print(e);
      e.printStackTrace();
  }
%>
</body>
</html>
