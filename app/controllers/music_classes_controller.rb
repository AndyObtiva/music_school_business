class MusicClassesController < ApplicationController
  before_action :set_music_class, only: %i[ show edit update destroy ]

  # GET /music_classes or /music_classes.json
  def index
    @music_classes = MusicClass.all
  end

  # GET /music_classes/1 or /music_classes/1.json
  def show
  end

  # GET /music_classes/new
  def new
    @music_class = MusicClass.new
  end

  # GET /music_classes/1/edit
  def edit
  end

  # POST /music_classes or /music_classes.json
  def create
    @music_class = MusicClass.new(music_class_params)

    respond_to do |format|
      if @music_class.save
        format.html { redirect_to @music_class, notice: "Music class was successfully created." }
        format.json { render :show, status: :created, location: @music_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @music_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /music_classes/1 or /music_classes/1.json
  def update
    respond_to do |format|
      if @music_class.update(music_class_params)
        format.html { redirect_to @music_class, notice: "Music class was successfully updated." }
        format.json { render :show, status: :ok, location: @music_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @music_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_classes/1 or /music_classes/1.json
  def destroy
    @music_class.destroy!

    respond_to do |format|
      format.html { redirect_to music_classes_path, status: :see_other, notice: "Music class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_class
      @music_class = MusicClass.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def music_class_params
      params.expect(music_class: [ :session_id, :instructor_id, :location_id, :music_class_series_id, :name, :description, :level, :day, :lesson_count, :duration, :price ])
    end
end
