Feature:
  Como Pancha
  Quiero visualiza tablero
  Para ver si es un juego no violento

Scenario: debe visualizar el tablero de 6 x 6
  Given configurado el tablero de "6" x "6"
  When inicio el juego
  Then debo ver "Memomara de pares. Tablero 6x6"
