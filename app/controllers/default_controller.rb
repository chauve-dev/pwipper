class DefaultController < ApplicationController
  def index
    if session[:current_user_id]
      @pweep = Pweep.new
      @pweeps = if request.GET['pourtag'].nil?
        Pweep.all
      else
        Pweep.joins(:pourtag).where(pourtag: {label: request.GET['pourtag']})
                end

      @user = Utilisateur.find(session[:current_user_id])
      @users = Utilisateur.all
      @pourtags = Pourtag.group(:label).order('COUNT(label) DESC').limit(10)
    else
      redirect_to '/login'
    end
  end

  def newpweep
    table = params.require(:content).split(/ /, -1)
    pourtags_in_pweep = []
    table.each_with_index do | word, index |
      if word.start_with?("%")
        table[index] = "<a href='?pourtag="+word[1..-1]+"' class='text-pweep-blue'>"+word+"</a>"
        pourtags_in_pweep.push(word)
      end
    end
    pweep = Pweep.create(body: table.join(' '), utilisateur_id: session[:current_user_id])
    pourtags_in_pweep.each do |pourtag|
      Pourtag.create(label: pourtag[1..-1], pweep_id: pweep.id)
    end
    redirect_to '/'
  end
end
