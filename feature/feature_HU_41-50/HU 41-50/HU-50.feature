Feature: Reporte mensual de optimización

  Como usuario avanzado, quiero recibir un reporte mensual de optimización para conocer 
  mis avances, estancamientos y recomendaciones de mejora.

Scenario: Reporte mensual generado
  Given que el usuario tiene registros durante el mes,
  When finaliza el período mensual,
  Then el sistema genera un reporte con progreso, cargas, frecuencia y recomendaciones.

Example:
[Entrada:
    Mes: Mayo
    Sesiones del mes: 18
    Frecuencia: 4.5 días/semana

  Resultado esperado:
    El sistema genera el reporte con +8% de carga, mostrando avance de Press banca y Sentadilla.Se 
    incluye una recomendación para junio: priorizar técnica en peso muerto 
    y considerar descarga en semana 3.]


Scenario: Reporte con datos incompletos
  Given que el usuario registró pocas sesiones durante el mes,
  When se genera el reporte,
  Then el sistema muestra un análisis limitado y recomienda registrar más entrenamientos.

Example:
[Entrada:
    Mes: Mayo
    Sesiones del mes: 4
    Frecuencia: 1 día/semana

  Resultado esperado:
    El sistema muestra el mensaje "Reporte incompleto" debido a la baja frecuencia registrada.Se 
    indica que no hay suficientes datos de carga para detectar progresión y se recomienda 
    registrar más sesiones.]