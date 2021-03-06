class MonkiesController < ApplicationController
  def index

    monkies_integer = params[:number_of_monkies].to_i
    @monkies_in_html = 0

    if monkies_integer < 100
      @monkies_in_html = monkies_integer
    else
      @warning = "oops!"+ monkies_integer.to_s

    end
  end

  def new

    @monkey=Monkey.new
  end

  def create

    @monkey = Monkey.new

    permitted_params = params.require(:monkey).permit(:name, :weight)
    puts params[:monkey]
    if Monkey.create(permitted_params)

      redirect_to :action => "list"
    else
      render :action =>"new"
    end
  end

  def list
    @list = Monkey.all
    puts @list
  end

  def list_monkey
    monkey_name=params[:name_of_monkey]
    puts "this is the name of the monkey"
    puts monkey_name
  end
end
