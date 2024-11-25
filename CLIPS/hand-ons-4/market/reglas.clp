(defrule oferta-iphone16-banamex
    ?orden <- (orden (producto smartphone) (marca apple) (modelo iphone16) (metodo-pago tarjeta) (banco banamex))
    =>
    (printout t "Oferta: Compra de iPhone 16 con Banamex, 24 meses sin intereses." crlf)
)

(defrule oferta-iphone16-liverpool
    ?orden <- (orden (producto smartphone) (marca apple) (modelo iphone16) (metodo-pago tarjeta) (banco liverpool))
    =>
    (printout t "Oferta: Compra de iPhone 16 con liverpool, 12 meses sin intereses." crlf)
)


(defrule oferta-note21-liverpool
    ?orden <- (orden (producto smartphone) (marca samsung) (modelo note21) (metodo-pago tarjeta) (banco liverpool))
    =>
    (printout t "Oferta: Compra de Samsung Note 21 con Liverpool VISA, 12 meses sin intereses." crlf)
)

(defrule oferta-note21-banamex
    ?orden <- (orden (producto smartphone) (marca samsung) (modelo note21) (metodo-pago tarjeta) (banco banamex))
    =>
    (printout t "Oferta: Compra de Samsung Note 21 con banamex, 12 meses sin intereses." crlf)
)


(defrule oferta-macbookair-iphone16-contado
    (and
        (orden (producto smartphone) (marca apple) (modelo iphone16) (metodo-pago contado))
        (orden (producto computadora) (marca apple) (modelo macbook-air) (metodo-pago contado)))
    =>
    (printout t "Oferta: MacBook Air + iPhone 16 al contado, 100 pesos en vales por cada 1000 pesos de compra." crlf)
)

(defrule oferta-macbookair-banamex
    ?orden <- (orden (producto computadora) (marca apple) (modelo macbook-air) (metodo-pago banamex) (banco banamex))
    =>
    (printout t "Oferta: Compra de macbook-air con banamex, 12 meses sin intereses." crlf)
)

(defrule oferta-macbookair-liverpool
    ?orden <- (orden (producto computadora) (marca apple) (modelo macbook-air) (metodo-pago banamex) (banco liverpool))
    =>
    (printout t "Oferta: Compra de macbook-air con liverpool, 24 meses sin intereses." crlf)
)


(defrule descuento-smartphone-accesorios
    (orden (producto smartphone))
    =>
    (printout t "Descuento: Funda y mica con 15% de descuento." crlf)
)
(defrule clasificar-mayorista
    (orden (cantidad ?cantidad&:(> ?cantidad 10)))
    =>
    (printout t "Cliente clasificado como Mayorista." crlf)
)

(defrule clasificar-menudista
    (orden (cantidad ?cantidad&:(<= ?cantidad 10)))
    =>
    (printout t "Cliente clasificado como Menudista." crlf)
)

(defrule MAIN::promocion-smartphone-pagado-contado
   (orden (producto smartphone) (metodo-pago contado))
   =>
   (assert (vale (monto 200)))
   (printout t "Promoción: Se otorgan 200 pesos en vales por la compra de un smartphone al contado." crlf))

(defrule MAIN::promocion-computadora-pagado-contado
   (orden (producto computadora) (metodo-pago contado))
   =>
   (assert (vale (monto 500)))
   (printout t "Promoción: Se otorgan 500 pesos en vales por la compra de una computadora al contado." crlf))

(defrule descuento-mayorista
   (orden (producto ?producto) (cantidad ?cantidad&:(> ?cantidad 10)))
   =>
   (printout t "Descuento: Mayoristas obtienen un 15% de descuento." crlf))

(defrule oferta-accesorio-apple
   ?orden <- (orden (producto accesorio) (marca apple))
   =>
   (printout t "Oferta: Compra de accesorio Apple con 5% de descuento." crlf))


