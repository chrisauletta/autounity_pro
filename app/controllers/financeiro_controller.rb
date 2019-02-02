class FinanceiroController < ApplicationController

def index
  @fornecedors = Fornecedor.all
end

def busca_despesa

  fornecedor = params[:fornecedor]
  datai = params[:datai]
  dataf = params[:dataf]
  @pecat = Peca.joins(:peca_orc, :fornecedor).where("peca_orcs.CREATED_AT BETWEEN TO_DATE(""'#{datai}'"",'DD-MM-YYYY') AND  TO_DATE(""'#{dataf}'"",'DD-MM-YYYY')").group("fornecedors.nome_fornecedor, pecas.id")
  @pecaorc = PecaOrc.where "CREATED_AT BETWEEN TO_DATE(" "'#{datai}'" ",'DD-MM-YYYY') AND  TO_DATE(""'#{dataf}'"",'DD-MM-YYYY')"
  respond_to do |format|
    format.html { render :index }
    format.js
  end

end

end
