<?php
//设置字符编码
header('content-type:text/html;charset=utf-8');

//数据库连接
define('HOST', 'localhost'); //主机名
define('USERNAME', 'root'); //用户名
define('PASSWORD', 'root'); //密码，如果没有密码，直接设为空define('PASSWORD', '');
define('DBNAME', 'taobao'); //数据库的名称
$conn = @new mysqli(HOST, USERNAME, PASSWORD, DBNAME);
if ($conn->connect_error) {
    die('数据库连接错误，请检查用户名和密码！' . $conn->connect_error);
}

$conn->query('SET NAMES UTF8');
