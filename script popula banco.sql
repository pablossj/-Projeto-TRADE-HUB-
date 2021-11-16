INSERT INTO bdprojeto.dbo.ativo
(cod_ativo, des_ativo, ind_ativo, cod_ativo_categoria, cod_formato, cod_instituicao) VALUES(1, 'BOI GORDO', 1, 1, 2, 1);


INSERT INTO bdprojeto.dbo.categoria_ativo
(cod_categoria, des_categoria) VALUES(1, 'COMMODITY');


INSERT INTO bdprojeto.dbo.categoria_cliente
(des_categoria) VALUES('Pessoa Fisica'),('Pessoa Juridica');

INSERT INTO bdprojeto.dbo.cliente
(email_cliente, nom_cliente, status, cod_categoria, cod_perfil, cod_segmento, cod_telefone, cpf, cod_cliente_pj) 
VALUES('gabrielaAraujoCarvalho@gustr.com', 'Gabriela Carvalho', 'Ativo', 1, 1, 3, 1, 19753585000, NULL);


INSERT INTO bdprojeto.dbo.cliente_pf
(cpf, doc_identidade, imagem) VALUES(19753585000, '884.028.627-64', '');


INSERT INTO bdprojeto.dbo.cliente_pj
(cnpj, insc_estadual) VALUES('13.555.278/0001-99', '388108598269');



INSERT INTO bdprojeto.dbo.cliente_tem_ativo
(cliente_cod_cliente, categoria_ativo_cod_ativo) VALUES(6, 1);



INSERT INTO bdprojeto.dbo.endereco_cliente
(cep, endereco, cod_cliente, cod_municipio) VALUES(1311923, 'Av. Paulista, 1313', 11, 5349);

INSERT INTO bdprojeto.dbo.estado
(des_uf, cod_pais)
VALUES
  ('AC', 32 )
 ,('AL', 32 )
 ,('AM', 32 )
 ,('AP', 32 )
 ,('BA', 32 )
 ,('CE', 32 )
 ,('DF', 32 )
 ,('ES', 32 )
 ,('GO', 32 )
 ,('MA', 32 )
 ,('MG', 32 )
 ,('MS', 32 )
 ,('MT', 32 )
 ,('PA', 32 )
 ,('PB', 32 )
 ,('PE', 32 )
 ,('PI', 32 )
 ,('PR', 32 )
 ,('RJ', 32 )
 ,('RN', 32 )
 ,('RO', 32 )
 ,('RR', 32 )
 ,('RS', 32 )
 ,('SC', 32 )
 ,('SE', 32 )
 ,('SP', 32 )
 ,('TO', 32 )
 
 
 INSERT INTO bdprojeto.dbo.pais
