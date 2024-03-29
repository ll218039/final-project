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
    <link rel="stylesheet" href="order.css">
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

  <main>
    <p class="title">我的訂單</p>
    
    <div class="statebutton">
        <a href="order.html"><button class="button1">待出貨</button></a>
        <a href="ontheroad.html"><button class="button2">已出貨</button></a>
        <a href="received.html"><button class="button3">待取件</button></a>
    </div>
    
    <table>
      <tr>
          <th colspan="2">書本資訊</th>
          <th>數量</th>
          <th>售價</th>
      </tr>
      <tr>
          <td>
            
              <img  src ="https://meowbooks.tw/_next/image?url=%2Fapi%2Fv1%2Fimage%2Fbook%2F361ecc3d339448ac99e1f35b994edc34%3F1685009381&w=1080&q=75">
          </td>
          <td class="td2">
              <h1>異鄉人</h1>

              作者：Albert Camus
          </td>
          <td class="td3">2</td>
          <td class="td3">
              $350
          </td>
      </tr>
      <tr>
          <td>
              <img  src ="https://meowbooks.tw/_next/image?url=%2Fapi%2Fv1%2Fimage%2Fbook%2F361ecc3d339448ac99e1f35b994edc34%3F1685009381&w=1080&q=75">
          </td>
          <td class="td2">
              <h1>異鄉人</h1>

              作者：Albert Camus
          </td>
          <td class="td3">3</td>
          <td class="td3">
              $350 
          </td>
      </tr>
      <tr>
          <td>
              <img  src ="https://meowbooks.tw/_next/image?url=%2Fapi%2Fv1%2Fimage%2Fbook%2F361ecc3d339448ac99e1f35b994edc34%3F1685009381&w=1080&q=75">
          </td>
          <td class="td2">
              <h1>異鄉人</h1>

              作者：Albert Camus
          </td>
          <td class="td3">6</td>
          <td class="td3">
              $350 
          </td>
      </tr>
      <tr class="lasttr">
          <td colspan="2" class="td4">總價</td>
          <td class="td4">$1000</td>
      </tr>
    </table>
  </main>
  <footer>
    <p>&copy; 2023 書在哪 All Rights Reserved.</p>
  </footer>

</body>
</html>
<%
}
else{
%>
請先登入以使用此功能!<a href='../sign in.jsp'>"按此</a>前往登入頁面"
<%	
}
%>