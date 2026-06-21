class InvestorsController < ApplicationController
  def new
    @investor = Investor.new
  end

  def create
    @investor = Investor.new(investor_params)

   if @investor.save
  redirect_to root_path(
  highlighted_investor_id: @investor.id
), notice: "Investor added successfully."
   else
  render :new, status: :unprocessable_entity
   end
  end

  def edit
    @investor = Investor.find(params[:id])
  end

  def update
    @investor = Investor.find(params[:id])

    if @investor.update(investor_params)
      redirect_to root_path(
  highlighted_investor_id: @investor.id
), notice: "Investor updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  @investor = Investor.find(params[:id])
  @investor.destroy

  redirect_to root_path, notice: "Investor deleted successfully."
  end

  private

  def investor_params
    params.require(:investor).permit(
      :name,
      :status,
      :commitment_amount,
      :next_action
    )
  end
end
