class AddProgrammingToApplicants < ActiveRecord::Migration[6.1]
  def change
    change_column :applicants, :phone_no1, :integer, limit: N
    change_column :applicants, :phone_no2, :integer, limit: N
  end
end
