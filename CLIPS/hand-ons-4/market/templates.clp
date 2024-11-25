
(deftemplate MAIN::orden
   (slot producto)
   (slot marca)
   (slot modelo)
   (slot cantidad)
   (slot metodo-pago)
   (slot banco))

(deftemplate MAIN::tarjetacred
   (slot banco)
   (slot grupo)
   (slot exp-date))

(deftemplate MAIN::vale
   (slot monto))

