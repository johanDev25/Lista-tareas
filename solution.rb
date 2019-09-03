require 'sinatra'
require 'make_todo'

get '/' do
	@tareas =  Tarea.all
	erb :index
end

get '/create' do
	erb :create
end


post('/create') {

Tarea.create(params[:titulo]) 
redirect '/'
}

put('/tarea/:id') {  
  Tarea.find(params[:id])
  Tarea.update(params[:id])
  redirect '/'
}

delete('/eliminar/:id') {
Tarea.destroy(params[:id]) 
redirect '/'
}
