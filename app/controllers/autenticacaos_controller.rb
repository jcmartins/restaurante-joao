class AutenticacaosController < ApplicationController

  def create
  
    cliente = Cliente.find_by_nome_and_senha(params[:login], params[:senha])
    
    if cliente
       flash[:notice] = "logado com sucesso"
       redirect_to :controller => 'restaurantes', :action => 'index'
       session[:cliente] = cliente #mantem a sessão logada o default é por 20minutos usando cookie
    else
       flash[:notice] ="usuário ou senha invalidos"
       redirect_to login_path
    end
    
  end
  
  def destroy
    reset_session
    redirect_to login_path
  end

  
end
