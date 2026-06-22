Acceptance Test N-21:

Feature: Registro de sesión completada con pesos y series

Como usuario intermedio, quiero marcar los ejercicios completados e ingresar el peso y series de cada uno para que la app registre mi sesión del día.

Scenario: Registro exitoso de sesión
Given que el usuario está en la pantalla de su rutina del día
When ingresa el peso y las series por ejercicio y presiona el botón "Finalizar sesión"
Then el sistema muestra una pantalla de resumen con los ejercicios completados y un mensaje de felicitación

Example:

[Entrada:
    Ejercicio: Ejercicio banca inclinada
    Peso: 80kg
    Series: 3
    Repeticiones: 15

    Ejercicio: Ejercicios de mancuernas
    Peso: 20kg
    Series: 3
    Repeticiones: 10

    Ejercicio: Ejercicio salta soga
    Peso: 15kg
    Series: 3
    Repeticiones: 20

    Resultado esperado:
    El sistema muestra el mensaje "¡Buen trabajo!"
    Se visualiza el resumen de la sesión con tiempo, volumen y ejercicios completados.]


Scenario: Sesión guardada parcialmente
Given que el usuario completa solo algunos ejercicios de la rutina del día
When presiona el botón "Finalizar sesión" y el sistema detecta ejercicios sin registrar
Then el sistema muestra un modal preguntando si desea guardar de todas formas o completar los datos faltantes

Example:
[Entrada:
    Ejercicios completados: 7/9
    Ejercicios incompletos: 2
    Acción: Finalizar sesión


    Resultado esperado:
    El sistema muestra el mensaje "¡Ejercicios sin registrar!"
    Botón visible: "Guardar y continuar"
    Botón visible: "Completar las series y pesos"]