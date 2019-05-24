class UsefrequenciesController < ApplicationController
  def index
    @q = Usefrequency.ransack(params[:q])
    @usefrequencies = @q.result(:distinct => true).includes(:routine_products).page(params[:page]).per(10)

    render("usefrequency_templates/index.html.erb")
  end

  def show
    @routine_product = RoutineProduct.new
    @usefrequency = Usefrequency.find(params.fetch("id_to_display"))

    render("usefrequency_templates/show.html.erb")
  end

  def new_form
    @usefrequency = Usefrequency.new

    render("usefrequency_templates/new_form.html.erb")
  end

  def create_row
    @usefrequency = Usefrequency.new

    @usefrequency.description = params.fetch("description")

    if @usefrequency.valid?
      @usefrequency.save

      redirect_back(:fallback_location => "/usefrequencies", :notice => "Usefrequency created successfully.")
    else
      render("usefrequency_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @usefrequency = Usefrequency.find(params.fetch("prefill_with_id"))

    render("usefrequency_templates/edit_form.html.erb")
  end

  def update_row
    @usefrequency = Usefrequency.find(params.fetch("id_to_modify"))

    @usefrequency.description = params.fetch("description")

    if @usefrequency.valid?
      @usefrequency.save

      redirect_to("/usefrequencies/#{@usefrequency.id}", :notice => "Usefrequency updated successfully.")
    else
      render("usefrequency_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @usefrequency = Usefrequency.find(params.fetch("id_to_remove"))

    @usefrequency.destroy

    redirect_to("/usefrequencies", :notice => "Usefrequency deleted successfully.")
  end
end
