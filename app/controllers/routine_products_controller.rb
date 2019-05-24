class RoutineProductsController < ApplicationController
  def index
    @routine_products = RoutineProduct.all

    render("routine_product_templates/index.html.erb")
  end

  def show
    @routine_product = RoutineProduct.find(params.fetch("id_to_display"))

    render("routine_product_templates/show.html.erb")
  end

  def new_form
    @routine_product = RoutineProduct.new

    render("routine_product_templates/new_form.html.erb")
  end

  def create_row
    @routine_product = RoutineProduct.new

    @routine_product.routine_id = params.fetch("routine_id")
    @routine_product.product_id = params.fetch("product_id")
    @routine_product.use_frequency_id = params.fetch("use_frequency_id")
    @routine_product.note = params.fetch("note")

    if @routine_product.valid?
      @routine_product.save

      redirect_back(:fallback_location => "/routine_products", :notice => "Routine product created successfully.")
    else
      render("routine_product_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_product
    @routine_product = RoutineProduct.new

    @routine_product.routine_id = params.fetch("routine_id")
    @routine_product.product_id = params.fetch("product_id")
    @routine_product.use_frequency_id = params.fetch("use_frequency_id")
    @routine_product.note = params.fetch("note")

    if @routine_product.valid?
      @routine_product.save

      redirect_to("/products/#{@routine_product.product_id}", notice: "RoutineProduct created successfully.")
    else
      render("routine_product_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_routine
    @routine_product = RoutineProduct.new

    @routine_product.routine_id = params.fetch("routine_id")
    @routine_product.product_id = params.fetch("product_id")
    @routine_product.use_frequency_id = params.fetch("use_frequency_id")
    @routine_product.note = params.fetch("note")

    if @routine_product.valid?
      @routine_product.save

      redirect_to("/routines/#{@routine_product.routine_id}", notice: "RoutineProduct created successfully.")
    else
      render("routine_product_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_usefrequency
    @routine_product = RoutineProduct.new

    @routine_product.routine_id = params.fetch("routine_id")
    @routine_product.product_id = params.fetch("product_id")
    @routine_product.use_frequency_id = params.fetch("use_frequency_id")
    @routine_product.note = params.fetch("note")

    if @routine_product.valid?
      @routine_product.save

      redirect_to("/usefrequencies/#{@routine_product.use_frequency_id}", notice: "RoutineProduct created successfully.")
    else
      render("routine_product_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @routine_product = RoutineProduct.find(params.fetch("prefill_with_id"))

    render("routine_product_templates/edit_form.html.erb")
  end

  def update_row
    @routine_product = RoutineProduct.find(params.fetch("id_to_modify"))

    @routine_product.routine_id = params.fetch("routine_id")
    @routine_product.product_id = params.fetch("product_id")
    @routine_product.use_frequency_id = params.fetch("use_frequency_id")
    @routine_product.note = params.fetch("note")

    if @routine_product.valid?
      @routine_product.save

      redirect_to("/routine_products/#{@routine_product.id}", :notice => "Routine product updated successfully.")
    else
      render("routine_product_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_product
    @routine_product = RoutineProduct.find(params.fetch("id_to_remove"))

    @routine_product.destroy

    redirect_to("/products/#{@routine_product.product_id}", notice: "RoutineProduct deleted successfully.")
  end

  def destroy_row_from_routine
    @routine_product = RoutineProduct.find(params.fetch("id_to_remove"))

    @routine_product.destroy

    redirect_to("/routines/#{@routine_product.routine_id}", notice: "RoutineProduct deleted successfully.")
  end

  def destroy_row_from_use_frequency
    @routine_product = RoutineProduct.find(params.fetch("id_to_remove"))

    @routine_product.destroy

    redirect_to("/usefrequencies/#{@routine_product.use_frequency_id}", notice: "RoutineProduct deleted successfully.")
  end

  def destroy_row
    @routine_product = RoutineProduct.find(params.fetch("id_to_remove"))

    @routine_product.destroy

    redirect_to("/routine_products", :notice => "Routine product deleted successfully.")
  end
end
