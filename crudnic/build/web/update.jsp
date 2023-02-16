<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<% 
    if(request.getParameter("submit")!= null)
    {
        String id = request.getParameter("id");
        String name = request.getParameter("fname");
        String nic = request.getParameter("nic");
        String mobile = request.getParameter("mobile");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/user","root","");
        pst = con.prepareStatement("update records set fname =?, nic=?, mobile=? where id=?"); 
        pst.setString(1, name);
        pst.setString(2, nic);
        pst.setString(3, mobile);
        pst.setString(4, id);
        pst.executeUpdate();
        
%> 

<script>
    alert("Record Updated");
</script>
<%   
}



%>







<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Bootstrap-->
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap-->

    </head>
    <body>

        <div class="container-fluid">
            <h1>User Update</h1>

            <div class="row">
                <div class="col-md-12">

                    <form class="" method="POST" action="">
                        <!-- Update code -->
                        <%
                            Connection con;
                            PreparedStatement pst;
                            ResultSet rs;
        
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/user","root","");
                             //con = new jdbc().ConnectionGet();
                        
                            String requestId=request.getParameter("id");
                        
                            String query = "select * from records where id="+requestId;
                                           Statement st = con.createStatement();
                                       
                                                rs = st.executeQuery(query);
                                            
                                                if (rs.next())
                                                {
                                                    String id = rs.getString("id");
                                                    String fname = rs.getString("fname");
                                                    String nic = rs.getString("nic");
                                                    String mobile = rs.getString("mobile");
                        
                        
                        
                        
                        

                        %>
                        <!-- Update code -->

                        <div class="row">
                            <div class="col-md-4"> 
                                <label class="form-label">Name</label>

                            </div>

                            <div class="col-md-8"> 
                                <input type="text" class="form-control" placeholder="Name"  value="<%=fname%>" name="fname" id="fname" required>
                            </div>   
                        </div> 

                        <div class="row">
                            <div class="col-md-4"> 
                                <label class="form-label">National Id Card</label>
                            </div>
                            <div class="col-md-8"> 
                                <input type="text" class="form-control" placeholder="NIC" value="<%=nic%>" name="nic" id="nic" required>      

                            </div>   
                        </div>

                        <div class="row">
                            <div class="col-md-4"> 
                                <label class="form-label">Mobile</label>
                            </div>
                            <div class="col-md-8"> 
                                <input type="text" class="form-control" placeholder="Mobile" value="<%=mobile%>" name="mobile" id="mobile" required> 

                            </div>   
                        </div>

                        <% 
             }
                        %>  

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



            </div>

    </body>
</html>
