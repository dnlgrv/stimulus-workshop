class InvitationsController < ApplicationController
  def index
    @invitations = Invitation.order(updated_at: :asc)
  end

  def create
    @invitation = Invitation.create!(invitation_params)

    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    @invitation.destroy

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:email)
  end
end
