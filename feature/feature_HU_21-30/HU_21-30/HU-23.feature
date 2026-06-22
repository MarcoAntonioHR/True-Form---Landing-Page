Acceptance Test N-23:

Feature: Solicitar ajuste de rutina por estancamiento

Como usuario intermedio, quiero presionar un botón para indicar que me siento estancado y que la app me proponga un plan ajustado con nuevos estímulos.

Scenario: Ajuste de rutina exitoso
Given que el usuario accede a su rutina activa y presiona "Ajustar mi plan"
When confirma que siente estancamiento en el modal de confirmación
Then el sistema genera y muestra un nuevo plan con variaciones explicando brevemente cada cambio realizado

Example:
[Entrada:
    Historial registrado: 3 semanas
    Acción: Ajustar mi plan
    Confirmación: Sí, deseo recalibrar mi rutina

  
    Resultado esperado:
    El sistema muestra nuevos estímulos para la rutina.
    Ejemplo de cambio: Cambiar barra por mancuernas.
    Ejemplo de cambio: Agregar repeticiones adicionales.]
 

Scenario: Solicitud sin historial suficiente
Given que el usuario tiene menos de 2 semanas registradas
When presiona "Ajustar mi plan"
Then el sistema muestra un mensaje indicando que necesita más datos y sugiere completar al menos 2 semanas antes de solicitar un ajuste

Example:
[Entrada:
    Historial registrado: 1 semana
    Acción: Ajustar mi plan

 
    Resultado esperado:
    El sistema muestra el mensaje "Faltan más datos"
    Se indica que necesita al menos 2 semanas de historial registrado.]
