Feature: Participar en reto semanal
Como usuario intermedio, quiero participar en un reto semanal para mantener mi motivación y mejorar mi constancia.

Scenario: Reto semanal iniciado
Given que el usuario visualiza el reto semanal en el Home,
When presiona "Participar",
Then el sistema activa el reto y lo agrega a su seguimiento semanal.
Example:
[Entrada:
  Reto disponible: "Completar 4 rutinas"
  Acción: Presionar "Participar"
  Resultado esperado:
  El reto pasa a estado "En progreso" con un contador de 0/4 rutinas.]

Scenario: Reto completado
Given que el usuario cumple las actividades del reto,
When finaliza la semana,
Then el sistema muestra un mensaje de logro y registra el reto como completado.
Example:
[Entrada:
  Progreso del reto: 4/4 rutinas completadas
  Acción: Terminar el último entrenamiento de la semana
  Resultado esperado:
  El sistema despliega una pantalla de celebración "¡Reto superado!" y añade una medalla al historial del perfil.]