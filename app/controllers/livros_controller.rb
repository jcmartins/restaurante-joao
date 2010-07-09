class LivrosController < ApplicationController
 def index
  @livros = Livro.find(:all, :order => "nome")
 end

 def show
  @livros = Livro.find(params[:id])
 end
 
 def create
  @livros = Livro.new(params[:livro])
  if @livros.save
    redirect_to (:action => "show", :id => @livros)
  else
    render :action => "new"
  end  
 end
 
 def edit
  @livros = Livro.find(params[:id])
 end
  
 def update
  @livros = livro.find(params[:id])
  if @livros.update_attributes(params[:id])
    redirect_to (:action => "show", :id => @livros)
  else
    render :action => "edit"
  end
 end
 
 def destroy
  @livros = livro.find(params[:id])
   @livros.destroy
   redirect_to (:action => "index", :id => @livros)
 end
end 

