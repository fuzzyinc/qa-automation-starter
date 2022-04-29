@example
Feature: Search for cyberpunk 2077

	Scenario: Verify that you can open google and search for something
	  Given google is opened
      Then current URL contains google
