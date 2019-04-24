Feature: Renfe

  @Renfe1
  Scenario: Search for Trains
      Given I am on the Renfe home page
      When I search for "Trains Malaga-Madrid" on a specific day
      Then Available Trains are returned

  @Renfe2
  Scenario: Search the number for clients
      Given I am on the Renfe home page
      When I click on "Atención al cliente"
      Then I can see "91"

  @Renfe3
  Scenario: Chceck that renfe have app for android and ios
      Given I am on the Renfe home page
      When I click on "Renfe Cercanías"
      Then I can see "Android"
      And I can see "Iphone"

  @Renfe4
  Scenario: Check that renfe have offers in Tarragona
      Given I am on the Renfe home page
      When I click on "OFERTAS"
      Then I can see "TARRAGONA"

    @Renfe5
    Scenario: Search for Trains
        Given I am on the Renfe home page
        When I click on "Welcome"
        Then I can see "DEPARTURE"
