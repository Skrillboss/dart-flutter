# Aprendiendo dart y flutter

## Indice

1. [Constructor con Json](#constructor)

### Constructor

> fichero 01_constructor_json.dart

Fuera del main se crea un objeto llamado Hero, con los atributos name, power y isAlive, 2 contructores y un @override del metodo toString()

* Primer constructor: es generico, solo se pide como required el atributo name; power y isAlive son opcionales, en caso de no colocarlos como parametros, se atribuiran los valores 'Sin Poder' y true respectivamente.

* Segundo constructor: se crea con la finalidad de agregarle como parametro un valor de tipo ``Map<String, dynamic>`` (json) y se generen los valores del propio json, en caso de no encontrarlos, de colocara una cadena de 'No found' y false para isAlive;  Todo esto con el fin de poder obtener los valores del json y poderlos instanciar dentro de el objeto Hero.

* @override: se sobre escribe la funcionalidad de toString(), con el fin de que imprima todos los atributos del objeto Hero.