class ActivitiesController < ApplicationController
  def index
    @activities = PublicActivity::Activity.order("created_at desc").where(recipient_id: current_user.id, recipient_type: "User")
  end

  def destroy
    activities = PublicActivity::Activity.order("created_at desc").where(recipient_id: current_user.id, recipient_type: "User")
    activities.destroy_all
    redirect_to :back
  end
end
