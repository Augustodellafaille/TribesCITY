class PartiesController < ApplicationController
  # before_action :set_party, only: [:show, :edit, :update, :destroy]
  def index
    @parties = Party.all
  end

  def show
     @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
  end

  def create
     @party = Party.new(party_params)

    respond_to do |format|
      if @party.save
        # need to be accepted by an admin
        format.html { redirect_to @party, notice: 'The home-party was successfully created but it need to be approved.' }
        format.json { render :show, status: :created, location: @party }
      else
        format.html { render :new }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @party.update(party_params)
        format.html { redirect_to @party, notice: 'The home-party was successfully updated but it need to be approved.' }
        format.json { render :show, status: :ok, location: @party }
      else
        format.html { render :edit }
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @party.destroy
    respond_to do |format|
      format.html { redirect_to parties_url, notice: 'The home-party was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

  # def set_party
  #   @party = Party.find_by_id
  # end

  def party_params
     params.require(:party).permit(:name, :thema, :description, :accepted, :guest_min, :guest_max, :price_per_person, :date, :starting_hour, :ending_hour, :city, :zip_code, :street, :number)
  end

end
