Feature:
  Como jugador de memorama
  Quiero iniciar una partida
  Para comenzar a jugar

Scenario: debe mostrar un mensaje de bienvenida que diga, Bienvenido a Found
  Given que abri la aplicacion
  Then debo ver "Bienvenido a Found"

Scenario: debo elegir la opcion default para iniciar una partida por defecto
  Given que abri la aplicacion
  When selecciono "default"
  Then debo ver "Tablero"
