Feature: Viewing universes

    As any user
    I want to be able to pick what universe to view the site under
    So that I can view specific content

    Scenario: Show all universes on any page
        Given a universe called "foobar"
        When I visit the homepage
        And I click on t(universes)
        Then I should see "foobar"

    Scenario: Link to individual universe
        Given a universe called "foobar"
        When I visit the homepage
        And I click on t(universes)
        And I click on "foobar"
        Then I should be on the universe's page