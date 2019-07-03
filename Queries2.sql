select persona.nombre, persona.apellido_paterno, persona.apellido_materno, usuario.usuario
from persona
inner join usuario on persona.id=usuario.persona_id;

select persona.nombre, persona.apellido_paterno, persona.apellido_materno, usuario.usuario
from persona 
left join usuario on persona.id =usuario.persona_id
where usuario.persona_id is null;

-------------------------------------------------------------------------------------------

SELECT p.nombre, p.apellido_paterno, t.lada, t.numero, d.calle, d.numero
FROM persona p, telefono t, direccion d
WHERE p.nombre='Miguel';

--------------------------------------------------------------------------------------------

SELECT p.nombre, p.apellido_paterno, p.apellido_materno, t.lada, t.numero, d.calle, d.numero
FROM persona AS p
INNER join telefono_persona AS tp ON p.id = tp.persona_id
INNER join direccion_persona AS dp ON p.id = dp.persona_id
INNER join telefono AS t ON t.id = tp.telefono_id
INNER join direccion AS d ON d.id = dp.direccion_id;

---------------------------------------------------------------------------------------------

SELECT p.nombre, p.apellido_paterno, p.apellido_materno, t.lada, t.numero
FROM persona AS p
INNER join telefono_persona AS tp ON p.id = tp.persona_id
INNER join telefono AS t ON t.id = tp.telefono_id
UNION
SELECT p.nombre, p.apellido_paterno, p.apellido_materno, d.calle, d.numero
FROM persona AS p
INNER join direccion_persona AS dp ON p.id = dp.persona_id
INNER join direccion AS d ON d.id = dp.direccion_id;


