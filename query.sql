DECLARE 
@cli INT,
@data DATE,
@ativo INT

SET @cli = 6;
SET @data = '2021-11-11';
SET @ativo = 2;

SELECT
	*
FROM
	cliente as cli
INNER JOIN categoria_cliente as cat
on
	cli.cod_categoria = cat.cod_categoria
INNER JOIN segmento_cliente as seg
on
	cli.cod_segmento = seg.cod_segmento
INNER JOIN perfil_cliente as per
on
	cli.cod_perfil = per.cod_perfil
LEFT JOIN cliente_pf as cpf 
on
	cli.cpf = cpf.cpf
LEFT JOIN cliente_pj as cpj 
on
	cli.cod_cliente_pj = cpj.cod_cliente_pj
INNER JOIN telefone as tel
on
	cli.cod_telefone = tel.cod_telefone
INNER JOIN endereco_cliente as ecli
on
	cli.cod_cliente = ecli.cod_cliente
INNER JOIN municipio as cid 
on
	ecli.cod_municipio = cid.cod_municipio
INNER JOIN estado as est
on
	cid.cod_uf = est.cod_uf
INNER JOIN pais as pai
on
	est.cod_pais = pai.cod_pais
INNER JOIN cliente_tem_ativo as cta 
on
	cli.cod_cliente = cta.cliente_cod_cliente
INNER JOIN ativo as atv 
on
	cta.categoria_ativo_cod_ativo = atv.cod_ativo
INNER JOIN categoria_ativo as catv 
on
	atv.cod_ativo_categoria = catv.cod_categoria
INNER JOIN instituicao as ins 
on
	atv.cod_instituicao = ins.cod_instituicao
INNER JOIN formato_arquivo as form
on
	atv.cod_formato = form.cod_formato
INNER JOIN cotacao as cota
on
	atv.cod_ativo = cota.cod_ativo_cotacao
WHERE cli.cod_cliente  = @cli
AND CAST(cota.data_ativo as date) = @data
and atv.cod_ativo = @ativo