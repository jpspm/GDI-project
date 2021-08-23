INSERT ALL
    INTO pessoa VALUES ('74055189079', 'Arnaldo', 'Avenida Doutor Eurico Chaves', 'Recife', 52071250)
    INTO pessoa VALUES ('29659987056', 'Lucas', 'Rua Sussuarana', 'Recife', 50791041)
    INTO pessoa VALUES ('39410602017', 'Bianca', 'Rua Cacimbão', 'Recife', 52110625)
    INTO pessoa VALUES ('74798109037', 'Jefersson', 'Beco Sete Pecados', 'Recife', 51020400)
    INTO pessoa VALUES ('76454768007', 'Carla', 'Rua Dezesseis', 'Recife', 51150258)
    INTO pessoa VALUES ('24160440010', 'Francisco', 'Rua Muniz Tavares', 'Recife', 52050170)
    INTO pessoa VALUES ('22320175083', 'Katarina', 'Rua Curvelinho', 'Jaboatão dos Guararapes', 54090514)
    INTO pessoa VALUES ('13114208002', 'Vanessa', 'Ladeira da Igreja', 'Jaboatão dos Guararapes', 54315310)
    INTO pessoa VALUES ('70764766066', 'Gabriel', 'Rua Sessenta e Cinco', 'Olinda', 53080810)
    INTO pessoa VALUES ('54363936088', 'Julia', 'Rua São José', 'Olinda', 53240535)
    INTO pessoa VALUES ('02164334442', 'Andressa', 'Rua João Maia', 'Olinda', 53260470)
    INTO pessoa VALUES ('63014494445', 'Paulo', 'Rua Maria do Socorro de Vasconcelos', 'Caruaru', 55026670)
    
    INTO contato VALUES ('74055189079', '(81) 999658425','ArnoldSchwarzenegger123@gmail.com')
    INTO contato VALUES ('29659987056', '','birlldamassa@hotmail.com')
    INTO contato VALUES ('39410602017', '(81) 985567854','biancagata10@hotmail.com')
    INTO contato VALUES ('74798109037', '(81) 985427894','jeff@gmail.com')
    INTO contato VALUES ('76454768007', '(87) 948756589','projetinhocarnaval@gmail.com')
    INTO contato VALUES ('24160440010', '','flavindopneu@hotmail.com')
    INTO contato VALUES ('22320175083', '','shaolinmatadordeporco@yahoo.com')
    INTO contato VALUES ('13114208002', '(81) 956862323','')
    INTO contato VALUES ('70764766066', '','')
    INTO contato VALUES ('54363936088', '(81) 965852525','')
    INTO contato VALUES ('02164334442', '','andressinhabijuterias@outlook.com')
    INTO contato VALUES ('63014494445', '','')

    INTO avaliacao VALUES (0230569, 40.3 , 67.5 , 170, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss'))
    INTO avaliacao VALUES (0215690, 60.4 , 77.5 , 175, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss'))
    INTO avaliacao VALUES (0213290, 55.0 , 67.5 , 173, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss'))
    INTO avaliacao VALUES (0232269, 76.8 , 87.5 , 180, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss'))
    INTO avaliacao VALUES (0232569, 43.3 , 67.5 , 168, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss'))
    INTO avaliacao VALUES (0241569, 57.7 , 65.5 , 160, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss'))
    INTO avaliacao VALUES (0238669, 90.5 , 107.5 , 190, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss'))
    INTO avaliacao VALUES (0233269, 70.0 , 86.5 , 180, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss')) 

    INTO unidade VALUES (00000, 'SACADO GYM', 'Av boa viagem, 199', 'Recife', 52071250)
    INTO unidade VALUES (00001, 'Cardio na ladeira', 'Rua João Maia,666', 'Olinda', 53260470)
    INTO unidade VALUES (00010, 'Alcanilo GYM', 'Rua Curvelinho', 'Jaboatão dos Guararapes', 54090514)
    INTO unidade VALUES (00011, 'Patio do Forró', 'Rua Maria do Socorro de Vasconcelos', 'Caruaru', 55026670)

    INTO funcionario VALUES ('74055189079', 'Treinador', 6000)
    INTO funcionario VALUES ('29659987056', 'Treinador', 6000)
    INTO funcionario VALUES ('39410602017', 'Treinador', 6000)
    INTO funcionario VALUES ('74798109037', 'Gerente', 7500)

    INTO cliente VALUES ('76454768007', 30, 'D3D0FR4NC15C0')
    INTO cliente VALUES ('24160440010', 21, 'BVGJTFJOBGSYI')
    INTO cliente VALUES ('22320175083', 14, 'FDHJHUYKJ345G')
    INTO cliente VALUES ('13114208002', 14, 'WDEBJKGDLJSRJ')
    INTO cliente VALUES ('70764766066', 18, 'HNJMGGJNSEGFJ')
    INTO cliente VALUES ('54363936088', 26, '6587KJGBJ89HT')
    INTO cliente VALUES ('02164334442', 21, 'VXJHSOVGEJSBY')
    INTO cliente VALUES ('63014494445', 19, 'RFGTHG5TSV78V')

    INTO matricula VALUES ('76454768007', 00001, TO_DATE('2021/05/03 21:02:31', 'yyyy/mm/dd hh24:mi:ss'),'anual',125,TO_DATE('2021/08/10 21:02:31', 'yyyy/mm/dd hh24:mi:ss'),00000)
    INTO matricula VALUES ('24160440010', 00002, TO_DATE('2021/04/24 20:02:24', 'yyyy/mm/dd hh24:mi:ss'),'mensal',300,TO_DATE('2021/06/10 19:02:31', 'yyyy/mm/dd hh24:mi:ss'),00010)
    INTO matricula VALUES ('22320175083', 00003, TO_DATE('2021/02/15 21:02:31', 'yyyy/mm/dd hh24:mi:ss'),'bimestral',175,TO_DATE('2021/8/14 20:02:31', 'yyyy/mm/dd hh24:mi:ss'),00011)
    INTO matricula VALUES ('13114208002', 00004, TO_DATE('2021/01/01 21:02:31', 'yyyy/mm/dd hh24:mi:ss'),'anual',125,TO_DATE('2021/08/12 08:00:31', 'yyyy/mm/dd hh24:mi:ss'),00000)
    INTO matricula VALUES ('70764766066', 00012, TO_DATE('2021/05/13 01:02:31', 'yyyy/mm/dd hh24:mi:ss'),'anual',125,TO_DATE('2021/08/10 21:02:31', 'yyyy/mm/dd hh24:mi:ss'),00001)
    INTO matricula VALUES ('54363936088', 02002, TO_DATE('2021/02/14 10:02:24', 'yyyy/mm/dd hh24:mi:ss'),'mensal',300,TO_DATE('2021/06/10 19:02:31', 'yyyy/mm/dd hh24:mi:ss'),00010)
    INTO matricula VALUES ('02164334442', 00303, TO_DATE('2021/03/25 11:02:31', 'yyyy/mm/dd hh24:mi:ss'),'bimestral',175,TO_DATE('2021/8/14 20:02:31', 'yyyy/mm/dd hh24:mi:ss'),00011)
    INTO matricula VALUES ('63014494445', 00014, TO_DATE('2021/01/11 23:02:31', 'yyyy/mm/dd hh24:mi:ss'),'anual',125,TO_DATE('2021/08/12 08:00:31', 'yyyy/mm/dd hh24:mi:ss'),00001)  

    INTO avalia VALUES (0230569,'74055189079', '76454768007')
    INTO avalia VALUES (0215690,'74055189079', '24160440010')
    INTO avalia VALUES (0213290,'74055189079', '22320175083')
    INTO avalia VALUES (0232269,'29659987056', '13114208002')
    INTO avalia VALUES (0232569,'29659987056', '70764766066')
    INTO avalia VALUES (0241569,'39410602017', '54363936088')
    INTO avalia VALUES (0238669,'39410602017', '02164334442')
    INTO avalia VALUES (0233269,'29659987056', '63014494445')

    INTO acompanha VALUES ('74055189079','76454768007')
    INTO acompanha VALUES ('74055189079','24160440010')
    INTO acompanha VALUES ('74055189079','22320175083')
    INTO acompanha VALUES ('39410602017','76454768007')
    INTO acompanha VALUES ('39410602017','02164334442')
    INTO acompanha VALUES ('29659987056','70764766066')
    INTO acompanha VALUES ('29659987056','63014494445')

    INTO gerencia VALUES('74798109037','74055189079')
    INTO gerencia VALUES('74798109037','29659987056')
    INTO gerencia VALUES('74798109037','39410602017')
    
SELECT * FROM dual;