(des_pais) VALUES
('Afghanistan')
,('Åland Islands')
,('Albania')
,('Algeria')
,('American Samoa')
,('Andorra')
,('Angola')
,('Anguilla')
,('Antarctica')
,('Antigua and Barbuda')
,('Argentina')
,('Armenia')
,('Aruba')
,('Australia')
,('Austria')
,('Azerbaijan')
,('Bahamas')
,('Bahrain')
,('Bangladesh')
,('Barbados')
,('Belarus')
,('Belgium')
,('Belize')
,('Benin')
,('Bermuda')
,('Bhutan')
,('Bolivia, Plurinational State of')
,('Bonaire, Sint Eustatius and Saba')
,('Bosnia and Herzegovina')
,('Botswana')
,('Bouvet Island')
,('Brazil')
,('British Indian Ocean Territory')
,('Brunei Darussalam')
,('Bulgaria')
,('Burkina Faso')
,('Burundi')
,('Cambodia')
,('Cameroon')
,('Canada')
,('Cape Verde')
,('Cayman Islands')
,('Central African Republic')
,('Chad')
,('Chile')
,('China')
,('Christmas Island')
,('Cocos (Keeling) Islands')
,('Colombia')
,('Comoros')
,('Congo')
,('Congo, The Democratic Republic of the')
,('Cook Islands')
,('Costa Rica')
,('Côte DIvoire')
,('Croatia')
,('Cuba')
,('Curaçao')
,('Cyprus')
,('Czech Republic')
,('Denmark')
,('Djibouti')
,('Dominica')
,('Dominican Republic')
,('Ecuador')
,('Egypt')
,('El Salvador')
,('Equatorial Guinea')
,('Eritrea')
,('Estonia')
,('Ethiopia')
,('Falkland Islands (Malvinas)')
,('Faroe Islands')
,('Fiji')
,('Finland')
,('France')
,('French Guiana')
,('French Polynesia')
,('French Southern Territories')
,('Gabon')
,('Gambia')
,('Georgia')
,('Germany')
,('Ghana')
,('Gibraltar')
,('Greece')
,('Greenland')
,('Grenada')
,('Guadeloupe')
,('Guam')
,('Guatemala')
,('Guernsey')
,('Guinea')
,('Guinea-Bissau')
,('Guyana')
,('Haiti')
,('Heard Island and Mcdonald Islands')
,('Holy See (Vatican City State)')
,('Honduras')
,('Hong Kong')
,('Hungary')
,('Iceland')
,('India')
,('Indonesia')
,('Iran, Islamic Republic of')
,('Iraq')
,('Ireland')
,('Isle of Man')
,('Israel')
,('Italy')
,('Jamaica')
,('Japan')
,('Jersey')
,('Jordan')
,('Kazakhstan')
,('Kenya')
,('Kiribati')
,('Korea, Democratic Peoples Republic of')
,('Korea, Republic of')
,('Kuwait')
,('Kyrgyzstan')
,('Lao Peoples Democratic Republic')
,('Latvia')
,('Lebanon')
,('Lesotho')
,('Liberia')
,('Libya')
,('Liechtenstein')
,('Lithuania')
,('Luxembourg')
,('Macao')
,('Macedonia, The former Yugoslav Republic of')
,('Madagascar')
,('Malawi')
,('Malaysia')
,('Maldives')
,('Mali')
,('Malta')
,('Marshall Islands')
,('Martinique')
,('Mauritania')
,('Mauritius')
,('Mayotte')
,('Mexico')
,('Micronesia, Federated States of')
,('Moldova, Republic of')
,('Monaco')
,('Mongolia')
,('Montenegro')
,('Montserrat')
,('Morocco')
,('Mozambique')
,('Myanmar')
,('Namibia')
,('Nauru')
,('Nepal')
,('Netherlands')
,('New Caledonia')
,('New Zealand')
,('Nicaragua')
,('Niger')
,('Nigeria')
,('Niue')
,('Norfolk Island')
,('Northern Mariana Islands')
,('Norway')
,('Oman')
,('Pakistan')
,('Palau')
,('Palestine, State of')
,('Panama')
,('Papua New Guinea')
,('Paraguay')
,('Peru')
,('Philippines')
,('Pitcairn')
,('Poland')
,('Portugal')
,('Puerto Rico')
,('Qatar')
,('Réunion')
,('Romania')
,('Russian Federation')
,('Rwanda')
,('Saint Barthélemy')
,('Saint Helena, Ascension and Tristan da Cunha')
,('Saint Kitts and Nevis')
,('Saint Lucia')
,('Saint Martin (French Part)')
,('Saint Pierre and Miquelon')
,('Saint Vincent and the Grenadines')
,('Samoa')
,('San Marino')
,('Sao Tome and Principe')
,('Saudi Arabia')
,('Senegal')
,('Serbia')
,('Seychelles')
,('Sierra Leone')
,('Singapore')
,('Sint Maarten (Dutch Part)')
,('Slovakia')
,('Slovenia')
,('Solomon Islands')
,('Somalia')
,('South Africa')
,('South Georgia and the South Sandwich Islands')
,('South Sudan')
,('Spain')
,('Sri Lanka')
,('Sudan')
,('Suriname')
,('Svalbard and Jan Mayen')
,('Swaziland')
,('Sweden')
,('Switzerland')
,('Syrian Arab Republic')
,('Taiwan, Province of China')
,('Tajikistan')
,('Tanzania, United Republic of')
,('Thailand')
,('Timor-Leste')
,('Togo')
,('Tokelau')
,('Tonga')
,('Trinidad and Tobago')
,('Tunisia')
,('Turkey')
,('Turkmenistan')
,('Turks and Caicos Islands')
,('Tuvalu')
,('Uganda')
,('Ukraine')
,('United Arab Emirates')
,('United Kingdom')
,('United States')
,('United States Minor Outlying Islands')
,('Uruguay')
,('Uzbekistan')
,('Vanuatu')
,('Venezuela, Bolivarian Republic of')
,('Viet Nam')
,('Virgin Islands, British')
,('Virgin Islands, U.S.')
,('Wallis and Futuna')
,('Western Sahara')
,('Yemen')
,('Zambia')
,('Zimbabwe');


INSERT INTO bdprojeto.dbo.municipio
(des_municipio,
 cod_uf)
select
des_municipio,
cod_uf
from bdprojeto.dbo.stg_municipio 



INSERT INTO bdprojeto.dbo.formato_arquivo
(des_formato) VALUES('CSV');


INSERT INTO bdprojeto.dbo.instituicao
(des_instituicao) VALUES('CEPEA');



INSERT INTO bdprojeto.dbo.perfil_cliente
(des_perfil) VALUES('Conservador');


INSERT INTO bdprojeto.dbo.segmento_cliente
(des_segmento) VALUES('Diamond');


INSERT INTO bdprojeto.dbo.telefone (numero_telefone) VALUES('(54)6897-5532');



------------------------------------------------------------------------------------------------------------------------------------------------------
-- CARREGA PARA UMA TABELA TEMPORARARIA OS VALORES EXISTENTES E INSERE COM SELECT A PARTIR DA TABELA DE STAGE DO ATIVO BOI GORDO OS DADOS ATUALIZADOS
------------------------------------------------------------------------------------------------------------------------------------------------------

