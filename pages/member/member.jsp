<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
if(session.getAttribute("account") != null ){
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>書在哪網路書店</title>
    <link rel="stylesheet" href="../../assets/Css/member.css">
</head>
<body>
    <!--上方選單列-->
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
    
    <div class="title">會員資訊</div>
      <img class="head" src="../../img/person.png">
      <table class="membertable">
        <tr>
          <td class="tabletd">姓&ensp;&ensp;名：</td>
          <td>賴俊辰</td>
        </tr>
        <tr>
          <td class="tabletd">手機號碼：</td>
          <td>0965-405-288</td>
        </tr>
        <tr>
          <td class="tabletd">電子信箱：</td>
          <td>jimlai0423@gmail.com</td>
        </tr>
        <tr>
          <td class="tabletd">密&ensp;&ensp;碼：</td>
          <td>*************</td>
        </tr>
        <tr>
          <td class="tabletd">生&ensp;&ensp;日：</td>
          <td>2004/04/23</td>
        </tr>
        <tr>
          <td class="tabletd">會員等級：</td>
          <td>銅牌級</td>
        </tr>
      </table>
      <div class="btn">
        <a href="member modify.html"><button>修改</button></a>
        <a href="index.html"><button>儲存</button></a>
      </div>
  <footer>
    <p>&copy; 2023 書在哪 All Rights Reserved.</p>
  </footer>
<%
}
else{
%>
請先登入以使用此功能!<a href='../member/sign in.jsp'>"按此</a>前往登入頁面"
<%	
}
%>
</body>
</html>