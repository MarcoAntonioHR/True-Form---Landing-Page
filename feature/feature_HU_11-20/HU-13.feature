Feature: Consultar términos básicos de entrenamiento 

    Como usuario principiante, quiero consultar el significado de términos fitness para entender mejor las rutinas y evitar confusiones.   

Scenario: Consulta exitosa de término
 Given que el usuario busca un término como series, repeticiones o descanso,
 When ingresa la palabra en el buscador de ayuda,
 Then el sistema muestra una explicación breve y fácil de entender


Example: 
|
    Busqueda:"Series"

Resultado esperado:
    El sistema muestra la definición:
    "Una serie es un conjunto de repeticiones de un ejercicio realizadas de forma continua antes de tomar un descanso."
    Además, se muestra un ejemplo práctico:
    "Si realizas 10 sentadillas, descansas y luego haces otras 10, habrás completado 2 series de 10 repeticiones."
    El usuario puede comprender el significado del término sin necesidad de conocimientos previos.|

Scenario:   Término no encontrado
    Given que el usuario busca un término que no existe,
    When el sistema no encuentra resultados,
    Then muestra un mensaje indicando que puede consultar al asistente IA. 

Example:
|
Entado:
    Término buscado: Superhipertraining

Resultado esperado:
    El sistema no encuentra coincidencias en la base de términos fitness y muestra el mensaje:
    "No se encontró información para el término ingresado. Puedes consultar al asistente IA para obtener una explicación o información relacionada."
    También se muestra el botón [Consultar IATrueForm], permitiendo al usuario recibir ayuda adicional sin abandonar la aplicación.|

