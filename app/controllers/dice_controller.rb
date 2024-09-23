class DiceController < ApplicationController
  def home
    render({ :template => "game_templates/home"})
  end

  def flexible
      @num_dice = params.fetch("number_of_dice").to_i
      @sides = params.fetch("how_many_sides").to_i
      @rolls = []
      @num_dice.times do
        die = rand(1..6)
        @rolls.push(die)
      end
    
    render({ :template => "game_templates/flexible"})
  end

  def twosix
      @rolls = []
      2.times do
        die = rand(1..6)
        @rolls.push(die)
      end
    
    render({ :template => "game_templates/twosix"})
  end

  def twoten
      @rolls = []
      2.times do
        die = rand(1..10)
        @rolls.push(die)
      end
    
    render({ :template => "game_templates/twoten"}) 
  end

  def onetwenty
      @rolls = []
      1.times do
        die = rand(1..20)
        @rolls.push(die)
      end
    
    render({ :template => "game_templates/onetwenty"})
  end

  def fivefour
      @rolls = []
      5.times do
        die = rand(1..4)
        @rolls.push(die)
      end
    
    render({ :template => "game_templates/fivefour"})
  end
end
