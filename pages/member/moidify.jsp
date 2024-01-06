<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>modify</title>
</head>
<body>
<%
try {
//Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try {
//Step 2: 建立連線 	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
//Step 3: 選擇資料庫   
           sql="use bookstore";
           con.createStatement().execute(sql);
		   request.setCharacterEncoding("UTF-8");  
           String new_name=request.getParameter("new_user_name");
           String new_phone=request.getParameter("new_user_phone");
           String new_email=request.getParameter("new_user_email");
//Step 4: 執行 SQL 指令	
		   //修改資料庫
           sql="UPDATE  `bookstore`.`member_content` SET `Name` =new_name ,`Phone` = new_phone,`E-mail` = new_email WHERE `account` = session.getAttribute(account)";
           con.createStatement().execute(sql);
//Step 5: 關閉連線
           con.close();
//Step 6: 顯示結果 
          //跳回登入頁面
           response.sendRedirect("sign in.html");
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
%>
</body>
</html>