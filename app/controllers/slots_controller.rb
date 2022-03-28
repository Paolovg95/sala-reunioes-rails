class SlotsController < ApplicationController
  before_action :find_meeting, only: [:new,:create]
  before_action :find_slot, only: [:edit,:update,:destroy]

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
      redirect_to :root, notice: "Reunião criada"
    else
      render :new
    end
  end

  def edit
    authorize @slot
  end

  def update
    authorize @slot
    if @slot.update(slot_params)
      redirect_to root_path, notice: "Reunião atualizada"
    else
      render :edit
    end
  end

  def destroy
    authorize @slot
    @slot.destroy
    redirect_to :root, alert: "Reunião deletada"
  end

  private

  def slot_params
    params.require(:slot).permit(:title, :description, :length)
  end

  def find_slot
     @slot = Slot.find(params[:id])
  end

  def find_meeting
    @meeting = Meeting.find(params[:meeting_id])
  end
end
