<?php
$user = getenv('MYSQL_USER');
$password = getenv('MYSQL_PASS');
$address = getenv('MYSQL_HOST');

$mysql = new mysqli("$address", $user, $password, 'mydatabase');
if ($mysql->connect_error) {
  die("Connection failed: " . $mysql->connect_error);
} 

echo 'Connected successfully to database';
echo '<br>';

$query="SELECT * FROM events";
$result = $mysql->query($query);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "id: " . $row["id"]. " - Event: " . $row["name"]. " Speaker: " . $row["speaker"]. " Date: " . $row["date"] . "<br>";
  }
} else {
  echo "0 results";
}

$mysql->close();
?>
