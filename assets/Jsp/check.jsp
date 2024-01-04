<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
if(request.getParameter("user_id") !=null && !request.getParameter("user_password").equals("") 
	&& request.getParameter("user_password") != null && !request.getParameter("user_id").equals("")){
	
    sql = "SELECT * FROM `member_content` WHERE `account`='" +request.getParameter("user_id") + 
	      "'  AND `password`='" + request.getParameter("user_password") + "'"  ; 
	
    ResultSet rs =con.createStatement().executeQuery(sql);
    
    if(rs.next()){            
        session.setAttribute("user_id",request.getParameter("user_id"));
		con.close();//結束資料庫連結
        response.sendRedirect("../index.html") ;
    }
    else{
		con.close();//結束資料庫連結
        out.println("密碼帳號不符 !! <a href='sign in.html'>按此</a>重新登入") ;
	}
}
else
	response.sendRedirect("index.html");
%>
