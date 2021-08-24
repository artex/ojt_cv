class ChangeDataTypeForPhoneNo < ActiveRecord::Migration[6.1]
  def change
    change_column :applicants, :phone_no1, :bigint
    change_column :applicants, :phone_no2, :bigint
  end
end
