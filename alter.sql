use MyOrg

alter table Precio add constraint fk_precio_curso                           -- Relación uno a uno
foreign key(CursoId) references Curso(CursoId)

alter table Comentario add constraint fk_comentario_curso                   -- Relación uno a muchos
foreign key(CursoId) references Curso(CursoId)

alter table CursoInstructor add constraint fk_curso_instructor_cursoid      -- Relación muchos a muchos
foreign key(CursoId) references Curso(CursoId)                              --    |
                                                                            --    |
alter table CursoInstructor add constraint fk_curso_instructor_id           --  <--
foreign key(InstructorId) references Instructor(instructorId)
