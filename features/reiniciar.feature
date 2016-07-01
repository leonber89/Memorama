Feature:
  Como jugador de memorama
  Quiero ganar una partida
  Para  divertirme

Scenario: debe mostrar un mensaje de gane
  Given que abri la aplicacion
  When selecciono "cartas"
  And todos los pares encontrados "true"
  Then debo ver "Gane"
