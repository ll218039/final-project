function increaseQuantity() {
    var quantityInput = document.getElementById('quantity');
    var currentQuantity = parseInt(quantityInput.value, 10);
    quantityInput.value = currentQuantity + 1;
}

function decreaseQuantity() {
    var quantityInput = document.getElementById('quantity');
    var currentQuantity = parseInt(quantityInput.value, 10);
    if (currentQuantity > 1) {
    quantityInput.value = currentQuantity - 1;
    }
}
function showAlert() {
    alert("已加入購物車!");
    }
    function showAlert1() {
    alert("已加入書架!");
    }

    function addComment() {
        var username = document.getElementById("username").value;
        var rating = document.getElementById("rating").value;
        var commentText = document.getElementById("comment").value;
    
        if (username && rating && commentText) {
            var commentSection = document.getElementById("comments");
    
            // 創建新的評論元素
            var commentElement = document.createElement("div");
            commentElement.className = "comment";
            commentElement.innerHTML = "<p><strong>" + username + "</strong>  評分: " + rating + "星<br>" + commentText + "</p>";
    
            // 將新評論插入到評論區的最前面
            commentSection.insertBefore(commentElement, commentSection.firstChild);
    
            // 清空輸入欄位
            document.getElementById("username").value = "";
            document.getElementById("rating").value = "1";
            document.getElementById("comment").value = "";
        } else {
            alert("請填寫用戶名稱、評分和評論內容");
        }
    }
        