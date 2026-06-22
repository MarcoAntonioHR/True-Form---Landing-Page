Feature: Visualizar recomendaciones iniciales en Home 

    Como usuario principiante, quiero ver recomendaciones básicas en la pantalla principal para saber por dónde empezar sin sentirme perdido.   

Scenario: Recomendaciones visibles
    Given que el usuario ingresa a la pantalla principal,
    When la app carga su información inicial,
    Then el sistema muestra recomendaciones según su nivel, objetivo y equipo disponible. 

Example: 
|Entrada:
    Nivel: Intermedio
    Objetivo: Ganar masa muscular
    Equipo: Mancuernas

Resultado:
    Recomendación mostrada: "Rutina de hipertrofia con mancuernas".
    Se visualizan ejercicios sugeridos en la pantalla principal.|

Scenario:Sin perfil completo
    Given que el usuario no terminó de configurar su perfil,
    When ingresa al Home,
    Then el sistema muestra un mensaje invitándolo a completar sus datos. 

Example:
|Entrada:
    Nivel: No definido
    Objetivo: No definido
    Equipo: No definido

Resultado:
    Mensaje mostrado: "Completa tu perfil para recibir recomendaciones personalizadas".
    Botón visible: [Completar perfil].|