IF(OBJECT_ID('tempdb.dbo.#temp_cepea')IS NOT NULL)
BEGIN
	DROP TABLE #temp_cepea
END

SELECT 
CASE 
WHEN indicador = 'BOI GORDO' THEN 1
WHEN indicador = 'FRANGO' THEN 4
WHEN indicador = 'SUINO' THEN 5
END AS cod_ativo_cotacao,
valor AS valor_compra_ativo,
NULL AS valor_venda_ativo,
CONVERT(DATE,data) AS data_ativo
INTO #temp_cepea
FROM bdprojeto.dbo.stg_cepea
WHERE valor IS NOT NULL 

------------------------------------------------------------------------------------------------------------------------------------------------------
-- CARREGA PARA UMA TABELA TEMPORARARIA OS VALORES EXISTENTES E INSERE COM SELECT A PARTIR DA TABELA DE STAGE DO ATIVO USD DOS DADOS ATUALIZADOS
------------------------------------------------------------------------------------------------------------------------------------------------------

IF(OBJECT_ID('tempdb.dbo.#temp_usd')IS NOT NULL)
BEGIN
	DROP TABLE #temp_usd
END

SELECT
CASE 
WHEN indicador = 'USD' THEN 2
WHEN indicador = 'EUR' THEN 6
WHEN indicador = 'AUD' THEN 7
WHEN indicador = 'GBP' THEN 8
WHEN indicador = 'ARS' THEN 9
END AS cod_ativo_cotacao,
valor_compra AS valor_compra_ativo,
valor_venda AS valor_venda_ativo,
CONVERT(DATE,data) AS data_ativo
INTO #temp_usd
FROM bdprojeto.dbo.stg_cambio

------------------------------------------------------------------------------------------------------------------------------------------------------
-- CARREGA PARA UMA TABELA TEMPORARARIA OS VALORES EXISTENTES E INSERE COM SELECT A PARTIR DA TABELA DE STAGE DO ATIVO SELIC DOS DADOS ATUALIZADOS
------------------------------------------------------------------------------------------------------------------------------------------------------

IF(OBJECT_ID('tempdb.dbo.#temp_selic')IS NOT NULL)
BEGIN
	DROP TABLE #temp_selic
END


SELECT
3 AS cod_ativo_cotacao,
valor AS valor_compra_ativo,
NULL AS valor_venda_ativo,
CONVERT(DATE,data) AS data_ativo
INTO #temp_selic
FROM bdprojeto.dbo.stg_selic

------------------------------------------------------------
-- INICIA TRANSAÇÃO DE ATUALIZAÇÃO DOS DADOS DO ATIVO CEPEA
------------------------------------------------------------


BEGIN TRAN 


IF 

(SELECT COUNT(*) FROM #temp_cepea)> 0 

BEGIN

DELETE a
FROM bdprojeto.dbo.cotacao AS a (NOLOCK)
WHERE a.cod_ativo_cotacao IN (1,4,5)

INSERT INTO bdprojeto.dbo.cotacao
(
    cod_ativo_cotacao,
    valor_compra_ativo,
    valor_venda_ativo,
    data_ativo
)
SELECT
cod_ativo_cotacao,
valor_compra_ativo,
NULL AS valor_venda_ativo,
data_ativo
FROM #temp_cepea
WHERE valor_compra_ativo IS NOT NULL 

COMMIT

END 

ELSE  

BEGIN 

ROLLBACK

END


----------------------------------------------------------
-- INICIA TRANSAÇÃO DE ATUALIZAÇÃO DOS DADOS DO ATIVO USD
----------------------------------------------------------
BEGIN TRAN 

IF 

(SELECT COUNT(*) FROM #temp_usd)> 0 

BEGIN

DELETE a
FROM bdprojeto.dbo.cotacao AS a (NOLOCK)
WHERE a.cod_ativo_cotacao IN (2,6,7,8,9)

INSERT INTO bdprojeto.dbo.cotacao
(
    cod_ativo_cotacao,
    valor_compra_ativo,
    valor_venda_ativo,
    data_ativo
)
SELECT
cod_ativo_cotacao,
valor_compra_ativo,
valor_venda_ativo,
data_ativo
FROM #temp_usd

COMMIT

END 

ELSE  

BEGIN 

ROLLBACK

END

------------------------------------------------------------
-- INICIA TRANSAÇÃO DE ATUALIZAÇÃO DOS DADOS DO ATIVO SELIC
------------------------------------------------------------

BEGIN TRAN 

IF 

(SELECT COUNT(*) FROM #temp_selic)> 0 

BEGIN

DELETE a
FROM bdprojeto.dbo.cotacao AS a (NOLOCK)
WHERE a.cod_ativo_cotacao = 3


INSERT INTO dbo.cotacao
(
    cod_ativo_cotacao,
    valor_compra_ativo,
    valor_venda_ativo,
    data_ativo
)
SELECT
3 AS cod_ativo_cotacao,
valor_compra_ativo,
valor_venda_ativo,
data_ativo
FROM #temp_selic

COMMIT

END 

ELSE  

BEGIN 

ROLLBACK

END;





