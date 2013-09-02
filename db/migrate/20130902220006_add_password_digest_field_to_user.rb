class AddPasswordDigestFieldToUser < ActiveRecord::Migration
  def change
		add_column :dudes, :password_digest, :string
  end

	def down
		remove_column :dudes, :password_digest
	end
end
