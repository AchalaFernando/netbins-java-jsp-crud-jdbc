package org.apache.jsp.bootstrap;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    if(request.getParameter("submit")!= null)
    {
        String name = request.getParameter("fname");
        String nic = request.getParameter("nic");
        String mobile = request.getParameter("mobile");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("con.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/user","root","");
        pst = con.prepareStatement("insert into records(fname,nic,mobile)values(?,?,?)"); 
        pst.setString(1, name);
        pst.setString(2, nic);
        pst.setString(3, mobile);
        pst.executeUpdate();
        
       
      out.write(" \n");
      out.write("        \n");
      out.write("       <script>\n");
      out.write("           alert(\"Record Added\");\n");
      out.write("       </script>\n");
      out.write("    ");
   
    }




      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> JSP Page</title>\n");
      out.write("        \n");
      out.write("        <!-- Bootstrap-->\n");
      out.write("        <link href=\"../bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <!-- Bootstrap-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>National Identity Details </h1>\n");
      out.write("        \n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-um-4\">\n");
      out.write("                <form class=\"card\" method=\"POST\" action=\"#\">\n");
      out.write("                    <div alight=\"left\"> \n");
      out.write("                        <label class=\"form-label\">Name</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Name\" name=\"fname\" id=\"fname\" required>                       \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div alight=\"left\"> \n");
      out.write("                        <label class=\"form-label\">National Id Card</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"NIC\" name=\"nic\" id=\"nic\" required>                       \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div alight=\"left\"> \n");
      out.write("                        <label class=\"form-label\">Mobile</label>\n");
      out.write("                        <input type=\"text\" class=\"form-control\" placeholder=\"Mobile\" name=\"mobile\" id=\"mobile\" required>                       \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div alight=\"right\"> \n");
      out.write("                        <input type=\"submit\" id=\"submit\" value=\"submit\" name=\"submit\" class=\"btn btn-info\">\n");
      out.write("                        <input type=\"reset\" id=\"reset\" value=\"reset\" name=\"reset\" class=\"btn btn-warning\">\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-um-8\">\n");
      out.write("                \n");
      out.write("                <div class=\"panel-body\">\n");
      out.write("                    <table id=\"tbl-user\" class=\"table table-responsive table-bordered\" cellpadding=\"0\" width=\"100%\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Name</th>\n");
      out.write("                                <th>National Id Card</th>\n");
      out.write("                                <th>Mobile</th>\n");
      out.write("                                <th>Edit</th>\n");
      out.write("                                <th>Delete</th>\n");
      out.write("                            </tr>\n");
      out.write("                            <!-- View data -->\n");
      out.write("                           ");

                                 Connection con;
                                 PreparedStatement pst;
                                 ResultSet rs;
        
                                 Class.forName("com.mysql.jdbc.Driver");
                                 con = DriverManager.getConnection("jdbc:mysql://localhost/user","root","");
                                 
                                       String query = "select * from records";
                                       Statement st = con.createStatement();
                                       
                                            rs = st.executeQuery(query);
                                            
                                            while (rs.next())
                                            {
                                                String id = rs.getString("id");
                                            

                                            

                                
      out.write("                                               \n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
 rs.getString("fname"); 
      out.write("</td>\n");
      out.write("                                <td>");
 rs.getString("nic"); 
      out.write("</td>\n");
      out.write("                                <td>");
 rs.getString("mobile"); 
      out.write("</td>\n");
      out.write("                                <td> <a href=\"update.jsp?id= ");
      out.print(id );
      out.write("\"> Edit</a></td>\n");
      out.write("                                <td><a href=\"delete.jsp?id= ");
      out.print(id);
      out.write("\"> Delete</a></td>\n");
      out.write("                            </tr>\n");
      out.write("                           \n");
      out.write("                            ");

                            
                            
                            
                            }
                            
                            
      out.write("\n");
      out.write("                           <!-- View data -->\n");
      out.write("                            \n");
      out.write("                        </thead>\n");
      out.write("                        \n");
      out.write("                    </table>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
