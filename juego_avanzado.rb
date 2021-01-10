
puts 'Turno jugador 1. Por favor seleccione piedra, papel, tijera o salir:
1. piedra
2. papel
3. tijera
4. salir'"\n"

jugador_1 = gets.chomp

if jugador_1 == 'piedra' || jugador_1 == 'papel' || jugador_1 == 'tijera'
    
    puts 'Turno jugador 2. Por favor seleccione piedra, papel, tijera o salir:
1. piedra
2. papel
3. tijera
4. salir'"\n"

    jugador_2 = gets.chomp

    if jugador_2 == 'piedra' || jugador_2 == 'papel' || jugador_2 == 'tijera'

        if jugador_1 == 'piedra' && jugador_2 == 'piedra' || jugador_1 == 'tijera' && jugador_2 == 'tijera' || jugador_1 == 'papel' && jugador_2 == 'papel'
            puts 'Empate. El juego ha terminado.'
        elsif jugador_1 == 'piedra' && jugador_2 == 'tijera' || jugador_1 == 'papel' && jugador_2 == 'piedra' || jugador_1 == 'tijera' && jugador_2 == 'papel'
            puts 'Ha ganado el jugador 1. El juego ha terminado.'
        elsif jugador_1 == 'tijera' && jugador_2 == 'piedra' || jugador_1 == 'piedra' && jugador_2 == 'papel' || jugador_1 == 'papel' && jugador_2 == 'tijera'
            puts 'Ha ganado el jugador 2. El juego ha terminado.'
        end
        
    elsif jugador_2 == 'salir'
        puts 'Ha salido del juego.'

    elsif jugador_2 != 'piedra' || jugador_2 != 'papel' || jugador_2 != 'tijera' || jugador_2 != 'salir'
        puts 'Jugador 2: La opción no es válida.'
    end

elsif jugador_1 == 'salir'
    puts 'Ha salido del juego.'
elsif jugador_1 != 'piedra' || jugador_1 != 'papel' || jugador_1 != 'tijera' || jugador_1 != 'salir'
    puts 'Jugador 1: La opción no es válida.'
end

