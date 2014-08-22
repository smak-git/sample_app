require 'spec_helper'

describe "StaticPages" do

	let(:base_title){"Ruby on Rails Tutorial Sample App"}

	subject {page}

	describe "Home page" do
		before {visit root_path}

		it {should have_content('Sample App')}
		it {should have_title(full_title(''))}
		it {should _not have_title('| Home')}
	end

	describe "Help page" do
		before {visit help_path}

		it {should have_content('Help')}
		it {should have_title(full_title('Help'))}
	end

	describe "About page" do
		before {visit about_path}

		it {should have_content('About')}
		it {should have_title(full_title('About Us'))}
	end

	describe "Contact page" do
		before {visit contact_path}

		it {should have_content('Contact')}
		it {should have_title(full_title('Contact'))}
	end
end

	#describe "Home page" do
	#	before {visit root_path}
	#	it "should have the content 'Sample App'" do
		#visit root_path
	#	expect(page).to have_content('Sample App')
	#	end

	#	it "should have the base title" do
			#visit root_path
	#		expect(page).to have_title("Ruby on Rails Tutorial Sample App")

	#	end

	#	it "should not have a custom page title" do
			#visit root_path
	#		expect(page).not_to have_title('| Home')
	#	end

	#	it "should have the title 'Home'" do
	#		visit '/static_pages/home'
	#		expect(page).to have_title("#{base_title} | Home")
	#	end
	#end

	#describe "Help page" do
	#	it "should have the content 'Help'" do
	#		visit help_path
	#		expect(page).to have_content('Help')
	#	end

	#	it "should have the base title" do
	#		visit help_path
	#		expect(page).to have_title("Ruby on Rails Tutorial Help")

	#	end

	#	it "should not have a custom page title" do
	#		visit help_path
	#		expect(page).not_to have_title('| Help')
	#	end
#
	#	it "should have the title 'Help'" do
	#		visit '/static_pages/help'
	#		expect(page).to have_title("#{base_title} | Help")
	#	end
#	end

#	describe "About page" do
#		it "should have the content 'About Us'" do
#			visit about_path
#			expect(page).to have_content('About Us')
#		end

#		it "should have the base title" do
#			visit about_path
#			expect(page).to have_title("Ruby on Rails Tutorial About us")
#		end

#		it "should not have a custom page title" do
#			visit about_path
#			expect(page).not_to have_title('| About')
#		end

	#	it "should have the title 'About'" do
	#		visit '/static_pages/about'
	#		expect(page).to have_title("#{base_title} | About")
	#	end
#	end

#	describe "Contact page" do
#		it "should have the content 'Contact'" do
#			visit contact_path
#			expect(page).to have_content('Contact')
#		end

#		it "should have the base title" do
#			visit contact_path
#			expect(page).to have_title("Ruby on Rails Tutorial Contact")
#		end

#		it "should not have a custom page title" do
#			visit contact_path
#			expect(page).not_to have_title('| Contact')
#		end

	#	it "should have the title 'Contact'" do
	#		visit '/static_pages/contact'
	#		expect(page).to have_title("#{base_title} | Contact")
	#	end
#	end
#end 
#  describe "GET /static_pages" do
 #   it "works! (now write some real specs)" do
  #    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
   #   get static_pages_index_path
    #  response.status.should be(200)
    #end
  #end
#end
