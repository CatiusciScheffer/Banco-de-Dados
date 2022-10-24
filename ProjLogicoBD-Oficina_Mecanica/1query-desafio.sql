use oficina;
-- 1) 	Consulta completa dos dados do Veículo e nome do Cliente
SELECT 
	cli_Cliente 'Cliente',
    vei_Placa 'Placa',
    vei_Marca 'Marca',
    vei_Modelo 'Modelo',
    vei_Ano 'Ano',
    vei_Cor
FROM
    Cliente
        INNER JOIN
    Veiculo ON idCliente = idCli_Vei
GROUP BY 
    cli_Cliente,
    idVeiculo;

-- 2)   Consultando Ordens de Serviço em Aberto por cliente  
SELECT 
	idOrdemServico 'Nº Ordem Serviço',
    cli_Cliente 'Cliente',
    vei_Placa 'Placa',
    OS_Inicio 'Data Início',
    OS_Conclusao 'Previcão de Conclusão',
    OS_Status 'Situação da O.S'
FROM
    OrdemServico
        INNER JOIN
    Cliente ON idCliente = idCli_OS
		INNER JOIN Veiculo ON idOrdSer_Vei=idOrdemServico
WHERE OS_Status = 'Iniciada'
GROUP BY 
    idOrdemServico,
    cli_Cliente,
    vei_Placa
ORDER BY cli_Cliente;
    
-- 3) Consultar as Ordens de Serviço 'Em Análise' por EQUIPE
SELECT 
    equip_Nome 'Equipe',
    equip_EspEquipe 'Tipo Serviço',
    idOrdemServico 'Ordem de Serviço',
    OS_Inicio 'Início',
    OS_Descricao 'Descrição',
    OS_Conclusao 'Previsão Conclusão',
    OS_Status 'Situação'
FROM
    Equipe
        INNER JOIN
    OrdemServico ON idEqui_OS = idEquipe
WHERE
    OS_Status = 'Em Análise'
ORDER BY equip_Nome;

-- 4) Ordens de Serviço em 'AUTORIZADA' pelo cliente para passar à equipe responsável
SELECT 
    equip_Nome 'Equipe',
    equip_EspEquipe 'Tipo Serviço',
    idOrdemServico 'Ordem de Serviço',
    OS_Inicio 'Início',
    OS_Descricao 'Descrição',
    OS_Conclusao 'Previsão Conclusão',
    OS_Status 'Situação'
FROM
    Equipe
        INNER JOIN
    OrdemServico ON idEqui_OS = idEquipe
WHERE
    OS_Status = 'Autorizada'
ORDER BY equip_Nome;

-- 5)Lista de mecânicos por equipe.
SELECT 
    mec_NomeCompleto 'Nome Mecânico', 
    equip_Nome 'Equipe'
FROM
    Mecanico,
    Equipe
WHERE
    idMecanico = idMec_Equip
GROUP BY 
	equip_Nome,
    mec_NomeCompleto
ORDER BY 
	equip_Nome;

-- 6) Listagem Geral de CLIENTES "PESSOA JURÍDICA"
SELECT 
    cli_Cliente 'Cliente PJ',
    cli_CNPJ 'CNPJ',
    end_Celular 'Contato',
    end_Logradouro 'Logradouro',
    end_Numero 'Nº',
    end_Bairro 'Bairro',
    end_CEP 'CEP',
    end_Municipio 'Município',
    end_UF 'UF'
FROM
    Cliente
        INNER JOIN
    Endereco ON idEndereco = idEndCli
WHERE cli_Tipo='Pessoa Jurídica'
ORDER BY cli_Cliente;

-- 7) Listagem Geral de CLIENTES "PESSOA FÍSICA"
SELECT 
    cli_Cliente 'Cliente PF',
    cli_CPF 'CNPJ',
    end_Celular 'Contato',
    end_Logradouro 'Logradouro',
    end_Numero 'Nº',
    end_Bairro 'Bairro',
    end_CEP 'CEP',
    end_Municipio 'Município',
    end_UF 'UF'
FROM
    Cliente
        INNER JOIN
    Endereco ON idEndereco = idEndCli
WHERE cli_Tipo='Pessoa Física'
ORDER BY cli_Cliente;

