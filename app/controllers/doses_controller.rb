class DosesController < ApplicationController
  def new
    # Find the Cocktail, dose is attached to
    @cocktail_find = Cocktail.find(params[:cocktail_id])
    # Create New Dose Instance
    @dose = @cocktail_find.doses.build
  end

  def create
    # Initiate the new Dose Instance
    @new_dose = Dose.new(dose_params)
    # Find Cocktail Id
    @cocktail_find = Cocktail.find(params[:cocktail_id])
    # Cocktail_id > new dose
    @cocktail = @new_dose.cocktail
    # If/else save
    if @new_dose.save
      redirect_to cocktails_path
    else
      render :new
    end

  end

  private

  def dose_params
    params.require(:dose).permit([:description])
  end

end


# <%= simple_form_for [@cocktail_find, @dose] do |f| %>
#   <%= f.input :description %>
#   <%= f.association :cocktail, as: :select%>
#   <%= f.button :submit, class:'btn btn-primary' %>
# <% end %>



