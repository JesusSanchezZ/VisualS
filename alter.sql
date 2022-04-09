use MyOrg

alter table Precio add constraint fk_precio_curso                           -- Relaci�n uno a uno
foreign key(CursoId) references Curso(CursoId)

alter table Comentario add constraint fk_comentario_curso                   -- Relaci�n uno a muchos
foreign key(CursoId) references Curso(CursoId)

alter table CursoInstructor add constraint fk_curso_instructor_cursoid      -- Relaci�n muchos a muchos
foreign key(CursoId) references Curso(CursoId)                              --    |
                                                                            --    |
alter table CursoInstructor add constraint fk_curso_instructor_id           --  <--
foreign key(InstructorId) references Instructor(instructorId)
