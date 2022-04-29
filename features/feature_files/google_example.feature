@example
Feature: Google Search

	Scenario: Verify that you can open google and search for something
	  Given google is opened
      Then current URL contains google
