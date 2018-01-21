class AddCompanyLocationToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :company_location, :string
  end
end
