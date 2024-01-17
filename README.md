# Aprendiendo dart y flutter

## Indice

1. [Constructor con Json](#constructor)
2. [Getters and setters](#gettersandsetters)
3. [Extends](#extends)

### Constructor

> fichero: 01_constructor_json.dart

Fuera del main se crea un objeto llamado Hero, con los atributos name, power y isAlive, 2 contructores y un @override del metodo toString()

* Primer constructor:
  > Es generico, solo se pide como required el atributo **name**; **power** y **isAlive** son opcionales, en caso de no colocarlos como parametros, se atribuiran los valores 'Sin Poder' y true respectivamente.

* Segundo constructor:
  > Se crea con la finalidad de agregarle como parametro un valor de tipo ``Map<String, dynamic>`` (json) y se generen los valores del propio json, en caso de no encontrarlos, de colocara una cadena de 'No found' y false para isAlive;  Todo esto con el fin de poder obtener los valores del json y poderlos instanciar dentro de el objeto Hero.

* @override:
  > Se sobre escribe la funcionalidad de toString(), con el fin de que imprima todos los atributos del objeto Hero.

### GETTERSandSETTERS

> fichero: 02_geters_setters.dart

Fuera del main se crea un objeto llamado Square, el cual tiene como atributo _side, un constructor con una asercion y 3 metodos: get, set y calcularArea.

* Constructor con asercion:
  > La asercion, es un condicional en el que se revisa si se cumple algun determinado caso, se asignara los valores del constructor, usamos la funcion assert(), el primer parametro recibido, sera el condicional para que siga con el funcionamiento del constructor, el segundo parametro, es el mensaje de error, en caso de que el condicional no se cumpla.

* Get:
  > Es un metodo de flecha que solo obtiene el area exponiendo su atributo al cuadrado.

* Set:
  > Metodo que debe obtener como parametro el valor por el que vas a modificar el atributo _side, el cual se llamara value, imprime en pantalla el aviso de cual va a ser el nuevo valor que se le asignara al atributo _side, luego te encuentras con un condicional, que si el valor es menor que 0 lanza (throw) un error con el mensaje 'Value must be >= 0'; en caso de que no pase por dicho condicional y el valor sea mayor que 0, se le asignara el valor de parametro 'value' a el atributo _side

* CalcularArea:
  > Al llamar a este metodo solo retorna el area, multiplicando el atributo '_side' al cuadrado.

### Extends

> fichero: 03_extends.dart

Fuera del mainse encuentra una function **chargePhone** un tipo de collection enumerado **PlantType** una clase abtracta **EnergyPlant** y una clase extendida de la clase abtracta llamada **WindPlant**

* enum **PlantType**:
> Es un tipo de collection numerico que guarda 3 valores, nuclear, wind y water (el tipo de plantas de energia que existe, nuclear, de viento y de agua)

* Abstract class **EnergyPlant**:
> Es una clase abstracta que tiene como atributos, **energyLeft** y **PlantType** un constructor y un metodo **consumeEnergy**

* class **WindPlant**:
> Es una clase extendida de **EnergyPlant** la nombra su propio constructor y con la palabra clave **super** usa los valores de su constructor padre.

* **chargePhone**:
> Es una funcion que simula la carga de un movil, la cual requiere como parametro la energia de una planta; en su parametro usa **EnergyPlant** usando como referencia la clase abtracta, esto con el fin de que cualquier clase heredada de **EnergyPlant** pueda servir como parametro. Dentro de la funcion hay un condicional el cual comprueba si **energyLeft** (energia sobrante) de la planta es menor que 10, en ese caso, lanza (**throw**) una exeption con un mensaje de no queda energia, en caso contrario la funcion retorna **energyLeft**-= 10 (es decir, le resta 10 a la energia sobrante de la planta que uso como parametro)