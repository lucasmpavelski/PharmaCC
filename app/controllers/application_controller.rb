class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Voce nao tem permissao para acessar esta pagina."
    redirect_to root_url
  end

end
