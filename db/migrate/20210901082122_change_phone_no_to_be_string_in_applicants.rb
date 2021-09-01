class ChangePhoneNoToBeStringInApplicants < ActiveRecord::Migration[6.1]
  def change
    change_column :applicants, :phone_no1, :string
    change_column :applicants, :phone_no2, :string
  end
end
