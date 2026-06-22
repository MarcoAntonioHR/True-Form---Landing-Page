Feature: Historial comparativo de rendimiento por período
Como usuario avanzado, quiero seleccionar dos períodos de tiempo y comparar mis métricas de rendimiento para validar si mi estrategia de entrenamiento está funcionando a largo plazo.

Scenario: Comparativa exitosa entre períodos
Given que el usuario accede a "Historial" y selecciona dos períodos distintos mediante un selector de fechas,
When presiona "Comparar",
Then el sistema muestra una pantalla con gráficos lado a lado de cargas, volumen y frecuencia entre los dos períodos seleccionados.
Example:
[Entrada:
  Período 1: Mes 1
  Período 2: Mes 3
  Acción: Clic en botón "Comparar"
  Resultado esperado:
  Se visualizan gráficos de líneas mostrando el progreso en las cargas entre el primer y el tercer mes.]

Scenario: Historial insuficiente para comparar
Given que el usuario tiene menos de 4 semanas registradas,
When intenta seleccionar dos períodos,
Then el sistema deshabilita el botón "Comparar" y muestra un mensaje indicando las semanas mínimas necesarias para activar la comparativa.
Example:
[Entrada:
  Historial registrado total: 2 semanas
  Acción: Tratar de interactuar con el selector de períodos para comparar
  Resultado esperado:
  Botón deshabilitado y un globo emergente que dice "Requiere al menos 4 semanas de datos registrados para habilitar las comparaciones".]