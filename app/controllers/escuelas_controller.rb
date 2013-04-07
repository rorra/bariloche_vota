class EscuelasController < ApplicationController

def new
  @escuela = Escuela.new
end

def create
  @escuela = Escuela.new(params[:post])

  if @escuela.save
    redirect_to :action => :show, :id => @escuela.id
  else
    render 'new'
  end
end

def show
  @escuela = Escuela.find(params[:id])
end

def index
  @escuelas = Escuela.all
end

def edit
  @escuela = Escuela.find(params[:id])
end


def update
  @escuela = Escuela.find(params[:id])

  if @escuela.update_attributes(params[:escuela])
    redirect_to :action => :show, :id => @escuela.id
  else
    render 'edit'
  end
end

def destroy
  @escuela = Escuela.find(params[:id])
  @escuela.destroy

  redirect_to :action => :index
end

end
