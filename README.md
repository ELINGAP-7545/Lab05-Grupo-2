## solucion al final del laboratorio 05


# GRUPO-02
# Integrantes
  Usuario pedroarozoa   |1.Pedro Alejandro Rozo Ahumada
  
  Usuario Juanf-droid   |2.Juan Felipe Bulla Valencia
  
  Usuario stevenherream   |3.Steven herrera Monroy

# lab05 : Unidad de suma, resta, multiplicación, división y visualización BCD
## Introducción

Para este paquete de trabajo, deben estar inscrito en un grupo y clonar la información del siguiente link [WP05](https://classroom.github.com/g/dHrBou9a). Una vez aceptado el repositorio debe descargarlo en su computador, para ello debe clonar el mismo. Si no sabe cómo hacerlo revise la metodología de trabajo, donde se explica el proceso

Las documentación deben estar diligencia en el archivo README.md del repositorio clonado.

Una vez clone el repositorio, realice lo siguiente:


## descipción 
La unidad aritmética, es tal que cuenta con componentes para realizar operaciones aritméticas. cada operación aritmética es ejecutada acuerdo al código de la operación. 

Como ejercicio académico, se propone  que construya una unidad con 4 operaciones aritméticas: suma, resta, multiplicación y división.  de igual manera, el resultados se visualiza en los display de siete segmentos. El flujo de datos y la selección de la operación se realiza acorde a la señal opcode, y segun la siguiente tabla:



opcode | operación  enteros positivos
00| suma
01| resta 
10|  multiplicación
11| división 


Por lo tanto, la unidad debe contar con:

1. Los dos puertos de entrada A y B. cada uno de  3 bits.
2. La señal `opcode` de dos bits, para configurar la operación que se realiza con los datos de `portA` y `portB`.
3. La a visualización de unidad debe tener las salidas de los 4 ánodos, `An`  y las 7 señales de los cátodos, `sseg`.
4. Para las FSM  y las visualización dinámica, se debe incluir la señal de `clk` de entrada.
5. la señal de reset del sistema

## Diagrama de caja negra

Según las especificaciones anteriormente descrita, la caja funcional de la unidad aritmética propuesta es:

![estructural](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/cajanegra.png)


## Diagrama estructural

![estructural](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/diagraEstructural.png)



El diagrama estructural, se soporta en los componentes desarrollados en los anteriores laboratorios. De esta manera,  tanto el sumador, el multiplicador  y el Display, son tomados de los lab2, lab5 y lab4  respectivamente. Adicional a la estructura de cada operación se encuentra el decodificador  y el multiplexador.

con base a lo anterior podemos describir la imagen como un diagrama de caja negra el cual esta constituido por 2 entradas las cuales nombramos como port A Y por B las cuales seran las entradas de los dos valores de 3 bits que deseamos operar, y por otra parte se encuentra la entrada opcode la cual nos permitira definir la operacion a realizar y de esta manera poder ingresar al decodificador que a su vez se encuentra conectado  con el multiplaxor.
En la alu definimos las operaciones aritmeticas que de encuentran despues del decodificador, las cuales se encuentan definidas como wire init_suma,ire init_resta,ire init_mult,ire init_div

## Entregables

1. Definir el diagrama estructurar interno de cada bloque funcionar 
2. Descargar la estructura propuesta de la  Unidad Aritmética del paquete de trabajo [WP05](https://classroom.github.com/g/dHrBou9a) Este proyecto cuenta con el archivo `alu.v` y, tiene la carpeta `src` que cuenta con las 5 carpetas de cada componente.
3. Implementar `alu.v` en la FPGA, y  comprobar el funcionamiento  de la suma la multiplicación y la visualización
4. Incluir el  HDL para le divisor  realizado en el ejercicio anterior, en la carpeta `src/divisor`  y, adicione los archivos e instanciar el bloque divisor.
5. Diseñar el bloque restador, adicionar dicho bloque a la respectiva carpeta e instanciar el modulo en `alu.v`.
6. Realizar el testbench del bloque alu.
7. implementar el sistema completo en la FPGA remota
8. hacer la documentación respectiva en el archivo README
  

 # SOLUCION 
 
 ![estructural](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/diagraEstructural.png)
 
con base a lo anterior podemos describir la imagen como un diagrama de caja negra el cual esta constituido por 2 entradas las cuales nombramos como port A Y por B las cuales serán las entradas de los dos valores de 3 bits que deseamos operar, y por otra parte se encuentra la entrada Opcode la cual nos permitirá definir la operación a realizar y de esta manera poder ingresar al decodificador que a su vez se encuentra conectado  con el multiplexor.
En la Alu definimos las operaciones aritméticas que se encuentran después del decodificador, las cuales están definidas como wire init_suma, wiire init_resta, wiire init_mult, wiire init_div, las cuales ingresan al multiplexor el cual nos define la operación a realizar y de este nos deja ver el resultado en los displays

 
 
 ![Captura](https://user-images.githubusercontent.com/62779527/80268552-a0780980-866d-11ea-871f-e6a9e0a31f9a.PNG)
 
 ![Captura 2](https://user-images.githubusercontent.com/62779527/80269010-acfe6100-8671-11ea-8d3f-bbd4f189d12e.PNG)

 
 
## diagrama estructuraL interno de cada bloque funcional

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/diagram%20de%20flujo.png?raw=true)



en este diagrama podermos observar la funcionalidad de de cada una de las operaciones asignadas, al diagrama estructural como lo son suma,resta,multiplicacion y divicion las cuales al estar configuradas como en la tabla que se muestra acontinuacion 

![Captura](https://user-images.githubusercontent.com/62779527/80268552-a0780980-866d-11ea-871f-e6a9e0a31f9a.PNG)

podemos referenciar el funcionamiento del bloque sumador el cual posee 2 entradas port A y port B los cuales tienen la función de realizar las operaciones en un segmento de bloque como and, xor, or como se muestra en las figuras , al mismo tiempo que el Opcode entra a la caja de suma, en donde después de ejecutar la operación utilizamos un cable el cual nos lleva al multiplicador y de este a los displays    

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/operacion%20suma.JPG?raw=true)

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/operacion%20resta.JPG?raw=true)

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/operacion%20multiplicacion.JPG?raw=true)

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/operacion%20division.JPG?raw=true)

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/alu/src/sum4bcc/bloque%20funcional%20sum%201.JPG?raw=true)

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/alu/src/sum4bcc/bloque%20funcional%20sum%204.JPG?raw=true)

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/alu/src/multiplicacion/bloque%20funcional%20multiplicador.JPG?raw=true)

![estructural](https://github.com/ELINGAP-7545/lab05-grupo-2/blob/master/alu/src/display/bdd%20to%20seggg.JPG?raw=true)
