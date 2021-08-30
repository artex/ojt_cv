class RenameIsExitJobExpToIsExistJobExp < ActiveRecord::Migration[6.1]
  def change
    rename_column :applicants, :is_exit_job_exp, :is_exist_job_exp 
  end
end
