Feature: Iniciar rutina guiada paso a paso

    Como usuario principiante, quiero iniciar una rutina guiada paso a paso para realizar mis ejercicios con mayor seguridad.   

Scenario: Inicio de rutina guiada
    Given que el usuario selecciona una rutina del día,
    When presiona “Iniciar rutina”,
    Then el sistema muestra el primer ejercicio con instrucciones claras. 


Example: 
|
Entada:
    Rutina seleccionada: Entrenamiento para principiantes

Resultado esperado:
    Al presionar [Iniciar rutina], el sistema muestra el primer ejercicio: Sentadillas.
    También se visualizan las instrucciones:
    -Mantén la espalda recta.
    -Flexiona las rodillas lentamente.
    -Realiza 12 repeticiones.
    Tambien se muestra una imagen o animación de apoyo para ayudar al usuario a ejecutar correctamente el movimiento.|

Scenario: Avance entre ejercicios
Given que el usuario termina un ejercicio,
When presiona “Siguiente”,
Then el sistema muestra el siguiente ejercicio de la rutina. 

Example:
|
Ejercicio completado: Sentadillas (12 repeticiones)

Resultado esperado:
    Al presionar "Siguiente", el sistema registra el ejercicio como completado y muestra el siguiente ejercicio: Flexiones de brazos.
    Se presentan nuevas instrucciones:
    -Mantén el cuerpo alineado.
    -Baja de forma controlada.
    -Realiza 10 repeticiones.
    El usuario puede continuar avanzando por cada ejercicio hasta completar toda la rutina guiada.|




