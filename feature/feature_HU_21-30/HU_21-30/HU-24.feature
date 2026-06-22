Acceptance Test N-24:

Feature: Adaptar sesión del día según equipo disponible

Como usuario intermedio, quiero indicar qué equipo tengo hoy disponible para que la app reemplace los ejercicios que no puedo hacer sin cambiar todo mi plan.

Scenario: Adaptación exitosa
Given que el usuario accede a la sesión del día y presiona "Adaptar por equipo"
When selecciona el equipo disponible desde una lista de opciones
Then el sistema reemplaza los ejercicios incompatibles por equivalentes funcionales y muestra la sesión actualizada

Example:
[Entrada:
    Equipo disponible: Mancuernas, banco inclinado y esterilla
    Acción: Confirmar selección


    Resultado esperado:
    El sistema muestra una rutina adaptada.
    Los ejercicios incompatibles son reemplazados por alternativas funcionales.]


Scenario: Sin alternativas para el equipo indicado
Given que el equipo seleccionado no cubre algún ejercicio del día
When el sistema no encuentra equivalentes
Then muestra los ejercicios adaptados disponibles y marca en gris los que no pudieron reemplazarse con una sugerencia de posposición

Example:
[Entrada:
    Equipo disponible: Mancuernas y banda elástica
    Ejercicio no compatible: Ejercicio banca inclinada
    Acción: Adaptar rutina


    Resultado esperado:
    El sistema muestra el ejercicio omitido.
    Se visualiza una sugerencia para cambiar el ejercicio o buscar equipo.]