-- 8) Lista com dados completos dos funcionários
SELECT 
    mec_NomeCompleto 'Funcionário',
    end_Celular 'Contato',
    end_email 'e-mail',
    end_Logradouro 'Logradouro',
    end_Numero 'Nº',
    end_Bairro 'Bairro',
    end_CEP 'CEP',
    end_Municipio 'Município',
    end_UF 'UF'
FROM
    Mecanico
        INNER JOIN
    Endereco ON idEndereco = idEnd_Mec
ORDER BY mec_NomeCompleto;

-- 9)Faturamento dos Serviço por Ordem de Serviços 'CONCLUÍDA'
SELECT 
	idOrdemServico 'OS',
    OS_Descricao 'Descrição Serviço',
    OS_Status 'Situação',
    servOS_Quantidade 'Quantidade',
    serv_Descricao 'Resumo Serviço',
    concat('R$',' ',serv_ValorUnitario) 'R$ Unidade',
    concat('R$',' ', round((servOS_Quantidade * serv_ValorUnitario),2)) AS Total
FROM OrdemServico
INNER JOIN Servicos_OS ON idOrdemServico=idOrdSer_ServicosOS
INNER JOIN Servicos ON idServicos=idServicos_OS
WHERE OS_Status='Concluída'
GROUP BY 
	idOrdemServico,
	OS_Descricao,
    OS_Status,
    servOS_Quantidade,
    serv_Descricao,
    serv_ValorUnitario
ORDER BY 
	idOrdemServico;

-- 10)Faturamento dos Materiais por Ordem de Serviços 'CONCLUÍDA'
SELECT 
	idOrdemServico 'OS',
    OS_Descricao 'Descrição Materiais',
    OS_Status 'Situação',
    matOS_Quantidade 'Quantidade',
    mat_Descricao 'Resumo Materiais',
    concat('R$',' ',mat_ValorUnitario) 'R$ Unidade',
    concat('R$',' ', round((matOS_Quantidade * mat_ValorUnitario),2)) AS Total
FROM OrdemServico
INNER JOIN Materiais_OS ON idOrdemServico=idOrdSer_MateriaisOS
INNER JOIN Materiais ON idMateriais=idMateriais_MateriaisOS
WHERE OS_Status='Concluída'
GROUP BY 
	idOrdemServico,
	OS_Descricao,
    OS_Status,
    matOS_Quantidade,
    mat_Descricao,
    mat_ValorUnitario
ORDER BY 
	idOrdemServico;

-- 11) Faturamento em Materiais

SELECT 
	idOrdemServico 'OS',
    OS_Descricao 'Descrição Serviço',
    OS_Status 'Situação',
    servOS_Quantidade 'Quantidade',
    serv_Descricao 'Resumo Serviço',
    concat('R$',' ',serv_ValorUnitario) 'R$ Unidade',
    concat('R$',' ', round((servOS_Quantidade * serv_ValorUnitario),2)) AS Total
FROM OrdemServico
INNER JOIN Servicos_OS ON idOrdemServico=idOrdSer_ServicosOS
INNER JOIN Servicos ON idServicos=idServicos_OS
WHERE OS_Status='Concluída' AND idOrdemServico='5010'
GROUP BY 
	idOrdemServico,
	OS_Descricao,
    OS_Status,
    servOS_Quantidade,
    serv_Descricao,
    serv_ValorUnitario
ORDER BY 
	idOrdemServico;

-- ***

SELECT 
	idOrdemServico 'OS',
    OS_Descricao 'Descrição Materiais',
    OS_Status 'Situação',
    matOS_Quantidade 'Quantidade',
    mat_Descricao 'Resumo Materiais',
    concat('R$',' ',mat_ValorUnitario) 'R$ Unidade',
    concat('R$',' ', round((matOS_Quantidade * mat_ValorUnitario),2)) AS Total
FROM OrdemServico
INNER JOIN Materiais_OS ON idOrdemServico=idOrdSer_MateriaisOS
INNER JOIN Materiais ON idMateriais=idMateriais_MateriaisOS
WHERE OS_Status='Concluída' AND idOrdemServico = '5010'
GROUP BY 
	idOrdemServico,
	OS_Descricao,
    OS_Status,
    matOS_Quantidade,
    mat_Descricao,
    mat_ValorUnitario
ORDER BY 
	idOrdemServico;







