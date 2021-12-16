#!/usr/bin/env python
# coding: utf-8

# # TRADE HUB CORRETORA DE INVESTIMENTOS:
# 
# ## Projeto e desenvolvimento de sistema de banco de dados relacional - Etapa 5
# 
# 
# 

# ![WhatsApp%20Image%202021-12-14%20at%2022.11.23.jpeg](attachment:WhatsApp%20Image%202021-12-14%20at%2022.11.23.jpeg)

# **Importamos as bibliotecas Pandas e Pyodbc**

# In[1]:


import pyodbc
import pandas as pd


# **Com o código abaixo, conseguimos acessar o banco de dados SQL Server da Azure**

# In[37]:


server = 'projetopuc.database.windows.net' 
database = 'bdprojeto'
username = 'projetopuc' 
password = 'BDprojeto22'  
cnxn = pyodbc.connect('DRIVER={SQL Server};SERVER=projetopuc.database.windows.net;DATABASE=bdprojeto;UID=projetopuc;PWD=BDprojeto22')
cursor = cnxn.cursor()


# **Consulta de código e nome dos clientes** 

# In[94]:


cliente ="SELECT [cod_cliente], [nom_cliente] FROM bdprojeto.dbo.cliente;"
df_cli = pd.read_sql(cliente, cnxn)
print(df_cli.head)


# **Consulta da descrição dos ativos**

# In[95]:


ativo = "SELECT [id], [cod_ativo], [des_ativo] FROM bdprojeto.dbo.ativo;"
df_ativo = pd.read_sql(ativo, cnxn)
print(df_ativo.head)


# **Consulta da descrição das categorias dos ativos**

# In[96]:


categoria = "SELECT [id], [cod_categoria], [des_categoria] FROM bdprojeto.dbo.categoria_ativo;"
df_cat = pd.read_sql(categoria, cnxn)
print(df_cat.head)


# **Consulta do perfil de clientes**

# In[97]:


perfil = "SELECT [cod_perfil], [des_perfil] FROM bdprojeto.dbo.perfil_cliente;"
df_perfil = pd.read_sql(perfil, cnxn)
print(df_perfil.head)


# **Consulta do segmento de clientes**

# In[98]:


segmento = "SELECT [cod_segmento], [des_segmento] FROM bdprojeto.dbo.segmento_cliente;"
df_seg = pd.read_sql(segmento, cnxn)
print(df_seg.head)


# **Consulta tabela de endereço dos clientes**

# In[114]:


endereco = "SELECT [cod_endereco], [cep], [endereco] FROM bdprojeto.dbo.endereco_cliente;"
df_end = pd.read_sql(endereco, cnxn)
print(df_end.head)


# **Consulta de nome das instituições financeiras**

# In[100]:


instituicao = "SELECT [cod_instituicao], [des_instituicao] FROM bdprojeto.dbo.instituicao;"
df_inst = pd.read_sql(instituicao, cnxn)
print(df_inst.head)


# **Consulta tabela de CPF dos clientes**

# In[101]:


clientepf = "SELECT [cpf], [doc_identidade] FROM bdprojeto.dbo.cliente_pf;"
df_cpf = pd.read_sql(clientepf, cnxn)
print(df_cpf.head)


# **Consulta das 05 primeiras linhas da tabela de cotação dos ativos**

# In[102]:


cotacao = "SELECT [id], [cod_ativo_cotacao], [valor_compra_ativo], [valor_venda_ativo], [data_ativo] FROM bdprojeto.dbo.cotacao;"
df_cotacao = pd.read_sql(cotacao, cnxn)
print(df_cotacao.head(5))


# **Esse código conta quantas linhas tem a tabela cliente (dataframe cliente)**

# In[103]:


df_cli.count()


# **Esse código traz informações estatísticas da base de dados (dataframe ativo). Informações estas como: desvio padrão, média, valor mínimo e máximo de colunas, entre outras.**

# In[108]:


df_ativo.describe()


# **Esse código imprime todas colunas do dataframe (df_end)**

# In[115]:


df_end.columns


# **O pandas utiliza o matplotlib para permitir a plotagem de gráficos usando Dataframes e Séries.**

# In[123]:


get_ipython().run_line_magic('matplotlib', 'notebook')
df_cotacao['data_ativo'].plot()

