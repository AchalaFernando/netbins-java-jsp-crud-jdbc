

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%--<%@page import="main.util.jdbc" %>--%>


<% 
    if(request.getParameter("submit")!= null)
    {
        String name = request.getParameter("fname");
        String nic = request.getParameter("nic");
        String mobile = request.getParameter("mobile");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/user","root","");
        pst = con.prepareStatement("insert into records(fname,nic,mobile)values(?,?,?)"); 
        pst.setString(1, name);
        pst.setString(2, nic);
        pst.setString(3, mobile);
        pst.executeUpdate();
        
%> 

<script>
    alert("Record Added");
</script>
<%   
}



%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page</title>

        <!-- Bootstrap-->
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap-->
    </head>
    <body>
        <div class="container-fluid">


            <h1>National Identity Details </h1>

            <div class="row">
                <div class="col-md-12">

                    <form class="" method="POST" action="">

                        <div class="row">
                            <div class="col-md-4"> 
                                <label class="form-label">Name</label>

                            </div>

                            <div class="col-md-8"> 
                                <input type="text" class="form-control" placeholder="Name" name="fname" id="fname" required> 
                            </div>   
                        </div> 

                        <div class="row">
                            <div class="col-md-4"> 
                                <label class="form-label">National Id Card</label>
                            </div>
                            <div class="col-md-8"> 
                                <input type="text" class="form-control" placeholder="NIC" name="nic" id="nic" required>     

                            </div>   
                        </div>

                        <div class="row">
                            <div class="col-md-4"> 
                                <label class="form-label">Mobile</label>
                            </div>
                            <div class="col-md-8"> 
                                <input type="text" class="form-control" placeholder="Mobile" name="mobile" id="mobile" required> 

                            </div>   
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-4 mt-3"> 

                            </div>
                            <div class="col-md-8 mt-3"> 
                                <input type="submit" id="submit" value="submit" name="submit" class="btn btn-success mr-3">
                                <input type="reset" id="reset" value="reset" name="reset" class="btn btn-primary">

                            </div>   
                        </div>

                    </form>
                </div>

                <div class="col-md-12 mt-3">

                    <div class="panel-body">
                        <table id="tbl-user" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>National Id Card</th>
                                    <th>Mobile</th>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                                <!-- View data -->
                                <%
                                      Connection con;
                                      PreparedStatement pst;
                                      ResultSet rs;
        
                                      Class.forName("com.mysql.jdbc.Driver");
                                      con = DriverManager.getConnection("jdbc:mysql://localhost/user","root","");
                                      //con = new jdbc().ConnectionGet();
                                 
                                            String query = "select * from records";
                                            Statement st = con.createStatement();
                                       
                                                 rs = st.executeQuery(query);
                                            
                                                 while (rs.next())
                                                 {
                                                     String id = rs.getString("id");
                                                     String fname = rs.getString("fname");
                                                     String nic = rs.getString("nic");
                                                     String mobile = rs.getString("mobile");
                                            
                                %>                                               
                                <tr>
                                    <td><%=fname%></td>
                                    <td><%=nic%></td>
                                    <td><%=mobile%></td>
                                    <td><a href="update.jsp?id=<%=id%>"> Edit</a></td>
                                    <td><a href="delete.jsp?id=<%=id%>"> Delete</a></td>
                                </tr>

                                <%
                            
                            
                            
                                }
                            
                                %>
                                <!-- View data -->

                            </thead>

                        </table>


                    </div>
                </div>

            </div>
        </div>                      
    </body>
</html>
