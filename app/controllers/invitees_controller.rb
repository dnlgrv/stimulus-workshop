class InviteesController < ApplicationController
  def index
    @people = Person.where(invited: true).order(updated_at: :asc)
  end

  def create
    @person = Person.find_by(name: invitation_params[:name])
    @person.update!(invited: true)

    respond_to do |format|
      format.turbo_stream
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.update!(invited: false)

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:name)
  end
end
