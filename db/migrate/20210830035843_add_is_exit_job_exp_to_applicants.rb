class AddIsExitJobExpToApplicants < ActiveRecord::Migration[6.1]
  def change
    add_column :applicants, :is_exit_job_exp, :boolean
  end
end
