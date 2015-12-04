Rails.application.routes.draw do

  mount Availability::Engine => "/availability"
end
