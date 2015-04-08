@smoke 
Feature: New loan application
   As a user
   I should be able to create new loan application
   So that I can submit the application

  @Newloan
  Scenario: User submits new loan application
    Given I open the home page
    When I see the loan application tiles 
    # Then I can fill info and submit loan application

    

  # @smoke_login_linkedin
  # Scenario: User login for the first time using Linkedin
  #   Given I click Sign In to ParticipationList with LinkedIn
  #   Then user login as LinkedIn
  #   Then I click Allow access link
  #   Then home page for the LinkedIn user should be display
  #   Then user logs out from application