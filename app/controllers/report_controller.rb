class ReportController < ApplicationController
	layout "report"

	def pre_orcamento
		@busca_pre_orc = PreOrc.where "orcamento_id = ?", params[:id]
		@orcamento = Orcamento.find(params[:id])
    	respond_to do |format|
      	format.html
      	format.pdf {render template: 'report/pre_orcamento', pdf: 'report'}   # Excluding ".pdf" extension.
    	end
  	end


	def orcamento
		@orcamento = Orcamento.find(params[:id])
    	respond_to do |format|
      	format.html
      	format.pdf {render template: 'report/orcamento', pdf: 'report'}   # Excluding ".pdf" extension.
    	end
  	end
end
