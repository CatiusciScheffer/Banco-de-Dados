CREATE DATABASE ecommerce;
USE ecommerce;

-- DROP DATABASE ecommerce;

-- criar a tabela de cliente
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT,
    cliente_CPF CHAR(11) NOT NULL,
    cliente_Pnome VARCHAR(25) NOT NULL,
    cliente_SegundoNome VARCHAR(15),
    cliente_Sobrenome VARCHAR(15),
    cliente_DtNasc DATE NOT NULL,
    cliente_Logradouro VARCHAR(35),
    cliente_numero VARCHAR(5),
    cliente_complemento VARCHAR(25) DEFAULT 'Sem',
    cliente_Bairro VARCHAR(20),
    cliente_CEP CHAR(8),
    cliente_Municipio VARCHAR(40),
    cliente_UF CHAR(7) DEFAULT 'SP',
    cliente_Pais VARCHAR(25) DEFAULT 'Brasil',
    cliente_email VARCHAR(60),
    cliente_celular CHAR(11),
    cliente_telefone CHAR(10),
    CONSTRAINT PK_cliente_id PRIMARY KEY Cliente(idCliente),
    CONSTRAINT UN_cliente_cpf UNIQUE Cliente(cliente_CPF)
);

ALTER TABLE Cliente AUTO_INCREMENT=1;

-- criar tabela produto
CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT,
    produto_Nome VARCHAR(45) NOT NULL,
    produto_Marca VARCHAR(30),
    produto_Modelo VARCHAR(20),
    produto_categoria ENUM('Eletrônicos', 'Eletrodomésticos', 'Cama, Mesa e Banho', 
    'Utilidades domésticas', 'Vestuário', 'Calçados', 'Ferramentas') NOT NULL,
    CONSTRAINT PK_produto_id PRIMARY KEY Produto(idProduto)
);

ALTER TABLE Produto AUTO_INCREMENT=1;

-- criar tabela pedido (order)
CREATE TABLE Pedido (
    idPedido INT AUTO_INCREMENT,
    idClientePedido INT,
    pedido_Descricao VARCHAR(255),
    pedido_Status ENUM('Andamento', 'Processando', 'Enviado', 'Entregue', 'Cancelado') DEFAULT 'Processando',
    pedido_codRastreio VARCHAR(45),
    pedido_VrlFrete FLOAT,
    pedido_pagto_boleto TINYINT(5) DEFAULT FALSE,
    CONSTRAINT PK_Pedido_id PRIMARY KEY Pedido (idPedido),
    CONSTRAINT FK_pedido_cliente FOREIGN KEY (idClientePedido)
        REFERENCES Cliente (idCliente)
        ON UPDATE CASCADE
);

ALTER TABLE Pedido AUTO_INCREMENT=1;

-- criar tabela Pagamento
CREATE TABLE Pagamento (
    idPagamento INT,
    idClientePagto INT,
    idPedidoPagto INT,
    pagto_Tipo ENUM('Cartão Crédito', 'Cartão Débito', 'Pix', 'Boleto') DEFAULT 'PIX',
    pagto_cartao_num VARCHAR(15),
    pagto_cartao_validade CHAR(5) DEFAULT 'MM/AA',
    pagto_cartão_cvv SMALLINT(3),
    -- pagto_Total FLOAT DEFAULT 0, não preciso pois tenho o total consultando tabela produto/pedido
    CONSTRAINT PKC_pagamento_cliente PRIMARY KEY Pagamento (idPagamento, idClientePagto),
    CONSTRAINT FK_pagamento_pedido FOREIGN KEY (idPedidoPagto)
        REFERENCES Pedido (idPedido)
);

ALTER TABLE Pagamento AUTO_INCREMENT=1;

-- criar tabela estoque
CREATE TABLE Estoque (
    idEstoque INT AUTO_INCREMENT,
    estoque_local VARCHAR(255) NOT NULL,
    estoque_Qtd INT DEFAULT 0,
    CONSTRAINT PK_Estoque_id PRIMARY KEY Estoque (idEstoque)
);

ALTER TABLE Estoque AUTO_INCREMENT=1;

-- criar tabela fornecedor (suplier)
CREATE TABLE Fornecedor (
    idFornecedor INT AUTO_INCREMENT,
    fornecedor_CNPJ CHAR(17) NOT NULL,
    fornecedor_RazaSocial VARCHAR(60) NOT NULL,
    fornecedor_NomeFantasia VARCHAR(25),
    fornecedor_Logradouro VARCHAR(35),
    fornecedor_numero VARCHAR(5),
    fornecedor_complemento VARCHAR(25) DEFAULT 'Sem',
    fornecedor_Bairro VARCHAR(20),
    fornecedor_CEP CHAR(8),
    fornecedor_Municipio VARCHAR(40),
    fornecedor_UF CHAR(7) DEFAULT 'SP',
    fornecedor_Pais VARCHAR(25) DEFAULT 'Brasil',
    fornecedor_email VARCHAR(60) NOT NULL,
    fornecedor_celular CHAR(11),
    fornecedor_telefone CHAR(10) NOT NULL,
    CONSTRAINT PK_fornecedor_id PRIMARY KEY Fornecedor(idFornecedor),
    CONSTRAINT UN_fornecedor_cnpj UNIQUE Fornecedor(fornecedor_CNPJ)
);

