Feature: Reportar molestia durante un ejercicio    

    Como usuario principiante, quiero reportar si siento molestia durante un ejercicio para recibir una recomendación más segura.   

Scenario: Reporte de molestia registrado
    Given que el usuario está viendo el detalle de un ejercicio,
    When presiona “Siento molestia”,
    Then el sistema registra el reporte y muestra una recomendación preventiva. 


Example: 
|
Ejercicio actual: "Zancadas"

Resultado esperado:
    Mientras realiza el ejercicio, el usuario siente una ligera molestia en la rodilla y presiona el botón [Siento molestia].
    El sistema registra el reporte y muestra el mensaje:
    "Si experimentas dolor o incomodidad, detén el ejercicio y verifica que estés realizando la técnica correctamente. Evita forzar el movimiento."
    Además, se muestra una alerta indicando que la seguridad del usuario es prioritaria durante el entrenamiento.|

Scenario:Sugerencia de alternativa
    Given que el usuario reporta molestia en un ejercicio,
    When el sistema procesa la información,
    Then sugiere consultar al asistente o cambiar por una alternativa más simple. 

Example:
|
Ejercicio reportado: "Flexiones de brazos"

Resultado esperado:
    Después de registrar la molestia, el sistema analiza el reporte y muestra opciones de apoyo al usuario.
    Se presenta el mensaje:
    "Puedes consultar al asistente para recibir orientación adicional o reemplazar este ejercicio por una alternativa de menor intensidad."
    Como alternativa, el sistema recomienda flexiones apoyando las rodillas en lugar de las flexiones tradicionales y muestra los botones [Consultar asistente] y
    [Cambiar ejercicio] para que el usuario elija la opción que considere más adecuada.|

