Feature: Viewing universes

    As any user
    I want to be able to pick what universe to view the site under
    So that I can view specific content

    Scenario: Show all universes on any page
        Given a universe called "foobar"
        When I visit the homepage
        Then I should see "foobar"

    Scenario: Show the all universes link
        When I visit the homepage
        Then I should see "All universes"

    Scenario: Link to individual universe
        Given a universe called "foobar"
        When I visit the homepage
        And I click on "foobar"
        Then I should be on the universe's page

    Scenario: All universes sends you back home
        Given a universe called "foobar"
        When I visit the homepage
        And I click on "foobar"
        And I click on "All universes"
        Then I should be on the homepage