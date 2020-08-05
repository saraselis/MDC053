# Objetivo

- Converter cada DER para a notação James Martin utilizando Draw.io.

  1.
  ´´´bash
   (o)codigo                              (o)matricula
      |    ( )nome                           |   ( )nome
      |     |                 +              |    |                +
    +--------------+ (1,1)   / \    (0,N) +-------------+ (1,1)  / \
    | Departamento |--------+   +---------| Funcionario |-------+   + gerencia
    +--------------+         \ /          +-------------+        \ /
                              +                |      | (0,N)     +
                            lota       salario( )     +-----------+
  ´´´  
  2. ( )logradouro                     (o)id
      | ( )numero                       | ( )nome
      |  |                +             |  |
    +----------+ (1,1)   / \    (1,1) +--------+
    | Endereco |========+   +---------| Pessoa |
    +----------+         \ /          +--------+
      |  |  |             +               |
      |  | ( )cep       possui            + é
      | ( )uf                            / \
     ( )cidade                     +----+---+-----+
                                   |              |
                              +--------+     +----------+
                              | Fisica |     | Juridica |
                              +--------+     +----------+
                                |  |           |  |  
                                | ( )sexo      | ( )inscricao
                               ( )cpf         ( )cnpj

  3. (o)cpf             ( )data      (o)crm
      |  ( )nome         |            |  ( )nome  
      |   |            +-+-+          |   |  
   +----------+ (0,N)  |/ \|  (1,N) +--------+
   | Paciente |--------+   +--------| Medico |
   +----------+        |\ /|        +--------+
      |                +-+-+          |
    (( ))telefone     consulta       ( )especialidade
