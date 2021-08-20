class ApplicantsController < ApplicationController
  def applicants
    @applicant = Applicant.new
  end
  def confirm
    # render plain: params[:applicant][:programming][:"1"][:"'language'"]
    # render plain: @var
    @applicant = Applicant.new(form_params)
    
    if @applicant.valid? == true
    else
      render :applicants
    end
  end

  private
  def form_params
    @name = params[:applicant][:name]
    @profile_photo = params[:applicant][:profile_photo]
    @dob = params[:applicant][:dob]
    @phone_no1 = params[:applicant][:phone_no1]
    @phone_no2 = params[:applicant][:phone_no2]
    @email = params[:applicant][:email]
    @current_address = params[:applicant][:current_address]
    @hometown_address = params[:applicant][:hometown_address]
    @bachelor_university = params[:applicant][:bachelor_university]
    @bachelor_year = params[:applicant][:bachelor_year]
    @bachelor_degree = params[:applicant][:bachelor_degree]
    @master_university = params[:applicant][:master_university]
    @master_year = params[:applicant][:master_year]
    @master_degree = params[:applicant][:master_degree]
    @diploma_name = params[:applicant][:diploma_name]
    @certificate = params[:applicant][:certificate]
    @english = params[:applicant][:english]
    @japanese = params[:applicant][:japanese]
    @other = params[:applicant][:other]
    @internship_info = params[:applicant][:internship_info]
    @job_experience = params[:applicant][:job_experience]
    @total_exp_year = params[:applicant][:total_exp_year]
    @comment = params[:applicant][:comment]
    @programming = params[:applicant][:programming]
      @programming.each do |a|
        @aa = @aa.to_s + (" "+a[:language] +": " +a[:level] + " ,").to_s
      end
      @ee= @aa.delete_suffix(',')
    # render plain: @ee
      params = ActionController::Parameters.new({
        test_obj: {
          name: @name,
          profile_photo: @profile_photo,
          dob: @dob,
          phone_no1: @phone_no1,
          phone_no2: @phone_no2,
          email: @email,
          current_address: @current_address,
          hometown_address: @hometown_address,
          bachelor_university: @bachelor_university,
          bachelor_year: @bachelor_year,
          bachelor_degree: @bachelor_degree,
          master_university: @master_university,
          master_year: @master_year,
          master_degree: @master_degree,
          diploma_name: @diploma_name,
          certificate: @certificate,
          english: @english,
          japanese: @japanese,
          other: @other,
          internship_info: @internship_info,
          job_experience: @job_experience,
          total_exp_year: @total_exp_year,
          comment: @comment,
          programming: @ee,
        }
      })
      # params.require(:test_obj).permit(:programming)
    params.require(:test_obj).permit(:name, :profile_photo, :dob, :phone_no1, :phone_no2, :email, :current_address, :hometown_address, :bachelor_university, :bachelor_year, :bachelor_degree, :master_university, :master_year, :master_degree, :diploma_name, :certificate, :programming, :english, :japanese, :other, :internship_info, :job_experience, :total_exp_year, :comment, :created_by, :updated_by)
  end
end
