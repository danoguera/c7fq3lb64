class ExpensesController < ApplicationController
	before_action :authenticate_user!
  def index
     @expenses = Expense.order("date DESC").where("user_id=?",current_user.id)
  end
end
