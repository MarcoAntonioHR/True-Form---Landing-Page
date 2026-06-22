Feature: Cambiar ejercicio por alternativa más fácil   

    Como usuario principiante, quiero cambiar un ejercicio difícil por una alternativa más sencilla para continuar mi rutina sin frustrarme.  

Scenario: Cambio exitoso de ejercicio
    Given que el usuario visualiza un ejercicio de su rutina,
    When presiona “Cambiar ejercicio”,
    Then el sistema muestra una alternativa más fácil del mismo grupo muscular. 


Example: 
|
Ejercicio actual: "Flexiones de brazos tradicionales"

Resultado esperado:
El usuario considera que el ejercicio es demasiado exigente y selecciona la opción [Cambiar ejercicio].
El sistema busca una alternativa adecuada para principiantes y muestra flexiones con apoyo de rodillas, manteniendo el trabajo sobre el mismo grupo muscular.
Se presentan instrucciones actualizadas y una breve explicación:
"Esta versión reduce la intensidad del ejercicio y te permitirá desarrollar fuerza progresivamente sin comprometer la técnica."
El usuario puede continuar la rutina sin afectar su progreso.|

Scenario:   Sin alternativa disponible
    Given que no existe una alternativa registrada,
    When el usuario solicita el cambio,
    Then el sistema muestra un mensaje indicando que consulte al asistente IA. 

Example:
|Entrada:
    Ejercicio actual: Ejercicio especializado de movilidad avanzada

Resultado esperado:
    El usuario presiona "Cambiar ejercicio", pero el sistema no encuentra una alternativa equivalente registrada para ese ejercicio.
    Se muestra el mensaje:
    "No se encontró una alternativa disponible para este ejercicio. Puedes consultar al asistente IA para recibir una recomendación personalizada."
    Además, aparece el botón [Consultar IA], permitiendo que el usuario solicite orientación para continuar su entrenamiento de forma segura.|


