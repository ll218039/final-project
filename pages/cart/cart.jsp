<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%
if(session.getAttribute("account") != null ){
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../assets/Css/cart.css">
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
            <a href="member/member.html"><img src="../../img/membericon.png"></a>
            <a href="../cart/cart.html"><img src="../../img/carticon.png"></a>
        </div>
        <div class="links">
            <a href="../bookshelf/bookshelf.html">我的書架</a>
            <a href="../order/order.html">我的訂單</a>
            <a href="../contact/contact.html">聯繫我們</a>
        </div>
    </div>
    
    <main>
        <p class="title">購物車</p>
            <table>
            <tr>
                <th colspan="2">書本資訊</th>
                <th>數量</th>
                <th>售價</th>
                <th>結帳</th>
            </tr>
            <tr>
                <td>
                    <img  src ="https://meowbooks.tw/_next/image?url=%2Fapi%2Fv1%2Fimage%2Fbook%2F361ecc3d339448ac99e1f35b994edc34%3F1685009381&w=1080&q=75">
                </td>
                <td class="td2">
                    <h1>異鄉人</h1>
                    <h3>作者：Albert Camus</h3>
                </td>
                <td class="td3">2</td>
                <td class="td3">
                    $350
                </td>
                <td class="td3"><label><input type="checkbox" name="check"></label></td>
            </tr>
            <tr>
                <td><img  src ="../../img/booktest3.png"></td>
                <td class="td2">
                    <h1>nineteen steps</h1>
                    <h3>作者：Albert Camus</h3>
                </td>
                <td class="td3">3</td>
                <td class="td3">
                    $380
                </td>
                <td class="td3"><label><input type="checkbox" name="check"></label></td>
            </tr>
            <tr>
                <td>
                    <img  src ="https://im2.book.com.tw/image/getImage?i=https://www.books.com.tw/img/001/096/88/0010968839.jpg&v=65097918k&w=348&h=348">
                </td>
                <td class="td2">
                    <h1>潛水：深海的記憶</h1>
                    <h3>作者：丹陽</h3>
                </td>
                <td class="td3">6</td>
                <td class="td3">
                    $350
                </td>
                <td class="td3"><label><input type="checkbox" name="check"></label></td>
            </tr>
            <tr>
                <td class="td3">付款方式</td>
                <td class="td5" colspan="4">
                    <form action="">
                    <label><input type="radio" name="paid">貨到付款</label>
                    <label><input type="radio" name="paid">ATM轉帳</label>
                    <label><input type="radio" name="paid">VISA/信用卡 </label>
                    <label><input type="radio" name="paid">街口支付 </label></form>
                </td>
            <tr>
                <td class="td3">運送地址</td>
                <td colspan="4"><label for="address"><input type="text" name="address" id="addresss" placeholder="請輸入您的地址"></td></label>
            </tr>
            </tr>
            <tr class="lasttr">
                <td colspan="2" class="td4">小計</td>
                <td class="td6">$1000</td>
            </tr>
            <tr class="lasttr">
                <td colspan="2" class="td4">運費</td>
                <td class="td6">$60</td>
            </tr>
            <tr class="lasttr">
                <td colspan="2" class="td4">總價</td>
                <td class="td6">$1060</td>
            </tr>
        </table>
        <a href="order.html"><button onclick="showAlert()">結帳</button></a>
    </main>


    <footer>
        <p>&copy; 2023 書在哪 All Rights Reserved.</p>
    </footer>
    
    <script>
        function showAlert() {
          alert("結帳成功!");
        }
      </script>
      
</body>
</html>
<%
}
else{
%>
請先登入以使用此功能!<a href='../member/sign in.jsp'>按此</a>前往登入頁面
<%	
}
%>