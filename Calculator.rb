# Hansel Lopez	
# 23/09/2022
# Description: This program is a calculator in ruby using gem 'calcugem'

require 'calcugem'

class Calculator
  def loop_calculator_menu
    loop do
      puts "\n"
      puts "#" * 50
      puts "Basic Calculator".center(50)
      puts "#" * 50
      puts "\n1. Addition"
      puts "2. Subtraction"
      puts "3. Multiplication"
      puts "4. Division"
      puts "5. Exponent"
      puts "6. Square Root"
      puts "7. Cube Root"
      puts "8. Exit"
      puts "\nEnter your choice: "
      get_choice
    end
  end

  def get_choice
    choice = gets.chomp.to_i
    case choice
    when 1
      addition
    when 2
      subtraction
    when 3
      multiplication
    when 4
      division
    when 5
      exponent
    when 6
      square_root
    when 7
      cube_root
    when 8
      exit
    else
      puts "Invalid choice"
    end
  end

  def addition
    calc = Calcugem.new
    puts "\nEnter first number: "
    num1 = gets.chomp.to_i
    puts "\nEnter second number: "
    num2 = gets.chomp.to_i
    puts "\nThe result is: #{calc.sum(num1, num2)}"
    # Press enter to continue
    puts "\n--Press enter to finish--".center(50)
    gets
  end

  def subtraction
    calc = Calcugem.new
    puts "\nEnter first number: "
    num1 = gets.chomp.to_i
    puts "\nEnter second number: "
    num2 = gets.chomp.to_i
    puts "\nThe result is: #{calc.subtract(num1, num2)}"
    # Press enter to continue
    puts "\n--Press enter to finish--".center(50)
    gets
  end

  def multiplication
    calc = Calcugem.new
    puts "\nEnter first number: "
    num1 = gets.chomp.to_i
    puts "\nEnter second number: "
    num2 = gets.chomp.to_i
    puts "\nThe result is: #{calc.multiply(num1, num2)}"
    # Press enter to continue
    puts "\n--Press enter to finish--".center(50)
    gets
  end

  def division
    calc = Calcugem.new
    puts "\nEnter first number: "
    num1 = gets.chomp.to_i
    puts "\nEnter second number: "
    num2 = gets.chomp.to_i

    # Check if the second number is 0
    if num2 == 0
      puts "\nCannot divide by 0"
      # Press enter to continue
      puts "\n--Press enter to finish--".center(50)
      gets
    else
      puts "\nThe result is: #{calc.divide(num1, num2)}"
      # Press enter to continue
      puts "\n--Press enter to finish--".center(50)
      gets
    end
  end

  def exponent
    calc = Calcugem.new
    puts "\nEnter first number: "
    num1 = gets.chomp.to_i
    puts "\nEnter second number: "
    num2 = gets.chomp.to_i
    puts "\nThe result is: #{calc.exponent(num1, num2)}"
    # Press enter to continue
    puts "\n--Press enter to finish--".center(50)
    gets
  end

  def square_root
    calc = Calcugem.new
    puts "\nEnter number: "
    num = gets.chomp.to_i
    puts "\nThe result is: #{calc.square_root(num)}"
    # Press enter to continue
    puts "\n--Press enter to finish--".center(50)
    gets
  end

  def cube_root
    calc = Calcugem.new
    puts "\nEnter number: "
    num = gets.chomp.to_i
    puts "\nThe result is: #{calc.cube_root(num)}"
    # Press enter to continue
    puts "\n--Press enter to finish--".center(50)
    gets
  end
end

calculator = Calculator.new
calculator.loop_calculator_menu