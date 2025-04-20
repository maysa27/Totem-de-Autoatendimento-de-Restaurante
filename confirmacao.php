<?php
$pagamento = $_POST['pagamento'] ?? '';

// Aqui você pode adicionar lógica de processamento do pagamento
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Confirmação do Pedido</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Pedido Confirmado</h1>
    </header>

    <main>
        <p>Seu pedido foi confirmado!</p>
        <p>Forma de pagamento: <?= htmlspecialchars($pagamento); ?></p>
        <a href="index.php"><div class="opcao">Voltar ao Início</div></a>
    </main>

    <footer>
        <p>&copy; 2025 - Seu Restaurante</p>
    </footer>
</body>
</html>
