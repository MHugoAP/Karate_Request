Feature: Service client Post

  As QA Automation
  I want to consult a client
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method

    * def responseGet = read('classpath:karate/request/Post/post.json')

    Given path 'users', '2'
    When method post
    Then status 200
    And match response == post
    And assert response.support.url == support
    And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
    And assert response.data.email == email
    And assert response.data.id == idGet
    And assert response.data.first_name == firstName
    And assert response.data.last_name == lastName
    And assert response.data.avatar == avatar

  Scenario Outline: Users that don't exist

    Given path 'users', <idUser>
    When method post
    Then status <statusCode>

    Examples:
      | idUser    | statusCode |
      | 1996      | 404        |
      | "@#$%^&." | 404        |
      | "miguel"  | 404        |