When(/^I click "(.*?)"$/) do |text|
	click_link(text,:match => :first)
end

When(/^I fill the "(.*?)" form and send it/) do |rev|
	fill_in "#{rev}[comment]", :with => "Melhor de todos"
	choose "star5"
	find('input[name="commit"]').click
end

When(/^I fill in some search options/) do
	find("input[type='checkbox'][value='1']").set(true)
	find("input[type='checkbox'][value='Básico']").set(true)
end
