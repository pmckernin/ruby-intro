class ProgramsController < ApplicationController
  def home
    # Your code goes below.

  my_bday=Time.parse("Sept 11th, 1986") 
  today= Time.now

  ssiwb = today-my_bday

 @your_output = ssiwb

  first="Patrick"
  last = "McKernin"
  
  @first_last =  first + " " + last
  @last_first = last +" "+first

    render("programs_templates/home.html.erb")
  end

  def first_program
 

  the_num= rand(100)

  if the_num < 25
    
    @your_output = "it's going to be your lucky day"
    
    elsif the_num > 75
      @your_output = "Dont leave home today"
      
    else
       @your_output = "It'll be an okay day today"
    end
    
    render("programs_templates/first_program.html.erb")
  end

  def second_program
    # Your code goes below.
    
    our_numbers = [3,10,4]
    squared_numbers= [ ]
    
    our_numbers.each do |num|
      square = num * num
      squared_numbers.push(square)
    end
    
    @your_output = squared_numbers

    render("programs_templates/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a

    # Your code goes below.

    @your_output = "Replace this string with your output"

    render("programs_templates/third_program.html.erb")
  end
end
