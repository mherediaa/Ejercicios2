CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_persona`(
IN p_id int, IN p_nombre varchar(20), IN p_apellido_paterno varchar(20), IN p_apellido_materno varchar(20), IN p_DOB date
)
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
SELECT 'SQLException invoked';

DECLARE EXIT HANDLER FOR 1292
SELECT 'El tipo de dato no coincide' AS msg;

insert into persona values(p_id, p_nombre, p_apellido_paterno, p_apellido_materno, p_DOB);

END