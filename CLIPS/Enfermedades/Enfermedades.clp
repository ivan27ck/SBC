(deftemplate enfermedad
    (slot nombre)
    (slot sintomas))

(deffacts enfermedades
    (enfermedad (nombre "Gripe") (sintomas "Fiebre, tos, dolor de garganta"))
    (enfermedad (nombre "Dengue") (sintomas "Fiebre alta, dolor de cuello, dolor de huesos"))
    (enfermedad (nombre "COVID-19") (sintomas "Fiebre, tos seca, perdida de olfato"))
    (enfermedad (nombre "Meningitis") (sintomas "Fiebre, rigidez en el cuello"))
    (enfermedad (nombre "Tuberculosis") (sintomas "Tos persistente, Dolor en el pecho"))
    (enfermedad (nombre "Faringitis estreptocócica") (sintomas "Dolor de garganta intenso"))
    (enfermedad (nombre "Salmonelosis") (sintomas "Diarrea, colicos abdominales"))
    (enfermedad (nombre "Hepatitis A") (sintomas "Fatiga, Nauseas"))
    (enfermedad (nombre "Varicela") (sintomas "Erupción cutánea con ampollas"))
    (enfermedad (nombre "Neumonía") (sintomas "Tos con flema, Dolor en el pecho"))
)
