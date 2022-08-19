Feature: Service client POST
  As QA Automation
  I want to create a client
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method
    * def requestCreate = {"name": '#(name)', "job": '#(job)'}
    * def responsePost = read('classpath:karate/request/responsePost.json')

    Given path 'users'
    And request requestCreate
    When method post
    Then status 201
    And match response == responsePost
    And assert response.name == name
    And assert response.job == job

  Scenario Outline: Create a user with different idUser

    Given path 'users', <idUser>
    When method get
    Then status <statusCode>

    Examples:
      | idUser    | statusCode |
      | 1996      | 404        |
      | "@#$%^&." | 404        |
      | "miguel"  | 404        |