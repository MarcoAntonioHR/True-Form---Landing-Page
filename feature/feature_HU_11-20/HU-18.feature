Feature: Guardar ejercicios favoritos

    Como usuario principiante, quiero guardar ejercicios favoritos para encontrarlos rápidamente en futuras rutinas. 

Scenario:  Ejercicio guardado
    Given que el usuario está viendo el detalle de un ejercicio,
    When presiona el ícono de favorito,
    Then el sistema guarda el ejercicio en su lista de favoritos. 

Example: 
|Entrada:

    Ejercicio: Sentadillas
    Estado inicial: No es favorito

Acción:
    El usuario presiona el ícono de favorito en la pantalla del ejercicio.

Resultado:
    El sistema guarda el ejercicio en la lista [Mis favoritos] y el ícono cambia para indicar que fue agregado correctamente|

Scenario:   Quitar de favoritos
    Given que un ejercicio ya está guardado como favorito,
    When el usuario vuelve a presionar el ícono,
    Then el sistema lo elimina de la lista de favoritos. 


Example:
|Entrada:
    Ejercicio: Sentadillas
    Estado inicial: Marcado como favorito

Acción:
    El usuario vuelve a presionar el ícono de favorito.

Resultado:
    El sistema elimina el ejercicio de la lista "Mis favoritos" y el ícono vuelve a su estado original indicando que ya no está guardado.|

