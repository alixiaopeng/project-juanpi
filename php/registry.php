<?php
include "conn.php";

//检测用户名是否重名
if (isset($_POST['username'])) {
    $user = $_POST['username'];
    $result = $conn->query("select * from registry where username='$user'");
    if ($result->fetch_assoc()) { //存在
        echo true;
    } else {
        echo false;
    }
}

//接收前端表单提交的数据
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $conn->query("insert registry values(null,'$username','$password',NOW())");
    header('location:http://10.31.162.56/project-juanpi/src/login.html');
}
