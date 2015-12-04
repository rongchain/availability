Availability::Engine.routes.draw do
	get '/database' => "availability#database"
	get '/server' => "availability#server"
end
