class RestaurantesController < ApplicationController
 before_filter :logado? #chama a def logado caso o usuário ainda não esteja logado

 def index
#  @restaurante = Restaurante.find(:all, :order => "nome")
   @restaurante = Restaurante.paginate :page => params['page'], :per_page=>2  #usando a gem will_paginate
 end

 def show
  @restaurante = Restaurante.find(params[:id])
 end
 
 
 def create
  @restaurante = Restaurante.new(params[:restaurante])
  if @restaurante.save
    redirect_to(:action => "show", :id => @restaurante)
  else
    render :action => "new"
  end
 end
 
 def edit
  @restaurante = Restaurante.find(params[:id])
 end
  
 def update
  @restaurante = Restaurante.find(params[:id])
  if @restaurante.update_attributes(params[:id])
    redirect_to(:action => "show", :id => @restaurante)
  else
    render :action => "edit"
  end
 end
 
 def destroy
  @restaurante = Restaurante.find(params[:id])
   @restaurante.destroy
   redirect_to(:action => "index", :id => @restaurante)
 end
 
end 

