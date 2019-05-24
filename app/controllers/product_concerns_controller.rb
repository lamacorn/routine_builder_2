class ProductConcernsController < ApplicationController
  def index
    @product_concerns = ProductConcern.all

    render("product_concern_templates/index.html.erb")
  end

  def show
    @product_concern = ProductConcern.find(params.fetch("id_to_display"))

    render("product_concern_templates/show.html.erb")
  end

  def new_form
    @product_concern = ProductConcern.new

    render("product_concern_templates/new_form.html.erb")
  end

  def create_row
    @product_concern = ProductConcern.new

    @product_concern.concern_id = params.fetch("concern_id")
    @product_concern.product_id = params.fetch("product_id")
    @product_concern.good_for = params.fetch("good_for")

    if @product_concern.valid?
      @product_concern.save

      redirect_back(:fallback_location => "/product_concerns", :notice => "Product concern created successfully.")
    else
      render("product_concern_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @product_concern = ProductConcern.find(params.fetch("prefill_with_id"))

    render("product_concern_templates/edit_form.html.erb")
  end

  def update_row
    @product_concern = ProductConcern.find(params.fetch("id_to_modify"))

    @product_concern.concern_id = params.fetch("concern_id")
    @product_concern.product_id = params.fetch("product_id")
    @product_concern.good_for = params.fetch("good_for")

    if @product_concern.valid?
      @product_concern.save

      redirect_to("/product_concerns/#{@product_concern.id}", :notice => "Product concern updated successfully.")
    else
      render("product_concern_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @product_concern = ProductConcern.find(params.fetch("id_to_remove"))

    @product_concern.destroy

    redirect_to("/product_concerns", :notice => "Product concern deleted successfully.")
  end
end
