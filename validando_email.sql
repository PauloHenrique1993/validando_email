DECLARE @Teste TABLE ( [Email] VARCHAR(200) )
 
INSERT INTO 
	@Teste 
VALUES 
	('paulo@g.com'), ('PauloHenrique'), ('Paulo@'), ('@'), ('@.com'), ('paulo@dominio.com.br'), ('email@gmail.com'), 
		('email@gmail'),('email@gmail.') ,('email@dominio.'),('email@dominio,com'),('paulo@outlook.com'),('paulo@@yahoo.com'),('paulo$@yahoo.com')
 
SELECT 
	*
FROM 
	@Teste
WHERE 
	[Email] NOT LIKE '%[^a-z,0-9,@,.-_]%'
AND
	[Email] LIKE '%_@_%_.__%' 
AND 
	[Email] NOT LIKE '%_@@_%_.__%'
