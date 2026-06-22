Feature: Visualizar tips básicos de entrenamiento

    Como usuario principiante, quiero ver tips básicos de entrenamiento para aprender recomendaciones simples antes de realizar mis ejercicios.    

Scenario: Tips mostrados en pantalla
    Given que el usuario está en la pantalla principal,
    When revisa la sección de tips,
    Then el sistema muestra consejos breves sobre técnica, descanso o constancia. 

Example: 
|
    Nivel: Principiante
    Sección: Tips de entrenamiento

Resultado:
    Tip mostrado: "Realiza un calentamiento de 5 minutos antes de entrenar".
    El consejo aparece correctamente en pantalla.|

Scenario: Actualización de tips
    Given que el usuario vuelve a ingresar otro día,
    When accede nuevamente a la sección de tips,
    Then el sistema muestra una recomendación diferente o actualizada.

Example:
|
    Día 1: Usuario consulta tips.
    Día 2: Usuario vuelve a consultar tips.

Resultado:
    Día 1: "Mantén una postura correcta durante los ejercicios".
    Día 2: "Descansa entre 7 y 8 horas para mejorar tu recuperación".
    Se muestra un tip distinto al visualizado anteriormente.|


