-- Tabela de usuários (clientes e funcionários)
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255), -- obrigatório apenas para funcionários
    tipo ENUM('cliente', 'funcionario') NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de categorias do menu (opcional)
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela de itens do menu
CREATE TABLE itens_menu (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    imagem_url TEXT,
    categoria_id INT,
    disponivel BOOLEAN DEFAULT TRUE, -- define se está disponível para pedidos
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    usuario_id INT, -- pode ser NULL se o cliente for anônimo
    numero_mesa INT NOT NULL, -- número da mesa que fez o pedido
    status ENUM('pendente', 'em_preparo', 'pronto', 'entregue', 'cancelado') DEFAULT 'pendente',
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Tabela de itens dentro de cada pedido
CREATE TABLE pedido_itens (
    id SERIAL PRIMARY KEY,
    pedido_id INT NOT NULL,
    item_menu_id INT NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade > 0),
    preco_unitario DECIMAL(10, 2) NOT NULL, -- preço no momento do pedido
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (item_menu_id) REFERENCES itens_menu(id)
);
