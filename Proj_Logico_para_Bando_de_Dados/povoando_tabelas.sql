USE ecommerce;
SELECT * FROM Cliente;
SELECT * FROM Estoque;
SELECT * FROM Fornecedor;
SELECT * FROM Pagamento;
SELECT * FROM Pedido;
SELECT * FROM Produto;
SELECT * FROM VendedorTerceiro;
SELECT * FROM Produto_Estoque;
SELECT * FROM Produto_Fornecedor;
SELECT * FROM Produto_Pedido;
SELECT * FROM Produto_VT;

/*
-- povoando tabela cliente
INSERT INTO `ecommerce`.`Cliente` (`cliente_CPF`, `cliente_Pnome`, `cliente_SegundoNome`, `cliente_Sobrenome`, `cliente_DtNasc`, `cliente_Logradouro`, `cliente_numero`, `cliente_complemento`, `cliente_Bairro`, `cliente_CEP`, `cliente_Municipio`, `cliente_UF`, `cliente_Pais`, `cliente_email`, `cliente_celular`, `cliente_telefone`) 
VALUES ('56214587145', 'ANNIE', 'NELIA', 'SILVA', '1969-12-01', 'AVENIDA ASSIS', '12100', '', 'ANTA GORDA', '93635122', 'JACAREZINHO', 'MG', '', 'terare45d@gmail.com', '63985632258', '6334712236'),
('00156289741', 'MARIA', 'DE FÁTIMA', 'NÓBREGA', '1970-10-02', 'AVENIDA BRASIL', '2100', '', 'SANTO AFONSO', '92635496', 'SANTO ANDRÉ', 'RJ', '', 'tageg123@gmail.com', '11998566358', '1134718596'),
('81356289569', 'LOURDES', 'CARLA', 'SOUZA', '1980-09-05', 'AVENIDA DA REPÚBLICA', '12', '', 'JARDIM ITU', '94635128', 'MUÇAMBIQUE', 'BA', '', 'JDNDHD@gmail.com', '47859623365', '4734639852'),
('45956289554', 'JOSEFA', '', 'OLIVEIRA', '1992-08-12', 'AVENIDA JUSCELINO', '1056', '', 'CAXIAS', '85035220', 'AMAPÁ', 'ES', '', 'agefsaw@gmail.com', '47874523369', '4734968525'),
('14985632511', 'PAULO', 'ROBERTO', 'CRUZ', '1995-07-15', 'AVENIDA MARZAN', '1050', '', 'PELOTAS', '76556920', 'ACRE', 'RJ', '', 'malaishs12@gmail.com', '41589763325', '413962587'),
('00212547896', 'ADÃO', 'DE JESUS', 'SANTOS', '2003-06-17', 'AVENIDA BALTAZAR', '125', '', 'FLORIANÓPOLIS', '12569156', 'RONDÔNIA', 'RS', '', 'tesrtec@gmail.com', '35989415587', '3534857412'),
('26584596234', 'CLEUSA', 'MADRE', 'PAVAN', '2001-05-25', 'AVENIDA FLORES DA CUNHA', '1450', '', 'PORTO SEGURO', '47835485', 'BAHIA', 'SP', '', 'dgjagjd@gmail.com', '12985763352', '1234758696'),
('31973146815', 'MIRTIZ', '', 'PAIM', '1960-03-30', 'AVENIDA CECÍLIA', '10120', '', 'MACAPÁ', '12335459', 'RIO DE JANEIRO', 'BH', '', 'sdsd@gmail.com', '11956823696', '1134859752'),
('42565896415', 'DÁLIA', '', 'CHAVES', '1982-12-28', 'AVENIDA MEIRELLES', '1102', '', 'ITAMBUÍ', '59635415', 'SÃO PAULO', 'BA', '', 'sdsd1985@gmail.com', '54986254419', '5434716396'),
('78923645125', 'NILVA', 'SEVADA', 'BITENCOURT', '1978-02-25', 'RUA VINTE E OITO', '16', '', 'ESMERALDA', '47835000', 'PÂNTANO GRANDE', 'RR', '', 'sdsdee@gmail.com', '53978542285', '5334965287'),
('75935126817', 'HERICA', 'MARIA', 'SCHEFFER', '1985-01-29', 'RUA TAPICIRICA', '456', '', 'VACARIA', '88835999', 'SERGIPE', 'SP', '', 'ddjgediw4646@gmail.com', '51985632254', '5134758856'),
('35175915739', 'ELAINE', 'DE SÁ', 'PAGNONCELI', '1959-03-12', 'TRAVESSA DO MEIO', '326', '', 'OSÓRIO', '98535555', 'CAXIAS DO SUL', 'ES', '', 'sdfsdfsdfs885@gmail.com', '84985632247', '8434695287'),
('15698452365', 'LIANE', '', 'SILVEIRA', '1949-04-09', 'BECO A', '1856', '', 'PEDRO LEITÃO', '56935454', 'PORTÃO', 'RJ', '', 'sdfsfdw585@gmail.com', '5198754263', '5134785969'),
('56984523657', 'CARMEM', 'LÚCIA', 'PORTO', '2008-12-06', 'TRAVESSA AZURRA', '456', '', 'MOÇORÓ', '42635123', 'ALEGRE', 'RS', '', 'jalara@gmail.com', '51958265584', '513596598');

-- povoando tabela produtos
INSERT INTO `ecommerce`.`Produto` (`produto_Nome`, `produto_Marca`, `produto_Modelo`, `produto_categoria`) 
VALUES ('NOTEBOOK 17', 'ASUS', 'JOY', 'Eletrônicos'),
('NOTEBOOK 14', 'HP', 'JOY', 'Eletrônicos'),
('CELULAR', 'SANSUNG', 'A30', 'Eletrônicos'),
('MONITOR 32"', 'SANSUNG', 'SLIM', 'Eletrônicos'),
('LENÇOL QUEEN', 'CASAHOME', 'QUEEN', 'Cama, Mesa e Banho'),
('LUMINÁRIA', 'LUMINIX', 'SOBREPOR', 'Utilidades domésticas'),
('FOGÃO', 'BRITÂNIA', 'F0486', 'Eletrodomésticos'),
('GELADEIRA', 'CONSUL', 'F46', 'Eletrodomésticos'),
('MÁQUINA DE LAVAR ROUPAS', 'BRITÂNIA', 'MQ23', 'Eletrodomésticos'),
('BATEDEIRA', 'BRITÂNIA', 'BAT01', 'Eletrodomésticos'),
('FACA DE CHURRASCO', 'TRAMONTINA', 'CHURRAS01', 'Utilidades domésticas'),
('CAMISA SOCIAL', 'CASUS', 'CAM', 'Vestuário'),
('CALÇA JEANS', 'TOPPER', 'MASCULINA', 'Vestuário'),
('SAPATO MASCULINO', 'PEGADA', 'SAP458', 'Calçados'),
('FURADEIRA E PARAFUSADEIRA', 'BACKDDECKER', 'F46', 'Utilidades domésticas'),
('TV', 'LG', '49', 'Eletrodomésticos'),
('MOUSE', 'MULTILASER', 'OPTICO', 'Eletrônicos'),
('VÍDEO GAME', 'PLAYSTATION', '5', 'Eletrônicos'),
('CONTROLE', 'TV', 'X26', 'Eletrônicos'),
('LIQUIDIFICADOR', 'BRITÂNIA', 'LIQ452', 'Eletrodomésticos'),
('PANO DE PRATO', 'CASAHOME', 'MESQUAD', 'Cama, Mesa e Banho'),
('NETBOOK 18.1', 'DELL', 'D256', 'Eletrônicos');

-- povoando tabela Pedidos
INSERT INTO `ecommerce`.`Pedido` (`idClientePedido`, `pedido_Descricao`, `pedido_Status`, `pedido_codRastreio`, `pedido_VrlFrete`, `pedido_pagto_boleto`) 
VALUES ('2', 'COMPRA LOJA FÍSICA', 'Andamento', 'EBX45639', '17.99', DEFAULT),
('3', 'COMPRA LOJA FÍSICA', 'Andamento', 'EBX45640', '37.58', DEFAULT),
('4', 'COMPRA LOJA FÍSICA', 'Entregue', 'EBX45633', '90.52', DEFAULT),
('5', 'COMPRA LOJA FÍSICA', 'Entregue', 'EBX45700', '100.45', DEFAULT),
('6', 'COMPRA APP', 'Entregue', 'EBX44569', '30', DEFAULT),
('7', 'COMPRA APP', 'Entregue', 'EBX45258', '38', DEFAULT),
('8', 'COMPRA ONLINE', 'Entregue', 'EBX45147', '14', DEFAULT),
('9', 'COMPRA ONLINE', 'Entregue', 'EBX41564', '12.99', DEFAULT),
('10', 'COMPRA ONLINE', 'Entregue', 'EBX4513', '16', DEFAULT),
('11', 'COMPRA ONLINE', 'Processando', 'EBX45456', '17.45', DEFAULT),
('12', 'COMPRA APP', 'Processando', 'EBX45789', '14.25', TRUE),
('13', 'COMPRA APP', 'Processando', 'EBX45456', '22.25', TRUE),
('14', 'COMPRA ONLINE', 'Cancelado', 'EBX45123', '75.25', TRUE);

-- povoando tabela fornecedores
INSERT INTO `ecommerce`.`Fornecedor` (`fornecedor_CNPJ`, `fornecedor_RazaSocial`, `fornecedor_NomeFantasia`, `fornecedor_Logradouro`, `fornecedor_numero`, `fornecedor_complemento`, `fornecedor_Bairro`, `fornecedor_CEP`, `fornecedor_Municipio`, `fornecedor_UF`, `fornecedor_Pais`, `fornecedor_email`, `fornecedor_celular`, `fornecedor_telefone`) 
VALUES ('04526978000145', 'MGM BAZAR LTDA', 'MGM', 'AVENIDA ANDRADAS', '3600', 'DEFAULT', 'NAVEGANTES', '94935130', 'RIO DE JANEIRO', 'DEFAULT', 'DEFAULT', 'AMSNJDJD@gmail.com', '21985425578', '2134569887'),
('45698752000125', 'BIG VARIEDADES LTDA', 'BIG', 'AVENIDA SÃO MARCOS', '458', 'DEFAULT', 'MARINHA', '91963458', 'PORTO ALEGRE', 'DEFAULT', 'DEFAULT', 'amsndjhf@gmail.com', '51987528597', '5134785236'),
('45871236000154', 'AMBEBA LTDA', 'AMEBA', 'AVENIDA SILVA SÓ', '458', 'DEFAULT', 'CENTRO', '94963852', 'BAHIA', 'DEFAULT', 'DEFAULT', 'csdhsldsljdjdls@gmail.com', '65985264478', '6534125698'),
('02365874000156', 'AZAMBUJA LTDA', 'AZAMBUJA', 'AVENIDA MARIANTES', '123', 'DEFAULT', 'PARTENON', '91258645', 'FORTALEZA', 'DEFAULT', 'DEFAULT', 'jshdkshd@gmail.com', '88987526985', '8834568923'),
('89756325000148', 'M&M ELETRÔNICOS LTDA', '', 'AVENIDA PROTÁSIO ALVES', '4560', 'DEFAULT', 'LINDOIA', '85963123', 'RIO BRANCO', 'DEFAULT', 'DEFAULT', 'ssjhshdkskksksks@gmail.com', '75987524578', '7534256989');

-- povoando tabela vendedor terceiro/externo
INSERT INTO `ecommerce`.`VendedorTerceiro` (`vendTerc_CNPJ`, `vendTerc_RazaSocial`, `vendTerc_NomeFantasia`, `vendTerc_Logradouro`, `vendTerc_numero`, `vendTerc_complemento`, `vendTerc_Bairro`, `vendTerc_CEP`, `vendTerc_Municipio`, `vendTerc_UF`, `vendTerc_Pais`, `vendTerc_email`, `vendTerc_celular`, `vendTerc_telefone`) 
VALUES ('54785213000348', 'TBT BAZAR & VARIEDADE LTDA', 'MGM', 'AVENIDA ANDRADE NEVES', '3600', 'DEFAULT', 'NAVEGANTES', '94935130', 'RIO BRANCO', 'DEFAULT', 'DEFAULT', 'DSDmans@gmail.com', '21985424587', '2134569874'),
('75963154000178', 'BCC ATACADO DE ELETRÔNICOS LTDA', 'BIG', 'AVENIDA SÃO PAULO', '458', 'DEFAULT', 'MARINHA', '91963458', 'PORTO FELIZ', 'DEFAULT', 'DEFAULT', 'forn22@gmail.com', '51987521234', '5134785246'),
('15342679000156', 'CELSO VAREJO LTDA', 'AMEBA', 'AVENIDA SILVA MARIA', '458', 'DEFAULT', 'CENTRO', '94963852', 'ARMINDO CORRÊA', 'DEFAULT', 'DEFAULT', 'dieskfs@gmail.com', '65985267896', '6534125612'),
('45678912000256', 'ARNICA SABARÁ LTDA', 'AZAMBUJA', 'AVENIDA MARTA ESTEVES', '123', 'DEFAULT', 'PARTENON', '91258645', 'CÁGADOS', 'DEFAULT', 'DEFAULT', 'diasjdjjd@gmail.com', '88987524552', '8834568919'),
('52396587000345', 'TCBO ELETRÔNICOS LTDA', '', 'AVENIDA PROTÁSIO SOARES', '4560', 'DEFAULT', 'LINDOIA', '85963123', 'RIO PARDO', 'DEFAULT', 'DEFAULT', 'armando5565@gmail.com', '75987524415', '7534256973');

*/

