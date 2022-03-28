class SlotsController < ApplicationController
  before_action :find_meeting, only: [:new, :create]

  def new
    @slot = Slot.new
    authorize @slot
  end

  def create
    @slot = Slot.create(slot_params)
    @slot.meeting = @meeting
    @slot.user = current_user
    authorize @slot

    if @slot.save
      redirect_to :root
    else
      render :new
    end

  end


  private
  def slot_params
    params.require(:slot).permit(:title, :description, :length)

  end

  def find_meeting
    @meeting = Meeting.find(params[:meeting_id])
  end
end
