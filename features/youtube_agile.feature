Feature: Youtube watch video and change to the next video
  In order to satisfeace HU about poltergeist functionality
  As a capybara and poltergeist user
  I want to see the if it works on Youtube search page, watch and next video

@Agile1
Scenario: Looking for an agile video
  Given I am on the Youtube home page
  When I fill in "search_query" with "agile"
  And click button 'search-icon-legacy'
  Then I should see "Agile"

@Agile2
Scenario: Watch on fullscreen
  Given I am watching a video about "agile"
  When I click on "Pantalla completa"
  Then I should watch the video in fullscreen

@Agile3
Scenario: Next video
  Given I am watching a video about "agile"
  And I wait 2 seconds
  When I click on class "ytp-next-button ytp-button"
  Then It is done

@Agile4
Scenario: Watch video with subtitles
  Given I am watching a video about "agile"
  And I wait 2 seconds
  When I click on class "ytp-subtitles-button ytp-button"
  Then It is done

@Agile5
Scenario: Cinema mode on
  Given I am watching a video about "agile"
  And I wait 2 seconds
  When I click on class "ytp-size-button ytp-button"
  Then It is done
