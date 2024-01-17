# Aprendiendo dart y flutter

## Indice

1. [Constructor con Json](#constructor)
2. [Getters and setters](#gettersandsetters)

### Constructor

> fichero: 01_constructor_json.dart

Fuera del main se crea un objeto llamado Hero, con los atributos name, power y isAlive, 2 contructores y un @override del metodo toString()

* Primer constructor: es generico, solo se pide como required el atributo name; power y isAlive son opcionales, en caso de no colocarlos como parametros, se atribuiran los valores 'Sin Poder' y true respectivamente.

* Segundo constructor: se crea con la finalidad de agregarle como parametro un valor de tipo ``Map<String, dynamic>`` (json) y se generen los valores del propio json, en caso de no encontrarlos, de colocara una cadena de 'No found' y false para isAlive;  Todo esto con el fin de poder obtener los valores del json y poderlos instanciar dentro de el objeto Hero.

* @override: se sobre escribe la funcionalidad de toString(), con el fin de que imprima todos los atributos del objeto Hero.

## GETTERSandSETTERS

> fichero: 02_geters_setters.dart

Fuera del main se crea un objeto llamado Square, el cual tiene como atributo _side, un constructor y 3 metodos: get, set y calcularArea.

* Get: es un metodo de flecha que solo obtiene el area exponiendo su atributo al cuadrado.

* Set: metodo que debe obtener como parametro el valor por el que vas a modificar el atributo _side, el cual se llamara value, imprime en pantalla el aviso de cual va a ser el nuevo valor que se le asignara al atributo _side, luego te encuentras con un condicional, que si el valor es menor que 0 lanza (throw) un error con el mensaje 'Value must be >= 0'; en caso de que no pase por dicho condicional y el valor sea mayor que 0, se le asignara el valor de parametro 'value' a el atributo _side

* CalcularArea: al llamar a este metodo solo retorna el area, multiplicando el atributo '_side' al cuadrado.