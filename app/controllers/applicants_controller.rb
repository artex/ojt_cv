class ApplicantsController < ApplicationController
  def applicants
    @applicant = Applicant.new
  end
  def test
    @applicant = Applicant.new(form_params)
    if @applicant.valid? == true
      redirect_to confirm_applicants_path
    else
      render :applicants
    end
  end
  def confirm
  end
  private
  def form_params
    params.require(:applicant).permit(:name, :profile_photo, :dob, :phone_no1, :phone_no2, :email, :current_address, :hometown_address, :bachelor_university, :bachelor_year, :bachelor_degree, :master_university, :master_year, :master_degree, :diploma_name, :certification, :programming_language, :programming_level, :english, :japanese, :other, :internship_info, :job_experience, :total_exp_year, :comment, :created_by, :updated_by)
  end
end
