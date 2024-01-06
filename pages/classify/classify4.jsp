<%@ page contentType="text/html" %>
<%@page pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>書在哪網路書店</title>
</head>
<link rel="stylesheet" href="../../assets/Css/classify.css">
<body>
    <div class="topbar">
        <a href="../index.jsp" id="logo"><img src="../../img/book.png"></a>
        <div class="wheresbook"><a href="#logo">書在哪</a></div>
        <div class="classify"><a href="../classify/classify.jsp">書籍分類</a></div>
        <div class="search" id="search">
          <input type="text" placeholder="搜尋...">
          <button type="button">搜尋</button>
        </div>
        <div class="iconlinks">
            <a href="../member/sign in.jsp"><img src="../../img/membericon.png"></a>
            <a href="../cart/cart.jsp"><img src="../../img/carticon.png"></a>
        </div>
        <div class="links">
            <a href="../bookshelf/bookshelf.jsp">我的書架</a>
            <a href="../order/order.jsp">我的訂單</a>
            <a href="../contact/contact.jsp">聯繫我們</a>
        </div>
    </div>
    </div>

    <div class="title">書籍分類</div>
    <div id="classifyselector">
        選擇分類：
        <select id="category" onchange="filterBooks()">
            <option value="classify4.jsp">懸疑推理</option>
            <option value="classify3.jsp">愛情小說</option>
            <option value="classify2.jsp">科幻小說</option>
            <option value="classify1.jsp">文學小說</option>
            <option value="classify.jsp">心理勵志</option>
            <!-- 添加其他分類選項 -->
        </select>
    </div>
    
    <div class="book">
       
        <table class="book_table">
            <tr class="book_title">
                <td colspan="6"><a href="">懸疑推理</a></td>
            </tr>
            <tr>
                <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
                <td><a href="../../book html/book2.html"><img src="../../img/booktest2.jpg"></a></td>
                <td><a href="../../book html/book3.html"><img src="../../img/booktest3.png"></a></td>
                <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
                <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
                <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
                <td><a href=""><img src="../../img/booktest1.jpg"></a></td>
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
                <td>書籍名稱 </td>
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
                <td>作者</td>
                <td>作者</td>
                <td>作者</td>
                <td>作者</td>
            </tr>
        </table>
    </div>
  

    <footer>
        <p>&copy; 2023 書在哪 All Rights Reserved.</p>
    </footer>

    <script>
        // Set the initial scroll position to the left
        document.getElementById('tableWrapper').scrollLeft = 0;
        function filterBooks() {
            // 獲取選擇的值
            var selectedCategory = document.getElementById("category").value;
    
            // 跳轉到選中的分頁
            window.location.href = selectedCategory;
        }
      </script>
</body>
</html>