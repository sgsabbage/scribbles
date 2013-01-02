Feature: Universe descriptions

    As a user
    I want to be able to see a universe's description
    So that I can learn about it

    Scenario: View the universe
        Given a universe with description "blah"
        When I visit the universe
        Then I should see "blah"