class AddProgrammingToApplicants < ActiveRecord::Migration[6.1]
  def change
    add_column :applicants, :programming, :text
  end
end
