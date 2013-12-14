class Users::CollectionsController < ApplicationController
  before_action :set_users_collection, only: [:show, :edit, :update, :destroy]

  # GET /users/collections
  # GET /users/collections.json
  def index
    @users_collections = Users::Collection.all
  end

  # GET /users/collections/1
  # GET /users/collections/1.json
  def show
  end

  # GET /users/collections/new
  def new
    @users_collection = Users::Collection.new
  end

  # GET /users/collections/1/edit
  def edit
  end

  # POST /users/collections
  # POST /users/collections.json
  def create
    @users_collection = Users::Collection.new(users_collection_params)

    respond_to do |format|
      if @users_collection.save
        format.html { redirect_to @users_collection, notice: 'Collection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @users_collection }
      else
        format.html { render action: 'new' }
        format.json { render json: @users_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/collections/1
  # PATCH/PUT /users/collections/1.json
  def update
    respond_to do |format|
      if @users_collection.update(users_collection_params)
        format.html { redirect_to @users_collection, notice: 'Collection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @users_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/collections/1
  # DELETE /users/collections/1.json
  def destroy
    @users_collection.destroy
    respond_to do |format|
      format.html { redirect_to users_collections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_collection
      @users_collection = Users::Collection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_collection_params
      params.require(:users_collection).permit(:title, :description)
    end
end
