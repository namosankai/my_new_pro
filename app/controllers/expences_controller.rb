class ExpencesController < ApplicationController
  def index
    @expenses = Expense.all
  end
end
