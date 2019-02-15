class DashboardController < ApplicationController
  before_action :authorize, except: [:busca_orcamento]

	def index
	@orc = Orcamento.where("status != " "'9. Finalizado'")

	end

	def busca_orcamento
	  status = params[:status]
	  @orc = Orcamento.where "status = " "'#{status}'"
	  respond_to do |format|
	    format.html
	    format.js
	  end
	end

end
