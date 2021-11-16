CREATE TABLE bdprojeto.dbo.ativo (
id int IDENTITY(1,1) NOT NULL,
cod_ativo int NOT NULL,
des_ativo varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
ind_ativo binary NOT NULL,
cod_ativo_categoria int NOT NULL,
cod_formato int NULL,
cod_instituicao int NULL,
CONSTRAINT PK_ATIVO PRIMARY KEY (cod_ativo)
);
ALTER TABLE bdprojeto.dbo.ativo ADD CONSTRAINT ativo_fk0 FOREIGN KEY (cod_ativo_categoria) REFERENCES bdprojeto.dbo.categoria_ativo(cod_categoria) ON UPDATE CASCADE;
ALTER TABLE bdprojeto.dbo.ativo ADD CONSTRAINT fk_formato_arquivo FOREIGN KEY (cod_formato) REFERENCES bdprojeto.dbo.formato_arquivo(cod_formato);
ALTER TABLE bdprojeto.dbo.ativo ADD CONSTRAINT fk_instituicao FOREIGN KEY (cod_instituicao) REFERENCES bdprojeto.dbo.instituicao(cod_instituicao);

-------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE bdprojeto.dbo.categoria_ativo (
id int IDENTITY(1,1) NOT NULL,
cod_categoria int NOT NULL,
des_categoria varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
CONSTRAINT PK_CATEGORIA_ATIVO PRIMARY KEY (cod_categoria)
);

-------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE bdprojeto.dbo.categoria_cliente (
cod_categoria int IDENTITY(1,1) NOT NULL,
des_categoria varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
CONSTRAINT PK__categori__F05222079CE9D9E6 PRIMARY KEY (cod_categoria)
);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.cliente (
cod_cliente int IDENTITY(1,1) NOT NULL,
email_cliente varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
nom_cliente varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
status varchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
cod_categoria int NOT NULL,
cod_perfil int NOT NULL,
cod_segmento int NOT NULL,
cod_telefone int NOT NULL,
cpf bigint NULL,
cod_cliente_pj int NULL,
CONSTRAINT PK__cliente__08ED61F356282C2E PRIMARY KEY (cod_cliente)
);
 
 
ALTER TABLE bdprojeto.dbo.cliente ADD CONSTRAINT FK__cliente__cod_cli__42ACE4D4 FOREIGN KEY (cod_cliente_pj) REFERENCES bdprojeto.dbo.cliente_pj(cod_cliente_pj);
ALTER TABLE bdprojeto.dbo.cliente ADD CONSTRAINT categoria_cliente_cod_categoria FOREIGN KEY (cod_categoria) REFERENCES bdprojeto.dbo.categoria_cliente(cod_categoria);
ALTER TABLE bdprojeto.dbo.cliente ADD CONSTRAINT cliente_pf_cpf FOREIGN KEY (cpf) REFERENCES bdprojeto.dbo.cliente_pf(cpf);
ALTER TABLE bdprojeto.dbo.cliente ADD CONSTRAINT perfil_cliente_cod_perfil FOREIGN KEY (cod_perfil) REFERENCES bdprojeto.dbo.perfil_cliente(cod_perfil);
ALTER TABLE bdprojeto.dbo.cliente ADD CONSTRAINT segmento_cliente_cod_segmento FOREIGN KEY (cod_segmento) REFERENCES bdprojeto.dbo.segmento_cliente(cod_segmento);
ALTER TABLE bdprojeto.dbo.cliente ADD CONSTRAINT telefone_cod_telefone FOREIGN KEY (cod_telefone) REFERENCES bdprojeto.dbo.telefone(cod_telefone);

-------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE bdprojeto.dbo.cliente_pf (
cpf bigint NOT NULL,
doc_identidade varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
imagem image NULL,
CONSTRAINT PK__cliente___D836E71EE44EF97F PRIMARY KEY (cpf)
);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.cliente_pj (
cnpj varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
insc_estadual varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
cod_cliente_pj int IDENTITY(1,1) NOT NULL,
CONSTRAINT PK__cliente___2C2E789082D0E717 PRIMARY KEY (cod_cliente_pj)
);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.cliente_tem_ativo (
ID int IDENTITY(1,1) NOT NULL,
cliente_cod_cliente int NOT NULL,
categoria_ativo_cod_ativo int NOT NULL,
CONSTRAINT PK__cliente___3214EC275BDBE6D3 PRIMARY KEY (ID)
);
 
