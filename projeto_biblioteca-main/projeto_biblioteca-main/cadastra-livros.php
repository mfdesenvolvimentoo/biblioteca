<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cdastra leitores</title>
    <link rel="stylesheet" href="style-todos.css">
    <a href="index.html"><button title="Voltar ao início">Home</button></a>
</head>
<body>

<h1 class="text-center">CONFIRMAÇÃO DE CADASTRO</h1>
<?php
include "config.php";
if (!$conn){
    die("Falha na conexão {mysqli_connect_error()}");
}

//receba os dados do formulário 
$titulo = $_POST['Titulo'];
$autor = $_POST['Autor'];
$editora = $_POST['Editora'];
$sinopse = $_POST['Sinopse'];
$anopublicacao = $_POST['AnoPublicacao'];
$genero =$_POST['Genero'];
$paginas = $_POST['Paginas'];


// criar variáveis para inserir o resistro
$sql ="INSERT INTO `livros`
(`Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES 
('$titulo','$autor','$editora','$sinopse','$anopublicacao','$genero','$paginas')";

// Executa a consulta SQL. falhar, exibe o erro do banco de dados
$query = mysqli_query(mysql: $conn,query: $sql) or
die(mysqli_error(mysql: $conn));

if($query){
    echo "<center>";
    echo "<p>Cadastro realizado com sucesso!! </p><br>";
    echo "TÍTULO: " . $titulo ."<br>";
    echo "AUTOR: ". $autor."<br>";
    echo " EDITORA: ". $editora."<br>";
    echo " SINOPSE: ". $sinopse."<br>";
    echo "ANO PUBLICAÇÃO:".  $anopublicacao."<br>";
    echo "GENERO: " . $genero. "<br>";
    echo " PÁGINAS: " . $paginas."<br>";
    echo "</p>";
    echo "<a href='index.html'><button title='Home pago'>Voltar</button></a>";
    echo "</center>";
} else {
 echo "<center>";
 echo "<a href='index.html'><button title='Home pago'>Voltar</button></a>";
 echo "</center>";
}
 ?>   
   
</body>
</html>