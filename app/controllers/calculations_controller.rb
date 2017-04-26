class CalculationsController <ApplicationController

  def square_form

    render("calculations/square_form.html.erb")

  end

  def square_root_form

    render("calculations/square_root_form.html.erb")

  end

  def monthly_payment_form

    render("calculations/monthly_payment_form.html.erb")

  end

  def square_new

    @user_num = params["user_num"].to_f
    @square_new = @user_num**2
    render("calculations/square.html.erb")

  end

  def square_root_new

    @user_num = params["user_num"].to_f
    @square_root_new = @user_num**0.5
    render("calculations/square_root.html.erb")

  end

  def monthly_payment_new

    @basis_points = params["user_apr"].to_f*100
    @number_of_years = params["number_of_years"].to_f
    @present_value = params["present_value"].to_f
    rate_monthly = @basis_points/120000
    number_of_periods = @number_of_years*12

    formula_numerator = rate_monthly*@present_value
    formula_denominator = 1-(1+(rate_monthly))**(0-number_of_periods)


    @monthly_payment = formula_numerator/formula_denominator
    render("calculations/monthly_payment.html.erb")

  end

  def square

    @user_num = params[:number].to_f
    @square = @user_num**2
    render("calculations/flexible_square.html.erb")

  end

  def square_root

    @user_num = params[:number].to_f
    @square_root = @user_num**0.5
    render("calculations/flexible_square_root.html.erb")

  end

  def monthly_payment

    @basis_points = params[:basis_points].to_f
    @number_of_years = params[:number_of_years].to_f
    @present_value = params[:present_value].to_f
    rate_monthly = @basis_points/120000
    number_of_periods = @number_of_years*12

    formula_numerator = rate_monthly*@present_value
    formula_denominator = 1-(1+(rate_monthly))**(0-number_of_periods)


    @monthly_payment = formula_numerator/formula_denominator
    render("calculations/flexible_monthly_payment.html.erb")

  end

  def rand_between

    @first_integer = params[:first_integer].to_i
    @second_integer = params[:second_integer].to_i
    @random_number = rand(@first_integer..@second_integer)
    render("calculations/flexible_random_number.html.erb")

  end


end
