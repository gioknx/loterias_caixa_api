class LoteriaController < ApplicationController
  def all
    results = []
    results << LoteriasCaixa.duplasena(params[:duplasena_contest_id].to_i).merge({contest_name: 'duplasena'})
    results << LoteriasCaixa.lotomania(params[:lotomania_contest_id].to_i).merge({contest_name: 'lotomania'})
    results << LoteriasCaixa.quina(params[:quina_contest_id].to_i).merge({contest_name: 'quina'})
    results << LoteriasCaixa.megasena(params[:megasena_contest_id].to_i).merge({contest_name: 'megasena'})
    results << LoteriasCaixa.timemania(params[:timemania_contest_id].to_i).merge({contest_name: 'timemania'})
    results << LoteriasCaixa.lotofacil(params[:lotofacil_contest_id].to_i).merge({contest_name: 'lotofacil'})

    render json: results
  end

  def duplasena
    results = LoteriasCaixa.duplasena(params[:contest_id].to_i)
    render json: results.merge({contest_name: __method__})
  end

  def lotomania
    results = LoteriasCaixa.lotomania(params[:contest_id].to_i)
    render json: results.merge({contest_name: __method__})
  end
  def quina
    results = LoteriasCaixa.quina(params[:contest_id].to_i)
    render json: results.merge({contest_name: __method__})
  end

  def megasena
    results = LoteriasCaixa.megasena(params[:contest_id].to_i)
    render json: results.merge({contest_name: __method__})
  end

  def timemania
    results = LoteriasCaixa.timemania(params[:contest_id].to_i)
    render json: results.merge({contest_name: __method__})
  end

  def lotofacil
    results = LoteriasCaixa.lotofacil(params[:contest_id].to_i)
    render json: results.merge({contest_name: __method__})
  end
end
