Feature: withdrawal
  Client can't withdraw negative or null amounts
  Scenario: Negative amounts should not be accepted
    Given a client that wants to do a withdrawal
    When he wants to withdraw an amount of -10
    Then after the withdrawal he should be told -10 " :WITHDRAWAL AMOUNT MUST BE STRICTLY POSITIVE"

  Scenario: null amount should not be accepted
    Given a client that wants to do a withdrawal
    When he wants to withdraw an amount of 0
    Then after the withdrawal he should be told 0 " :WITHDRAWAL AMOUNT MUST BE STRICTLY POSITIVE"