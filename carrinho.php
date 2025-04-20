<?php
// Exemplo de item adicionado ao carrinho
$item = $_GET['item'] ?? '';

// Lógica de adicionar item ao carrinho seria aqui
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Carrinho de Compras</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <h1>Carrinho de Compras</h1>
    </header>

    <main>
        <div class="itens">
            <h2>Você escolheu: <?= htmlspecialchars($item); ?></h2>
            <p>Adicione mais itens ou finalize o pagamento</p>
            <a href="pagamento.php"><div class="opcao">Finalizar Pedido</div></a>
        </div>
    </main>

    <footer>
        <p>&copy; 2025 - Seu Restaurante</p>
    </footer>
</body>
</html>
