# Objetivo

- Criar um modelo físico utilizando SQL Power Architect.

  1. Projeto (numero_projeto*, nome_projeto, data_inicio_projeto, numero_gerente)
     Projeto_Empregado (numero_projeto*, numero_empregado*, horas_trabalhadas_projeto)
     Empregado (numero_empregado*, nome_empregado, numero_depto)
     Gerente (numero_gerente*, nome_gerente)
     Departamento (numero_depto*, nome_depto)

  2. Pedido (cod_pedido*, dat_emissao, cod_fornecedor, vlr_total_pedido)
     Pedido_Material (cod_pedido*, cod_material*, qtd_pedido, vlr_total_material)
     Material (cod_material*, dsc_material, vlr_unitario),
     Fornecedor (cod_fornecedor*, nom_fornecedor, end_fornecedor)

  3. Emprestimo (num_matricula*, num_isbn*, dat_emprestimo*, dat_devolucao)
     Aluno (num_matricula*, nom_aluno)
     Livro (num_isbn*, tit_livro, num_paginas, cod_editora)
     Editora (cod_editora*, nom_editora)
