Feature: Viewing universes

    So that I can view a universe or list 
    As any user
    I want to be able to view a universe (or more)

    Scenario: Show all universes
        Given a universe called "foobar"
        When I list all universes
        Then I should see "foobar"

    Scenario: Link to individual universe
        Given a universe called "foobar"
        When I list all universes
        And I click on "foobar"
        Then I should be on the universe's page