class Cms::RolesController < ApplicationController
  before_action :set_cms_role, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_filter {authorize Cms::Role}

  # GET /cms/roles
  # GET /cms/roles.json
  def index
    @cms_roles = Cms::Role.all
  end

  # GET /cms/roles/1
  # GET /cms/roles/1.json
  def show
  end

  # GET /cms/roles/new
  def new
    @cms_role = Cms::Role.new
  end

  # GET /cms/roles/1/edit
  def edit
  end

  # POST /cms/roles
  # POST /cms/roles.json
  def create
    @cms_role = Cms::Role.new(cms_role_params)

    respond_to do |format|
      if @cms_role.save
        format.html { redirect_to @cms_role, notice: 'Role was successfully created.' }
        format.json { render :show, status: :created, location: @cms_role }
      else
        format.html { render :new }
        format.json { render json: @cms_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/roles/1
  # PATCH/PUT /cms/roles/1.json
  def update
    respond_to do |format|
      if @cms_role.update(cms_role_params)
        format.html { redirect_to @cms_role, notice: 'Role was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_role }
      else
        format.html { render :edit }
        format.json { render json: @cms_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/roles/1
  # DELETE /cms/roles/1.json
  def destroy
    @cms_role.destroy
    respond_to do |format|
      format.html { redirect_to cms_roles_url, notice: 'Role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_role
      @cms_role = Cms::Role.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_role_params
      params.require(:cms_role).permit(:title)
    end
end
