Feature: Custom tags
  Scenario: Load from _tags
    Given I have a _posts directory
    And I have a _layouts directory
    And I have a _tags directory
    And I have the following post:
      | title     | date      | layout  | content                                     |
      | Star Wars | 3/27/2009 | default | These aren't the droids you're looking for. |
    And I have a default layout that contains "{% javascript_include_tag 'jquery' %}"
    When I run jekyll
    Then the _site directory should exist
    And I should see '<script src="/javascripts/jquery.js" type="text/javascript"></script>' in "_site/2009/03/27/star-wars.html"
