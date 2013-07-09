Feature: Viewing Stories
    
    As any user
    I want to be able to view a story
    So that I can see if I want to read it or not

    Scenario: Link from main story page
        Given a universe called "baz"
        And a story called "foo" with description "bar" in universe "baz"
        When I visit the stories page
        And I click on "foo"
        Then I should see "bar"