class PreOrcController < ApplicationController


  def inclui_pre_peca
    pre = PreOrc.new
    orc_id = params[:id]
    pre.orcamento_id = orc_id
    pre.descricao = params[:descricao]
    pre.valor = params[:valor]
    pre.save
    @busca_pre_orc =  PreOrc.where "orcamento_id = ?", orc_id
    respond_to do |format|
      format.html { render :edit }
      format.js
    end
  end

  def destroy
      pre = PreOrc.find(params[:id])
      pre.destroy
      redirect_back fallback_location: @orcamento
  end

end
