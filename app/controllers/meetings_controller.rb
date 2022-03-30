class MeetingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @meetings = policy_scope(Meeting)
  end

  def show
    @meeting = Meeting.find(params[:id])
    authorize @meeting

  end

end
