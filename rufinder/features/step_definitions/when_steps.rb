When(/^I click "(.*?)"$/) do |text|
	click_link(text,:match => :first)
end

When(/^I fill the form and send it/) do
	fill_in "restaurant_review[comment]", :with => "Melhor bandejão"
	choose "star5"
	find('input[name="commit"]').click
end
