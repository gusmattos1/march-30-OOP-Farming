require_relative 'field'

class Farm

  def initialize
  end

  def print_menu
    puts "\n\nSelect 1 to add a new field"
    puts "Select 2 to harvest"
    puts "Select 3 for a actual status"
    puts "Select 4 to relax"
    puts "Select 5 to Exit"
  end

  def main_menu

    while true

      print_menu
      option = gets.chomp.to_i

      case option
      when 1 then Field.create
      when 2 then Field.harvest
      when 3 then Field.status
      when 4 then Field.relax
      when 5 then exit 
      else puts "Please enter a number between 1 and 5"
        main_menu
      end
    end
  end
end
a=Farm.new
a.main_menu
