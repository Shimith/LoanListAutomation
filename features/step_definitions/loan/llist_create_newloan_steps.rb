Given (/^I open the home page$/) do
  @site = "loan_list".downcase
  visit @site, :login_page
  on @site, :login_page do |create_loan|
  puts create_loan.create_loanreq
end
end


When(/^I see the loan application tiles$/) do
  on @site, :login_page do |create_loan|
  puts create_loan.create_accnt
end
end



# Then(/^I can fill info and submit loan application$/) do
#   on @site, :login_page do |create_loan|
#   puts create_loan.create_loanreq
# end
# end

