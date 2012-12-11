
Given /^an initial business$/ do
    @noora=FactoryGirl.create(:fan)
    @ali=FactoryGirl.create(:fan, :name=> "Ali", :email=>"ali@ali.com")
    @match1= FactoryGirl.create(:match)
    @match2=FactoryGirl.create(:match,:match_type =>"Friendly", :opponent_id =>1)
    @opponent1=FactoryGirl.create(:opponent, :name=>"GOS", :skill_level=>"Moderate", :home_capacity=>"5543", :domestic=> true, :rival=>false)
    @opponent2=FactoryGirl.create(:opponent)
    @ticket1=FactoryGirl.create(:ticket)
    @ticket2=FactoryGirl.create(:ticket, :quantity=>1, :ticket_type=>"VIP Box")

end


When /^I am on the home page$/ do
   visit root_path
end

Then /^I should not see "(.*?)"$/ do |statement|
   page.should_not have_content(statement)
end

Given /^I go to the home page$/ do
    visit root_path
end

When /^I follow the "(.*?)" link$/ do |linkname|
  click_link linkname
end

Then /^I should see "(.*?)" in the "(.*?)"$/ do |output, tagname|
  page.should have_css(tagname, :text => output)
end

Given /^I am on the 'matches' page$/ do
  visit matches_path
end

Then /^I should see a link to "(.*?)" in the "(.*?)"$/ do |linkname, arg2|
  click_link linkname
end

Given /^I am on the 'new match' page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I select "(.*?)" for "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When /^I select false for "(.*?)"$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

When /^I click on "(.*?)" button$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^I am on the 'match' page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I follow the "(.*?)" link for "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When /^I change the subject "(.*?)" to "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Given /^I am on the 'fans' page$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am on the 'new fans' page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I enter "(.*?)" for "(.*?)" box$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Given /^I am on the 'walkers' page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I change the Name "(.*?)" to "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

