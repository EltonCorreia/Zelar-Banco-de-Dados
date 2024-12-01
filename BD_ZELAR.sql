USE MASTER
DROP DATABASE BD_CARTAO_ZELAR

CREATE DATABASE BD_CARTAO_ZELAR
GO
USE BD_CARTAO_ZELAR
GO

CREATE TABLE comercio(
	idComercio INT PRIMARY KEY IDENTITY,
	nomeResponsavel VARCHAR(100),
	emailResponsavel VARCHAR(100) UNIQUE,
	senhaResponsavel VARCHAR(100),
	nomeComercio VARCHAR(100),
	emailComercio VARCHAR(100),
	CNPJ VARCHAR(100),
	endereco VARCHAR(100),
	numeroCartao VARCHAR(100),
	planoComercio VARCHAR(100),
	fotoComercio VARBINARY(MAX)
);
GO

CREATE TABLE CadastroCliente (
    CodigoCliente INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(200),
    Endereco VARCHAR(200),
    Telefone VARCHAR(50),
    IdCartao INT,
    Email VARCHAR(200) UNIQUE,  
    Senha VARCHAR(255),
    Pontos VARCHAR(50),         
    Datadacompra VARCHAR(50),   
    ValorCompra VARCHAR(50),    
    CodCupom VARCHAR(50)
);
GO

CREATE TABLE comercio_cliente(
idComercio_Cliente int primary key identity,
CodigoCliente int foreign key references CadastroCliente(CodigoCliente),
CodigoComercio int foreign key references comercio(idComercio),
);
GO