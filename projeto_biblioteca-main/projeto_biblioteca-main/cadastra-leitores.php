<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cdastra leitores</title>
    <link rel="stylesheet" href="style-todos.css">
 
    
</head>
<body>

<h1 class="text-center">CONFIRMAÇÃO DE CADASTRO</h1>

<?php
include "config.php";
if (!$conn){
    die("Falha na conexão {mysqli_connect_error()}");
}

//receba os dados do formulário 
$nome = $_POST['nome'];
$dtnasc = $_POST['DtNasc'];
$celular = $_POST['Celular'];
$email = $_POST['Email'];
$ra = $_POST['RA'];
$endereco =$_POST['Endereço'];
$num_end = $_POST['Num_End'];
$bairro =$_POST['Bairro'];
$cidade =$_POST['Cidade'];

// criar variáveis para inserir o resistro
$sql ="INSERT INTO `leitores`
(`Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES 
('$nome','$dtnasc','$celular','$email','$ra','$endereco','$num_end','$bairro', '$cidade')";

// Executa a consulta SQL. falhar, exibe o erro do banco de dados
$query = mysqli_query(mysql: $conn,query: $sql) or
die(mysqli_error(mysql: $conn));

if($query){
    echo "<center>";
    echo "<p>PARABÉNS!!!! Cadastro realizado com sucesso!! </p><br>";
    echo "<p>";
    echo "NOME: " . $nome ."<br>";
    echo "DATA NASCIMENTO: ". $dtnasc."<br>";
    echo " CELULAR: ". $celular."<br>";
    echo " E-MAIL: ". $email."<br>";
    echo "RA:".  $ra."<br>";
    echo "ENDEREÇO: " . $endereco. " " . $num_end."<br>";
    echo " BAIRRO: " . $bairro."<br>";
    echo "CIDADE ". $cidade."<br>";
    echo "</p>";
    echo "<a href='index.html'><button title='Home pago'>Voltar</button></a>";
    echo "</center>";
} else {
 echo "<center>";
 echo "<p>Não foi possível realizar o cadastro!! </p><br>";
 echo "<a href='index.html'><button title='Home pago'>Voltar</button></a>";
 echo "</center>";
}
 ?>      
 </body>
</html>