class MusicClassesController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_music_class, only: [:show, :enroll, :cancel_enrollment]

  # GET /music_classes or /music_classes.json
  def index
    @music_classes = MusicClass.all
  end

  # GET /music_classes/1 or /music_classes/1.json
  def show
  end
  
  def enroll
    MusicClassEnrollmentService.instance.enroll(current_customer, @music_class)
    redirect_to @music_class
  end
  
  def cancel_enrollment
    MusicClassEnrollmentService.instance.cancel_enrollment(current_customer, @music_class)
    redirect_to @music_class
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_class
      @music_class = MusicClass.find(params.expect(:id))
    end
end
