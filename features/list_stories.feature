Feature: List stories

  As any user
  I want to be able to list stories either by all universes or by specific universe
  So that I can pick a story to read

  Scenario: List all stories with name and description
    Given a universe called "baz"
    And a story called "foo" with description "bar" in universe "baz"
    When I visit the homepage
    And I click on "Stories"
    Then I should see "foo"
    And I should see "bar"