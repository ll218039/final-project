<%@ page contentType="text/html" %>
<%@page pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>書在哪網路書店</title>
    <link rel="stylesheet" href="../../assets/Css/bookshelf.css">
</head>
<body>
    <!--上方選單列-->
    <div class="topbar">
      <a href="index.html" id="logo"><img src="../assets/Images/book.png"></a>
      <div class="wheresbook"><a href="#logo">書在哪</a></div>
      <div class="classify"><a href="classify/classify.jsp">書籍分類</a></div>
      <div class="search" id="search">
        <input type="text" placeholder="搜尋...">
        <button type="button">搜尋</button>
      </div>
      <div class="iconlinks">
          <a href="member/sign in.jsp"><img src="../assets/Images/membericon.png"></a>
          <a href="cart/cart.jsp"><img src="../assets/Images/carticon.png"></a>
      </div>
      <div class="links">
          <a href="../bookshelf/bookshelf.jsp">我的書架</a>
          <a href="../order/order.jsp">我的訂單</a>
          <a href="../contact/contact.html">聯繫我們</a>
      </div>
  </div>
  <div class="title">我的書架</div>
  <div class="book">
    <table class="book_table">
        <tr>
            <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
            <td><a href="../../book html/book2.html"><img src="../../img/booktest2.jpg"></a></td>
            <td><a href="../../book html/book3.html"><img src="../../img/booktest3.png"></a></td>
            <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
            <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
            <td><a href=""><img src="../../img/booktest1.jpg"></a></td>

        </tr>
        <tr>
            <td>被討厭的勇氣</td>
            <td>異鄉人 </td>
            <td>nineteen steps </td>
            <td>書籍名稱 </td>
            <td>書籍名稱 </td>
            <td>書籍名稱 </td>
        </tr>
        <tr>
            <td>古賀史健， 岸見一郎</td>
            <td>卡繆&nbsp;Albert Camus</td>
            <td>Millie Bobby Brown</td>
            <td>作者</td>
            <td>作者</td>
            <td>作者</td>
        </tr>
    </table>
</div>
<div class="book">
  <table class="book_table">
      <tr>
        <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
        <td><a href="../../book html/book2.html"><img src="../../img/booktest2.jpg"></a></td>
        <td><a href="../../book html/book3.html"><img src="../../img/booktest3.png"></a></td>
        <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
        <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
        <td><a href=""><img src="../../img/booktest1.jpg"></a></td>

      </tr>
      <tr>
          <td>被討厭的勇氣</td>
          <td>異鄉人 </td>
          <td>nineteen steps </td>
          <td>晚安是你，明天的早安也要是你 </td>
          <td>書籍名稱 </td>
          <td>書籍名稱 </td>
      </tr>
      <tr>
          <td>古賀史健， 岸見一郎</td>
          <td>卡繆&nbsp;Albert Camus</td>
          <td>Millie Bobby Brown</td>
          <td>青（@163______________）</td>
          <td>作者</td>
          <td>作者</td>
      </tr>
  </table>
</div>  



  <footer>
    <p>&copy; 2023 書在哪 All Rights Reserved.</p>
  </footer>

</body>
</html>