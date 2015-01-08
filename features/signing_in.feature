Feature: Signing in

  Scenario: Unsuccessful signing
    Given a user visits the signin page
    When they submit invalid signin infromation
    Then they should see an error message

  Scenario: Successful signing
    Given a user  visits the signin page
      And the user has an acount
    When the user submits valid signin info
    Then they should see their profile page
      And they should seea signout link
