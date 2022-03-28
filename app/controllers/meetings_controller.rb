class MeetingsController < ApplicationController
  def index
    @meetings = policy_scope(Meeting)
  end

  def show
    @meeting = Meeting.find(params[:id])
    authorize @meeting
  end

end