ALTER TABLE Fornecedor AUTO_INCREMENT=1;

-- criar tabela vendedor terceiro (seler)
CREATE TABLE VendedorTerceiro (
    idVendTerc INT AUTO_INCREMENT,
    vendTerc_CNPJ CHAR(17) NOT NULL,
    vendTerc_RazaSocial VARCHAR(60) NOT NULL,
    vendTerc_NomeFantasia VARCHAR(25),
    vendTerc_Logradouro VARCHAR(35),
    vendTerc_numero VARCHAR(5),
    vendTerc_complemento VARCHAR(25),
    vendTerc_Bairro VARCHAR(20),
    vendTerc_CEP CHAR(8),
    vendTerc_Municipio VARCHAR(40),
    vendTerc_UF CHAR(7) DEFAULT 'SP',
    vendTerc_Pais VARCHAR(25) DEFAULT 'Brasil',
    vendTerc_email VARCHAR(60) NOT NULL,
    vendTerc_celular CHAR(11),
    vendTerc_telefone CHAR(10) NOT NULL,
    CONSTRAINT PK_vendTerc_id PRIMARY KEY VendedorTerceiro(idVendTerc),
    CONSTRAINT UN_vendterc_cnpj UNIQUE VendedorTerceiro(vendTerc_CNPJ)
);

ALTER TABLE VendedorTerceiro AUTO_INCREMENT=1;

-- criar tabela produtos por vendedor terceiro (productSeller)
CREATE TABLE Produto_VT (
    idProduto_VT INT,
    idProdutoVendedorTerceiro INT,
    produtoVT_Qtd INT DEFAULT 1,
    CONSTRAINT PKC_idProd_VT_ProdVenTerc PRIMARY KEY (idProduto_VT, idProdutoVendedorTerceiro),
    CONSTRAINT FK_ProdutoVT_VendedorTerceiro FOREIGN KEY (idProduto_VT)
        REFERENCES VendedorTerceiro (idVendTerc),
    CONSTRAINT FK_ProdutoVT_Produto FOREIGN KEY (idProdutoVendedorTerceiro)
        REFERENCES Produto (idProduto)
);

-- criar tabela produtos por fornecedor (*productstorage)
CREATE TABLE Produto_Fornecedor (
    idFornProd INT,
    idProdForn INT,
    fornprod_Qtd INT DEFAULT 1,
    CONSTRAINT PKC_FornProd_ProdForn PRIMARY KEY (idFornProd , idProdForn),
    CONSTRAINT FK_prodForn_fornecedor FOREIGN KEY (idFornProd)
        REFERENCES Fornecedor (idFornecedor),
    CONSTRAINT FK_prodForn_produto FOREIGN KEY (idProdForn)
        REFERENCES Produto (idProduto)
);

-- criar tabela Produto por Pedido_Carrinho (productOrder)
CREATE TABLE Produto_Pedido (
    idProdPed INT,
    idPedProd INT,
    pedprod_Quantidade INT DEFAULT 1,
    pedprod_Status ENUM('Disponível', 'Sem Estoque') DEFAULT 'Disponível',
    pedprod_VLR_unitario FLOAT,
    -- pedprod_VLR_Total FLOAT, não preciso armazenar esse valor pois posso obter com consulta
    pedprod_dataPedido DATE,
    -- pedprod_entrega DATE, tb não preciso posso calcular por consulta com regras
    CONSTRAINT PKC_produto_pedido PRIMARY KEY (idProdPed , idPedProd),
    CONSTRAINT FK_prodPedido_produto FOREIGN KEY (idProdPed)
        REFERENCES Produto (idProduto),
    CONSTRAINT FK_prodPedido_pedido FOREIGN KEY (idPedProd)
        REFERENCES Pedido (idPedido)
);

-- criar tabela produto por estoque (storageLocation)
CREATE TABLE Produto_Estoque (
    idProdEstoq INT,
    idEstoqProd INT,
    estoqprod_Local VARCHAR(255) NOT NULL,
    CONSTRAINT PKC_produto_estoque PRIMARY KEY (idProdEstoq , idEstoqProd),
    CONSTRAINT FK_prodEstoq_Produto FOREIGN KEY (idProdEstoq)
        REFERENCES Produto (idProduto),
    CONSTRAINT FK_prodEstoq_Estoque FOREIGN KEY (idEstoqProd)
        REFERENCES Estoque (idEstoque)
);





