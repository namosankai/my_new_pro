class ExpencesController < ApplicationController
  def index
    @expences = Expence.all
  end
end
