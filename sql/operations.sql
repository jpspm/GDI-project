--seleciona por cidade, as academias que tem mais de um cliente matriculado
--GROUP BY / HAVING

SELECT P.end_cidade, ACAD.nome, COUNT(*) AS Quantidade
FROM matricula M, pessoa P, unidade ACAD
WHERE M.cpf = P.cpf
GROUP BY P.end_cidade, ACAD.nome
HAVING COUNT(*) > 0;

--Seleciona o nome e a função de cada funcionario
--INNER JOIN
SELECT nome, funcao
FROM pessoa P INNER JOIN funcionario F ON P.cpf = F.CPF;

--seleciona o nome e o email de todas as pessoas cadastradas, funcionarios ou clientes
--OUTER JOIN
SELECT P.nome, email
FROM pessoa P
LEFT OUTER JOIN contato C on P.cpf = C.cpf;

--selecionar os nomes e cpfs dos clientes que tem frequencia maior que 5
--SEMI-JUNÇÂO
SELECT M.cpf, P.nome
FROM matricula M, pessoa P
WHERE EXISTS (SELECT * FROM cliente C WHERE M.cpf = C.cpf AND P.cpf = M.cpf AND C.frequencia > 5);

--selecionar os nomes e cpf das pessoas que tem telefone cadastrado
--anti-junção
SELECT P.nome, P.cpf FROM pessoa P
WHERE P.cpf NOT IN (SELECT C.cpf FROM contato C
                    WHERE C.telefone IS NULL);

--selecionar as academias em que a media do peso é maior que 75
--subconsulta escalar

SELECT UNI.NOME
FROM unidade UNI
WHERE (SELECT AVG(peso)
        FROM matricula M, avaliacao AV, avalia A
        WHERE M.cpf = A.cpf_aluno AND AV.id_avaliacao = A.id_avaliacao 
        AND M.id_unidade = UNI.id_unidade) > 75;  

--seleciona os cpf dos clientes que frequentam a mesma academia
--e tem o mesmo tipo de plano que o cpf dado
--subconsulta do tipo linha

SELECT M.cpf FROM matricula M
WHERE(M.id_unidade, M.tipo_plano) = (SELECT MATRI.id_unidade, MATRI.tipo_plano
                                        FROM matricula MATRI
                                        WHERE MATRI.cpf = '76454768007');

--selecionar todos os clientes com frequencia maior que a media
--subconsulta do tipo tabela

SELECT M.cpf
FROM matricula M
WHERE M.CPF IN (SELECT C.cpf
                FROM cliente C
                WHERE C.frequencia > (SELECT AVG(frequencia)
                                        FROM cliente));

--selecionar todos as cidade das pesoas e das unidades
--operação de conjunto

SELECT P.end_cidade AS CIDADE, 'Pessoa' AS TIPO
FROM pessoa P
UNION
SELECT A.end_cidade AS CIDADE, 'Unidade' AS TIPO
FROM unidade A;

----------------------------------PROCEDIMENTO-------------------------------------

--dado um cpf, retorna o nome da pessoa, se não retorna CPF NOT FOUND

CREATE OR REPLACE PROCEDURE print_nome(auxCPF VARCHAR) IS auxNome VARCHAR(50);

BEGIN
    SELECT P.nome INTO auxNome
    FROM pessoa P
    WHERE p.cpf = auxCPF;
    
    dbms_output.put_line(auxNome);
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('CPF NOT FOUND');
        
END;

BEGIN
print_nome('74055189079');
END;


-----------------------------------FUNÇÃO-------------------------------------------
--dado um cpf de um funcionario, retorna sua função

CREATE OR REPLACE FUNCTION get_funcao(auxCPF VARCHAR) RETURN VARCHAR IS auxFuncao VARCHAR(20);

BEGIN
    SELECT F.funcao INTO auxFuncao
    FROM funcionario F
    WHERE F.cpf = auxCPF;
    
    RETURN auxFuncao;
    
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
        RETURN 'Funcionario não cadastrado';
END;

BEGIN
dbms_output.put_line(get_funcao('74055189079'));
END;

BEGIN
dbms_output.put_line(get_funcao('74055189079'));
END;


-------------------------------PROCEDIMENTO--------------------------------

--dado uma cidade, retorna os nomes das pessoas que vivem nessa cidade

CREATE OR REPLACE PROCEDURE city(cidade VARCHAR) IS
CURSOR nomes IS
    SELECT nome
    FROM PESSOA
    WHERE end_cidade = cidade;
    
aux VARCHAR(50);

BEGIN
    OPEN nomes;
        LOOP
            FETCH nomes INTO aux;
            EXIT WHEN nomes%NOTFOUND;
            dbms_output.put_line(aux);
        END LOOP;
    CLOSE nomes;
END;

BEGIN
city('Recife');
END;

---------------------------------GATILHO-----------------------------------

--indica quando uma novca academia é criada

CREATE OR REPLACE TRIGGER indicador_academia

AFTER INSERT ON unidade
REFERENCING NEW AS ACAD

FOR EACH ROW
BEGIN
    dbms_output.put_line('A ACADEMIA ' || :ACAD.nome || ' FOI REGISTRADA COM SUCESSO');
END;

INSERT INTO unidade
VALUES(00100, 'DO FINO PRO GRANDE', 'Rua das Flores', 'Recife', 52071250);