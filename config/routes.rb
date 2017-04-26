Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:number", {:controller => "calculations", :action => "square"})

  get("/flexible/square_root/:number", {:controller => "calculations", :action => "square_root"})

  get("/flexible/payment/:basis_points/:number_of_years/:present_value", {:controller => "calculations", :action => "monthly_payment"})

  get("/flexible/random/:first_integer/:second_integer", {:controller => "calculations", :action => "rand_between"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})

  get("/square/results", {:controller => "calculations", :action => "square_new"})

  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})

  get("/square_root/results", {:controller => "calculations", :action => "square_root_new"})

  get("/payment/new", {:controller => "calculations", :action => "monthly_payment_form"})

  get("/monthly_payment/results", {:controller => "calculations", :action => "monthly_payment_new"})

  get("/word_count/new", {:controller => "calculations", :action => "word_count_form"})

  get("/word_count/results", {:controller => "calculations", :action => "word_count_new"})


end
