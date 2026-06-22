Feature: Alerta de sobrecarga excesiva
Como usuario intermedio, quiero recibir una alerta si aumento demasiado la carga para evitar lesiones o fatiga innecesaria.

Scenario: Alerta por aumento excesivo
Given que el usuario ingresa una carga muy superior a la sesión anterior,
When intenta guardar el ejercicio,
Then el sistema muestra una alerta indicando que el incremento puede ser riesgoso.
Example:
[Entrada:
  Carga sesión anterior: 50 kg
  Nueva carga ingresada: 80 kg
  Acción: Guardar ejercicio
  Resultado esperado:
  El sistema muestra una alerta: "Aumento de carga riesgoso. Sugerimos un incremento más gradual."]

Scenario: Carga dentro del rango
Given que el usuario ingresa una carga adecuada,
When guarda el ejercicio,
Then el sistema registra el dato sin mostrar advertencias.
Example:
[Entrada:
  Carga sesión anterior: 50 kg
  Nueva carga ingresada: 55 kg
  Acción: Guardar ejercicio
  Resultado esperado:
  El sistema guarda la nueva carga correctamente sin saltar notificaciones adicionales.]