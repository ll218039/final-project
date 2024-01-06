<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>書在哪網路書店</title>
    <link rel="stylesheet" href="../../assets/Css/sign in.css">
</head>
<body>
	
    <div class="topbar">
        <a href="../index.html" id="logo"><img src="../../img/book.png"></a>
        <div class="wheresbook"><a href="#logo">書在哪</a></div>
        <div class="classify"><a href="../classify/classify.html">書籍分類</a></div>
        <div class="search" id="search">
          <input type="text" placeholder="搜尋...">
          <button type="button">搜尋</button>
        </div>
        <div class="iconlinks">
            <a href="../member/member.jsp"><img src="../../assets/Images/membericon.png"></a>
            <a href="../cart/cart.html"><img src="../../assets/Images/carticon.png"></a>
        </div>
        <div class="links">
            <a href="../bookshelf/bookshelf.html">我的書架</a>
            <a href="../order/order.html">我的訂單</a>
            <a href="../contact/contact.html">聯繫我們</a>
        </div>
    </div>
    </div>
    <div class="login">
        <form class="form" action="check.jsp" method="POST">
            <h2>會員登入 </h2>
            <div class="group">
                <label for="user_id">帳號</label>
                    <input type="text" name="user_id" maxlength="10" placeholder="請輸入您的帳號">
            </div>
            <div class="group">
                <label for="user_password">密碼</label>
                <input type="password" name="user_password" maxlength="16" placeholder="請輸入您的密碼">
            </div>
            <div class="btn-group">
				<a href="member.jsp"><button class="btn"><input type="submit" value="登入" class="btn" onclick="showAlert()"></button></a>
                <a href="sign up.html"><button class="btn">註冊</button></a>
            </div>
        </form>
		<%session.setAttribute("account",request.getParameter("user_id")); //儲存輸入的帳號到session%>
    </div>
    <script>
        function showAlert() {
          alert("登入成功!");
        }
      </script>
      
    
</body>
</html>