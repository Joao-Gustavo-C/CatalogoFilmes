USE catalogoFilmesDB;


-- carga inicial usuario admin
INSERT INTO tb_usuario(nm_usuario, ds_email, ds_senha)
	VALUES ('admin', 'admin@admin.com.br', '1234');
    
    
-- Efetuar Login
SELECT  id_usuario		id,
		nm_usuario		nome,
        ds_email		email
        
	FROM tb_usuario
    WHERE ds_email		= 'admin@admin.com.br'
    AND ds_senha		= '1234';
    
    
-- cadastrar novo filme
INSERT INTO tb_filme (id_usuario, nm_filme, ds_sinopse, vl_avalicao, dt_lancamento, bt_disponivel, img_filme)
	VALUES (1, 'Harry Potter e a Camara Secreta', 'Filme bem top', 8.2, '2012-02-11', true, '/storage/filme/1234.jpg');
    
-- cadastrar novo filme
    UPDATE tb_filme
		SET nm_filme		= 'Harry Potter e a Pedra Filosofal',
			ds_sinopse		= 'Filme bem top', 
            vl_avalicao		= 9.5,
            dt_lancamento	= '2010-05-03',
            bt_disponivel	= true,
            IMG_filme		= '/storage/filme/1234.jpg'
		WHERE id_filme = 1;
        
        
-- deletar filme	
DELETE FROM tb_filme
	WHERE id_filme = 1;
    
    
-- consultar todos os filmes
SELECT id_filme				id,
		nm_filme			nome,
        vl_avalicao			avaliacao,
        bt_disponivel		disponivel
	FROM tb_filme;
    

-- consultar filmes por nome
SELECT id_filme				id,
		nm_filme			nome,
        vl_avalicao			avaliacao,
        dt_lancamento		lancamento,
        ds_sinopse			sinopse,
        bt_disponivel		disponivel
	FROM tb_filme
    WHERE nm_filme			LIKE '%a%';
    
    
-- consultar filme por id
SELECT id_filme				id,
		nm_filme			nome,
        vl_avalicao			avaliacao,
        dt_lancamento		lancamento,
        bt_disponivel		disponivel,
        IMG_filme			capa
	FROM tb_filme
    WHERE id_filme			= 1;