(deffunction agregar-enfermedad (?nombre ?sintomas)
    (assert (enfermedad (nombre ?nombre) (sintomas ?sintomas)))
    (printout t "Enfermedad agregada: " ?nombre crlf))
