class CrudtutoriaisController < ApplicationController
  before_action :set_crudtutoriai, only: [:show, :edit, :update, :destroy]

  # GET /crudtutoriais
  # GET /crudtutoriais.json
  def index
    @crudtutoriais = Crudtutoriai.all
  end

  # GET /crudtutoriais/1
  # GET /crudtutoriais/1.json
  def show
  end

  # GET /crudtutoriais/new
  def new
    @crudtutoriai = Crudtutoriai.new
  end

  # GET /crudtutoriais/1/edit
  def edit
  end

  # POST /crudtutoriais
  # POST /crudtutoriais.json
  def create
    @crudtutoriai = Crudtutoriai.new(crudtutoriai_params)

    respond_to do |format|
      if @crudtutoriai.save
        format.html { redirect_to @crudtutoriai, notice: 'Crudtutoriai was successfully created.' }
        format.json { render :show, status: :created, location: @crudtutoriai }
      else
        format.html { render :new }
        format.json { render json: @crudtutoriai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crudtutoriais/1
  # PATCH/PUT /crudtutoriais/1.json
  def update
    respond_to do |format|
      if @crudtutoriai.update(crudtutoriai_params)
        format.html { redirect_to @crudtutoriai, notice: 'Crudtutoriai was successfully updated.' }
        format.json { render :show, status: :ok, location: @crudtutoriai }
      else
        format.html { render :edit }
        format.json { render json: @crudtutoriai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crudtutoriais/1
  # DELETE /crudtutoriais/1.json
  def destroy
    @crudtutoriai.destroy
    respond_to do |format|
      format.html { redirect_to crudtutoriais_url, notice: 'Crudtutoriai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crudtutoriai
      @crudtutoriai = Crudtutoriai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crudtutoriai_params
      params.require(:crudtutoriai).permit(:id_seq, :namecourse, :namechapter, :contentchapter, :duration)
    end
end
