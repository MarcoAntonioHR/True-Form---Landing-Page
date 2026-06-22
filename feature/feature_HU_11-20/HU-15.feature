Feature: Pausar y reanudar una rutina 

    Como usuario principiante, quiero pausar y reanudar mi rutina para poder continuar entrenando si tengo una interrupción.      

Scenario: Pausa de rutina
    Given que el usuario está realizando una rutina,
    When presiona el botón “Pausar”,
    Then el sistema detiene el avance de la rutina y conserva el ejercicio actual. 


Example: 
|
Rutina en progreso: Entrenamiento de cuerpo completo

Resultado esperado:
    Mientras realiza el ejercicio Plancha durante 30 segundos, el usuario presiona el botón [Pausar].
    El sistema detiene el temporizador de la rutina y muestra el estado "Rutina pausada". 
    Además, guarda el progreso realizado para que el usuario pueda continuar más tarde sin perder la información del ejercicio actual.|

Scenario: Reanudación de rutina
    Given que la rutina está pausada,
    When el usuario presiona “Reanudar”,
    Then el sistema continúa desde el ejercicio donde se detuvo. 

Example:
|
Estado actual: Rutina pausada en el ejercicio "Plancha"

Resultado esperado:
    El usuario presiona el botón [Reanudar] después de una interrupción.
    El sistema retoma la rutina desde el mismo ejercicio donde fue pausada, restaurando el temporizador y el progreso previo.
    El usuario puede continuar con normalidad y avanzar al siguiente ejercicio una vez completado el actual.|




