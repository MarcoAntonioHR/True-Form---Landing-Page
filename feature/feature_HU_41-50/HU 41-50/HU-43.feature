Feature: Explorar variantes avanzadas de ejercicios

  Como usuario avanzado, quiero explorar variantes avanzadas de ejercicios para diversificar 
  mi rutina y evitar la monotonía.

Scenario: Variantes mostradas
  Given que el usuario abre el detalle de un ejercicio,
  When selecciona "Ver variantes",
  Then el sistema muestra variantes avanzadas relacionadas con el mismo grupo muscular.

Example:
[Entrada:
    Ejercicio seleccionado: Press banca
    Acción: Ver variantes

  Resultado esperado:
    El sistema muestra "Press banca inclinado", "Press declinado" y "Press mancuernas neutro".
    Cada variante incluye el grupo muscular enfatizado y el equipo requerido.]


Scenario: Filtro por equipo disponible
  Given que el usuario tiene equipo limitado registrado,
  When busca variantes avanzadas,
  Then el sistema prioriza ejercicios compatibles con el equipo disponible.

Example:
[Entrada:
    Ejercicio seleccionado: Press banca
    Equipo disponible: Mancuernas, banda elástica

  Resultado esperado:
    El sistema muestra primero "Press mancuernas plano" y "Flexión diamante", marcados como "Compatible".
    Las variantes que requieren equipo no disponible quedan ocultas o al final de la lista.]
