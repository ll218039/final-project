<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>書在哪網路書店</title>
    <link rel="stylesheet" href="searchresult.css">
</head>

<body>	
    <!--topbar-->
    <div class="topbar">
		<form name="search" method="POST" action="searchresult.jsp">
        <a href="../index.jsp" id="logo"><img src="../img/book.png"></a>
        <div class="wheresbook"><a href="#logo">書在哪</a></div>
        <div class="classify"><a href="classify.jsp">書籍分類</a></div>
        <div class="search" id="search">
            <input type="text" name="bookName" placeholder="搜尋...">
			<%String bN = request.getParameter("bookName");%>
		<%  
        try {
//Step 1: 載入資料庫驅動程式 
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
//Step 2: 建立連線 
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   
				
				if(con.isClosed())
                    out.println("連線建立失敗");
                else{	
//Step 3: 選擇資料庫	
                    con.createStatement().execute("USE `bookstore`");
//Step 4: 執行 SQL 指令 
                    String sql = "SELECT * FROM `books` WHERE`BookName`='"+bN+"'";
                    ResultSet rs =  con.createStatement().executeQuery(sql);
					String bookID_value = rs.getString("bookID");
//Step 5: 關閉連線					
                    con.close();
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
            <button type="button"><a href="../book html/book"+bookID+".html">搜尋</a></button>	
		</form>
        </div>
        <div class="iconlinks">
            <a href="sign in.jsp"><img src="../img/membericon.png"></a>
            <a href="cart.jsp"><img src="../img/carticon.png"></a>
        </div>
        <div class="links">
            <a href="bookshelf.jsp">我的書架</a>
            <a href="order.jsp">我的訂單</a>
            <a href="contact.jsp">聯繫我們</a>
        </div>
    </div>

    <footer>
        <p>&copy; 2023 書在哪 All Rights Reserved.</p>
    </footer>
</body>

</html>