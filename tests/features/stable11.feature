Feature: CLI updater - stable11 base

  Scenario: Update is available - 11.0.0 beta to 11.0.0 beta 2
    Given the current installed version is 11.0.0beta
    And there is an update to prerelease version "11.0.0beta2" available
    And the version number is decreased in the config.php to enforce upgrade
    When the CLI updater is run successfully
    And the output should contain "Update successful"
    Then the installed version should be 11.0.0.5
    And maintenance mode should be off
    And upgrade is not required

  Scenario: Update is available - 11.0.2 to master daily
    Given the current installed version is 11.0.2
    And the current channel is "daily"
    And there is an update to daily version of master available
    When the CLI updater is run successfully
    And the output should contain "Update successful"
    Then the installed version should be 12.0
    And maintenance mode should be off
    And upgrade is not required

  Scenario: Update is available - 11.0.2 to master daily
    Given the current installed version is 11.0.2
    And the current channel is "daily"
    And there is an update to daily version of master available
    When the CLI updater is run successfully
    And the output should contain "Update successful"
    Then the installed version should be 12.0
    And maintenance mode should be off
    And upgrade is not required
