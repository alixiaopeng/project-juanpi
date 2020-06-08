<?php
include "conn.php";

$pagesize = 40; //单个页面展示的数据条数
$result = $conn->query("select * from allgoodlist");//记录集
$num = $result->num_rows;//总条数
$pagenum = ceil($num / $pagesize); //页数

//获取前端的传来的页面，根据页码查询对应的数据，返回给前端。
if (isset($_GET['page'])) {
    $pagevalue = $_GET['page'];
} else {
    $pagevalue = 1;
}
$page = ($pagevalue - 1) * $pagesize;

$sql1 = "select * from allgoodlist limit $page,$pagesize";
$res = $conn->query($sql1);

$arrdata = array();
for ($i = 0; $i < $res->num_rows; $i++) {
    $arrdata[$i] = $res->fetch_assoc();
}

echo json_encode($arrdata);