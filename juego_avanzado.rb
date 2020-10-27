

# variables se cargan con valores iniciales
user1 = 99
user2 = 99
invalido = 0
menu = 'SI'

#loop de menu para jugar
while menu.upcase != 'NO' 
    #limpiar pantalla
    system("clear")

    #se valida que la variable invalido tenga el valor de 1 , ya que si tiene 1 es que en algun momento tomó un valor invalido
    if invalido == 1
        puts "Valor inválido. Debe ser piedra, papel o tijera"
    end

     # si el usuario1 tiene valor 99 significa que aun no selecciona su jugada
    if user1 == 99  
        puts 'Menú; turno JUGADOR 1:'
        puts "\n" 
        puts '1) Piedra' 
        puts '2) Papel' 
        puts '3) Tijera' 
        puts '4) Salir'
        puts 'Escribe "salir" para terminar el juego' 
        puts "\n"
        puts 'JUGADOR 1, Ingrese una opción:'

        read1 = gets.chomp
        menu =  read1   

        if read1.upcase == 'SALIR' 
            break
        end

        # juego del usuario
        user1 = 0   if read1 == 'piedra'
        user1 = 1   if read1 == 'papel'
        user1 = 2   if read1 == 'tijera'
        system("clear")
    end
    
    if user1 != 0 && user1 != 1 && user1 != 2
        puts "Valor inválido. Debe ser piedra, papel o tijera"
        # se marca flag invalido en 1, se activa la bandera
        invalido = 1
    else
        # juego del usuario 2
        puts 'Menú; turno JUGADOR 2:' 
        puts "\n"
        puts '1) Piedra' 
        puts '2) Papel' 
        puts '3) Tijera' 
        puts '4) Salir'
        puts 'Escribe "salir" para terminar el juego' 
        puts "\n"
        puts 'JUGADOR 2, Ingrese una opción:'
        read2 = gets.chomp
        menu =  read2 
        if read2.upcase == 'SALIR'
            break
        end

        user2 = 0   if read2 == 'piedra'
        user2 = 1   if read2 == 'papel'
        user2 = 2   if read2 == 'tijera'
        
        if user2 != 0 && user2 != 1 && user2 != 2
            puts "Valor inválido. Debe ser piedra, papel o tijera"
            # se marca flag invalido en 1, se activa la bandera
            invalido = 1
        else
            # condiciones del juego user1 vs user2
            puts "\n"
            puts "\n"
            system("clear")
            puts "Usuario 1 jugó #{read1.upcase} y usuario 2 jugó #{read2.upcase}"
            if user1 == user2
                puts "Empate"
            elsif (user1 == 0 && user2 == 1) || (user1 == 1 && user2 == 2) || (user1 == 2 && user2 == 0)
                puts "Gana Jugador 2"
            elsif (user1 == 0 && user2 == 2) || (user1 == 1 && user2 == 0) || (user1 == 2 && user2 == 1)
                puts "Gana Jugador 1"
            end
            puts "\n"
            puts "\n"

            puts "Desea jugar nuevamente Si o No"
            menu = gets.chomp
            # se pregunta si se desea jugar nuevamente
            if menu.upcase == "SI"
                # si se juega nuevamente entonces se reestablecen las variables a sus valores iniciales
                user1 = 99
                user2 = 99
                invalido = 0
            end
        end
    end

end
puts "\n"
puts "\n"

puts "gracias por jugar"
puts "\n"
puts "\n"