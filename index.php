<div style="background:url('background.jpg') no-repeat; width:4000px; height:2250px;">
<iframe width="560" height="315" src="https://www.youtube.com/embed/NpgaGhAW9So" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<?php
echo '<pre>';

$servername = "127.0.0.1";
$username = "Alisa";
$password = "yume0303";
$dbname = "hw3";
 
// 创建连接
$conn = new mysqli($servername, $username, $password, $dbname);
 
// 检测连接
if ($conn->connect_error) {
    die("連接失敗:( " . $conn->connect_error . "\n");
} 
echo "連接成功:)\n";

echo "Query1 : 請列出所有東方永夜抄裡面玩家可以操縱的角色的名字（以東方Project的術語來說，就是自機）\n";
$sql1 = "SELECT `角色名` FROM `玩家操縱` WHERE `遊戲名` = '東方永夜抄'";
$result = $conn->query($sql1);
if ($result->num_rows > 0){
    while ($row = $result->fetch_assoc()){
        echo $row["角色名"] . "\n";
    }
}else{
    echo "0 result";
}

echo "\nQuery2 : 請列出製作團隊「上海愛麗絲幻樂團」做出了多少遊戲，並列出遊戲名\n";
$sql2 = "SELECT `遊戲名稱` as name FROM `製作團隊`, `遊戲` WHERE `團隊名` = '上海愛麗絲幻樂團' AND `遊戲編號` = `編號`";
$result = mysqli_query($conn, $sql2);
$count = mysqli_num_rows($result);
if ($count > 0){
    echo "上海愛麗絲幻樂團總共做出" . $count . "款遊戲，\n" . "分別是 : \n";
    while ($row = mysqli_fetch_assoc($result)){
        echo $row['name'] . "\n";
    }
}else{
    echo "0 result";
}

echo "\nQuery3 : 請找出ZUN有參與創作的相關作品名稱以及ZUN負責的工作\n";
$sql3 = "SELECT `作品名` as name, `負責的工作` as job FROM `參與創作` WHERE `作者名` = 'ZUN'";
$result = mysqli_query($conn, $sql3);
if (mysqli_num_rows($result) > 0){
	echo "作品名\t負責的工作\n";
	while ($row = mysqli_fetch_assoc($result)){
		echo $row['name'] . "\t" . $row['job'] . "\n";
	}
}else{
	echo "0 result";
}

$conn->close();

echo '</pre>';
?>
