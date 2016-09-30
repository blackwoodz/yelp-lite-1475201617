class OwnerResponsesController < ApplicationController
  def index
    @owner_responses = OwnerResponse.all
  end

  def show
    @owner_response = OwnerResponse.find(params[:id])
  end

  def new
    @owner_response = OwnerResponse.new
  end

  def create
    @owner_response = OwnerResponse.new
    @owner_response.response = params[:response]
    @owner_response.review_id = params[:review_id]
    @owner_response.ownership_id = params[:ownership_id]

    if @owner_response.save
      redirect_to "/owner_responses", :notice => "Owner response created successfully."
    else
      render 'new'
    end
  end

  def edit
    @owner_response = OwnerResponse.find(params[:id])
  end

  def update
    @owner_response = OwnerResponse.find(params[:id])

    @owner_response.response = params[:response]
    @owner_response.review_id = params[:review_id]
    @owner_response.ownership_id = params[:ownership_id]

    if @owner_response.save
      redirect_to "/owner_responses", :notice => "Owner response updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @owner_response = OwnerResponse.find(params[:id])

    @owner_response.destroy

    redirect_to "/owner_responses", :notice => "Owner response deleted."
  end
end
