# [PdeP Cargas](https://docs.google.com/document/d/1knTRBIF3WLOtRO6JpPGR9ooWsa-0ckBm7OlFeG92LhM/edit)

_ _PdeP Cargas_ _ es una empresa que, como su nombre lo indica, se dedica al transporte de cargas en todo el país. Nos pidieron que desarrollemos una aplicación para controlar los gastos que tiene la empresa a medida que los camiones realizan viajes.

Para sus operaciones habituales PdeP Cargas cuenta con los siguientes vehículos:
- **Camión de verduras:** lleva una cierta cantidad de cajones de verduras, que pesan 50kg cada una. Además sabemos que su velocidad máxima es de 80 km/h restando un km/h por cada 500kg de carga. Además, sabemos que su kilometraje se encuentra actualmente en 700.000kms.
- **Camión Scanion 5000:** es un camión de última generación que transporta combustibles líquidos. Como es tan potente, siempre se carga a su máxima capacidad (5.000 litros). Y el peso de la carga depende de la densidad del líquido transportado (peso = densidad * volúmen). Su velocidad máxima siempre es de 140km/h.
- **Camión cerealero:** está muy viejo y por eso su velocidad máxima es de 60km/h menos su nivel de deterioro, el cual inicialmente es 0. Para cada viaje que realiza se determina la cantidad de carga que va a llevar.


## Puestos de control:

Los camiones de PdeP cargas van a tener que pasar por estos puestos para llegar a su destino. Los puestos pueden aplicarle cargos a PdeP cargas dependiendo del camión que pase por ese puesto.

Por ahora nos pidieron modelar un solo puesto, ya que es el más utilizado en este momento.

- **Puesto Rutatlantica:** cobra 7.000 pesos por camión más un adicional de 100 pesos por cada 1000kg de carga que lleva el camión. Luego, deja pasar el camión a un máximo de 75km/h. Además sabemos que al pasar por este puesto, se recorren 400kms.

Los camiones pueden recorrer una cierta cantidad de kilómetros de una ruta a una cierta velocidad. Cuando esto pasa en un camión cerealero, este aumenta en su nivel de deterioro en 1 por cada kilómetro por hora que se excede de los 45 km/h. El camión de verduras registra sus kilómetros recorridos. Mientras que al scanion5000 esto no lo afecta en absoluto.
