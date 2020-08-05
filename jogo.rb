class Oponente

    attr_accessor :adversario
    attr_accessor :jogador

    def inimigo
        @adversario =  ["pedra","papel","tesoura"].sample
        @jogador = jogador

        case jogador

        when "pedra"
            if (adversario) == (jogador)
                puts "Houve um empate!"
            elsif (adversario == "tesoura")
                puts("Você ganhou!")
            else
                puts("Você perdeu!")
            end

        when "tesoura"
            if (adversario) == (jogador)
                puts "Houve um empate!"
            elsif (adversario == "papel")
                puts("Você ganhou!")
            else
                puts("Você perdeu!")
            end

        when "papel"
            if (adversario) == (jogador)
                puts "Houve um empate!"
            elsif (adversario == "pedra")
                puts("Você ganhou!")
            else
                puts("Você perdeu!")
            end

        when "exit"
            puts("Jogo Finalizado!")

        else
            puts ("Você escolheu errado!")
        end
    end
end
puts("===========================================")
puts("=== Bem vindo a pedra, papel e tesoura! ===")
puts("===========================================")
puts("\n")
puts("Você quer começar o jogo? Start ou Exit")
comeco = gets.chomp
puts("\n")

while (comeco == "start") do
    puts("Escolha entre: pedra, papel ou tesoura!")
    jogador = gets.chomp
    
    player = Oponente.new

    player.jogador = jogador
    
    player.inimigo

    puts("Você quer jogar de novo? Start ou Exit")
    comeco = gets.chomp
    puts("\n")
end