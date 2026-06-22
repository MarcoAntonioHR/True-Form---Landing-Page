Feature: Exportar resumen de progreso

  Como usuario avanzado, quiero exportar un resumen de mi progreso para revisar 
  mis resultados y compartirlos si lo considero necesario.

Scenario: Exportación exitosa
  Given que el usuario accede a su historial de progreso,
  When presiona "Exportar resumen",
  Then el sistema genera un archivo o vista resumida con sus métricas principales.

Example:
[Entrada:
    Sesiones registradas: 24
    Formato seleccionado: PDF
    Acción: Exportar resumen

  Resultado esperado:
    El sistema genera un archivo PDF con 24 sesiones y 48,000 kg totales movidos.
    El archivo queda disponible para descargar o compartir.]


Scenario: Sin información suficiente
  Given que el usuario no tiene registros relevantes,
  When intenta exportar su resumen,
  Then el sistema muestra un mensaje indicando que no hay datos suficientes.

Example:
[Entrada:
    Sesiones completadas: 1
    Mínimo requerido: 3

  Resultado esperado:
    El sistema muestra el mensaje "Sin datos suficientes".
    Se muestra el progreso 1/3 sesiones y la opción de iniciar una nueva sesión.]