Feature: Viewing universes

    So that I can see a list of universes
    As any user
    I want to be able to view a table

    Scenario: Show all universes
        Given a universe called "foobar"
        When I list all universes
        Then I should see "foobar"

    Scenario: Link to individual universe
        Given a universe called "foobar"
        When I list all universes
        When I click on "foobar"
        Then I should see "Name: foobar"