ALTER TABLE bdprojeto.dbo.cliente_tem_ativo ADD CONSTRAINT FK__cliente_t__categ__382F5661 FOREIGN KEY (categoria_ativo_cod_ativo) REFERENCES bdprojeto.dbo.ativo(cod_ativo);
ALTER TABLE bdprojeto.dbo.cliente_tem_ativo ADD CONSTRAINT FK__cliente_t__clien__373B3228 FOREIGN KEY (cliente_cod_cliente) REFERENCES bdprojeto.dbo.cliente(cod_cliente);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.cotacao (
id int IDENTITY(1,1) NOT NULL,
cod_ativo_cotacao int NOT NULL,
valor_compra_ativo decimal(10,4) NOT NULL,
valor_venda_ativo decimal(10,4) NULL,
data_ativo datetime NOT NULL,
CONSTRAINT PK_COTACAO PRIMARY KEY (cod_ativo_cotacao,data_ativo,id)
);
 
ALTER TABLE bdprojeto.dbo.cotacao ADD CONSTRAINT cotacao_fk0 FOREIGN KEY (cod_ativo_cotacao) REFERENCES bdprojeto.dbo.ativo(cod_ativo) ON UPDATE CASCADE;

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.endereco_cliente (
cod_endereco int IDENTITY(1,1) NOT NULL,
cep int NULL,
endereco varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
cod_cliente int NOT NULL,
cod_municipio int NOT NULL,
CONSTRAINT PK__endereco__EE00463D994A6434 PRIMARY KEY (cod_endereco)
);
 ALTER TABLE bdprojeto.dbo.endereco_cliente ADD CONSTRAINT FK__endereco___cod_m__2F9A1060 FOREIGN KEY (cod_municipio) REFERENCES bdprojeto.dbo.municipio(cod_municipio);
ALTER TABLE bdprojeto.dbo.endereco_cliente ADD CONSTRAINT cliente_cod_cliente FOREIGN KEY (cod_cliente) REFERENCES bdprojeto.dbo.cliente(cod_cliente);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.estado (
cod_uf int IDENTITY(1,1) NOT NULL,
des_uf varchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
cod_pais int NOT NULL,
CONSTRAINT PK__estado__9B1BE2CA66C5E395 PRIMARY KEY (cod_uf)
);
ALTER TABLE bdprojeto.dbo.estado ADD CONSTRAINT pais_cod_pais FOREIGN KEY (cod_pais) REFERENCES bdprojeto.dbo.pais(cod_pais);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.formato_arquivo (
cod_formato int IDENTITY(1,1) NOT NULL,
des_formato varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
CONSTRAINT PK__formato___55A0A8CF2473A7AD PRIMARY KEY (cod_formato)
);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.instituicao (
cod_instituicao int IDENTITY(1,1) NOT NULL,
des_instituicao varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
CONSTRAINT PK__institui__70FC793621D64F7A PRIMARY KEY (cod_instituicao)
);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.municipio (
cod_municipio int IDENTITY(1,1) NOT NULL,
des_municipio varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
cod_uf int NOT NULL,
CONSTRAINT PK__municipi__5E09AC278497B0E7 PRIMARY KEY (cod_municipio)
);
 ALTER TABLE bdprojeto.dbo.municipio ADD CONSTRAINT FK__municipio__cod_u__2EA5EC27 FOREIGN KEY (cod_uf) REFERENCES bdprojeto.dbo.estado(cod_uf);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.pais (
cod_pais int IDENTITY(1,1) NOT NULL,
des_pais varchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
CONSTRAINT PK__pais__CB1379BB2310D589 PRIMARY KEY (cod_pais)
);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.perfil_cliente (
cod_perfil int IDENTITY(1,1) NOT NULL,
des_perfil varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
CONSTRAINT PK__perfil_c__CFF19CCA6CA94035 PRIMARY KEY (cod_perfil)
);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.segmento_cliente (
cod_segmento int IDENTITY(1,1) NOT NULL,
des_segmento varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
CONSTRAINT PK__segmento__EC275DA910A74D60 PRIMARY KEY (cod_segmento)
);

-------------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE bdprojeto.dbo.telefone (
cod_telefone int IDENTITY(1,1) NOT NULL,
numero_telefone varchar(45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
CONSTRAINT PK__telefone__8D0C7913E5F270B2 PRIMARY KEY (cod_telefone)
);
