require 'rails_helper'

describe "Viewing the list of users" do 
	it "shows the users" do
		user = create(:user)
		user2 = create(:user, name: "Mike")

		visit users_path

		expect(current_path).to eq(users_path) 
		expect(page).to have_text("Joe")
		expect(page).to have_text("Mike")
		# save_and_open_page
	end
end
