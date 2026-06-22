Feature: Evaluar confianza después de entrenar  

    Como usuario principiante, quiero indicar cómo me sentí después de entrenar para que la app conozca mi nivel de confianza y ajuste futuras recomendaciones.     

Scenario: Recomendaciones visibles
    Given que el usuario termina una rutina,
    When selecciona una opción como “seguro”, “con dudas” o “difícil”,
    Then el sistema guarda esa percepción en su historial.

Example: 
|Entrada:
    Rutina completada: Principiante - Tren superior
    Percepción seleccionada: Seguro

Acción:
    El usuario finaliza la rutina y selecciona la opción "Seguro".

Resultado:
    El sistema registra la percepción en el historial del usuario para utilizarla en futuras recomendaciones.|

Scenario: Usuario con dudas
    Given que el usuario indica que terminó con dudas,
    When guarda su respuesta,
    Then el sistema le sugiere revisar tips o consultar al asistente IA.

Example:
|Entrada:
    Rutina completada: Principiante - Piernas
    Percepción seleccionada: Con dudas

Acción:
    El usuario selecciona la opción "Con dudas" y guarda su respuesta.

Resultado:
    El sistema registra la percepción y muestra el mensaje: "Te recomendamos revisar los tips de entrenamiento o consultar al asistente IA para resolver tus dudas." 
    Además, se muestran las opciones [Ver Tips] y [Consultar IA].|



    