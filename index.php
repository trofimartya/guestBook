<?php
	$host = 'localhost';
	$user = 'root';
	$password = '';
	$dbName = 'test';
	$link = mysqli_connect($host, $user, $password, $dbName);
mysqli_query($link, "SET NAMES 'utf8'");
?>
<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="utf-8">  
		<title>Guest book</title>
		<link rel="stylesheet" href="css/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="css/styles.css">
	</head>
	<body>
		<div id="wrapper">
			<h1>Guest Book</h1>
 			
 			<div>
				<nav>
					<ul class="pagination">
<?php
// Pagination
	$count = mysqli_query($link, "SELECT COUNT(*) as count FROM records");
	for ($countArr=[]; $row=mysqli_fetch_assoc($count); $countArr[]=$row);
	$count = $countArr[0]['count'];
	$notesOnPage = 2;
	$pages = ceil($count / $notesOnPage);
	$classActive = ' class="active"';
	$classDisabled = ' class="disabled"';

	if($_GET['page'] == 1) {
		echo '<li' . $classDisabled . '>';
		echo '<a href="?page=1"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>';
		echo '</li>';
	} else {
		echo '<li>';
		echo '<a href="?page=' . ($_GET['page'] - 1) . '"  aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>';
		echo '</li>';
	}
	
	for ($i=1;$i<=$pages; $i++) {
		if($_GET['page'] == $i) {
			echo '<li' . $classActive . '><a href="?page=' . $i . '">' .$i . '</a></li>';	
		} else {
			echo '<li><a href="?page=' . $i . '">' .$i . '</a></li>';
		} 
	}

	if($_GET['page'] == $pages) {
		echo '<li' . $classDisabled . '>';
		echo '<a href="?page=' . $pages . '" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>';
		echo '</li>';
	} else {
		echo '<li>';
		echo '<a href="?page=' . ($_GET['page'] + 1) . '" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>';
		echo '</li>';
	}
	 if (!isset($_GET['page'])) {
	 	header('Location: index.php?page=1');
	 }
?>
					</ul>
				</nav>
			</div>
<?php
	if(!empty($_POST)) {
		$formName = $_POST['formName'];
		$formText = $_POST['formText'];
		$query = "INSERT INTO records (`name`, `data`, `text`) VALUES ('$formName', NOW(), '$formText')";
		mysqli_query($link, $query) or die(mysqli_error($link));
	}

	if(!empty($_GET)) {
		$page = $_GET['page'];
		$first = ($page * $notesOnPage) - $notesOnPage;
	}

	$query = "SELECT * FROM `records` ORDER BY `data` DESC LIMIT $first, $notesOnPage";
	$res = mysqli_query($link, $query) or die(mysqli_error($link));
	for ($data=[]; $row=mysqli_fetch_assoc($res); $data[]=$row);

	foreach($data as $elem) {
?>
			<div class="note">
				<p>
					<span class="date"><?php echo $elem['data']; ?></span>
					<span class="name"><?php echo $elem['name']; ?></span>
				</p>
				<p>
					<?php echo $elem['text']; ?>
				</p>
			</div>
<?php
	}

	if(!empty($_POST)) {
?>		
			<div class="info alert alert-info">
				Thanks for your feedback!
			</div>
<?php
	}
?>

			<div id="form">
				<form action="" method="POST">
					<p><input class="form-control" name="formName" placeholder="Name" required></p>
					<p><textarea class="form-control" name="formText" placeholder="Feedback" required></textarea></p>
					<p><input type="submit" class="btn btn-info btn-block" value="Send"></p>
				</form>
			</div>
		</div>
	</body>
</html>