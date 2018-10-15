class Tictac
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor =  :play, :current_player

  def init
    @current_player = @player1
  
     puts "Hello Loulou, t'es le premier joueur, c'est quoi ton petit nom?"
     @player1 = gets.chomp

      puts "Mais bon pour un Tic Tac Toe il faut être deux, alors deuxième joueur c'est quoi ton petit nom?"
      @player2 = gets.chomp
      return

  end 

  #Présentation du jeu 
  def welcome
      puts "__________________"
      puts "Bienvenue sur Tic Tac Toe"
      puts "__________________"
      @tab = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
      puts @tab[0..2].to_s
      puts @tab[3..5].to_s
      puts @tab[6..8].to_s

      puts "Ce jeu est le jeu du morpion. L'objectif remplir avec ton signe X ou O, un ligne, une colonne ou une diagonale entière"
      puts "Par exemple, compléter les cases 1, 5 et 9 ou 4, 5 et 6"
      return 
  end 



#defini le symbole de chaque user puis lance le jeu 
  
  def play(input)
      puts "#{@player1}, tu joues avec la lettre X."
      puts "#{@player2}, tu joues avec la lettre O."
      puts "#{@player1}, tu commences? Choisi une case entre 1 et 9:"
      @input = input.to_i
        while (input.between?(1,9))
          @input = gets.chomp.to_i
          @tab.insert("X")[]
          puts @tab
        end 
    return 
  end 

#les positions suivantes sont les gagantes
  def winning_position
    @win = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]
      ]
    if @input == @win
      puts "Tu as gagné"
    else launch.play 
    end
  end  

#défini chaque tour les uns après les autres
  def each_turn
     @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end 


end 


launch = Tictac.new
launch.init
launch.welcome 
launch.play
launch.each_turn
launch.winning_position