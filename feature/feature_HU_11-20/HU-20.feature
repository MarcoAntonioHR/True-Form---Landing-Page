Feature: Mensaje motivacional al finalizar rutina    

    Como usuario principiante, quiero recibir un mensaje motivacional al finalizar mi rutina para mantener la constancia en mi entrenamiento.  

Scenario: Mensaje mostrado correctamente
    Given que el usuario completa todos los ejercicios de la rutina,
    When presiona “Finalizar”,
    Then el sistema muestra un mensaje positivo relacionado con su avance. 


Example: 
|Entrada:
Entrada:

    Rutina: Principiante - Cuerpo completo
    Estado: Todos los ejercicios completados

Acción:
    El usuario presiona el botón [Finalizar].

Resultado:
    El sistema registra la rutina como completada y muestra el mensaje: "¡Excelente trabajo! Has completado tu rutina de hoy. Sigue así para alcanzar tus objetivos."|

Scenario:Sin perfil completo
    Given que el usuario no completa todos los ejercicios,
    When intenta finalizar la rutina,
    Then el sistema muestra un mensaje de ánimo y le permite guardar el progreso parcial. 
 

Example:
|
    Rutina: Principiante - Cuerpo completo
    Estado: 6 de 10 ejercicios completados

Acción:
    El usuario presiona el botón "Finalizar" sin haber terminado toda la rutina.

Resultado:
    El sistema muestra el mensaje: "¡Buen trabajo! Has avanzado en tu entrenamiento. 
    Puedes continuar más tarde para completar la rutina." tambien le permite guardar el progreso realizado hasta ese momento.|

