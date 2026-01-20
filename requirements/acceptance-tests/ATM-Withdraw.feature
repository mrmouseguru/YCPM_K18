Feature: Withdraw cash from ATM
  Acceptance tests define the system behavior

  Scenario: Successful withdrawal
    Given the customer has a valid ATM card
    And the customer has entered the correct PIN
    And the account balance is at least 1000000 VND
    And the ATM has at least 1000000 VND available
    When the customer withdraws 1000000 VND
    Then the ATM dispenses 1000000 VND
    And the account balance is reduced by 1000000 VND

