(defrule buscar-enfermedad
    =>
    (printout t "Ingresa un síntoma para buscar enfermedades relacionadas: " crlf)
    (bind ?entrada (readline)) 
    (do-for-all-facts ((?e enfermedad)) 
        (str-index ?entrada (fact-slot-value ?e sintomas)) 
        (printout t "Enfermedad: " (fact-slot-value ?e nombre) crlf))) 