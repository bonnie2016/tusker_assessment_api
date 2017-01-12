# Instructions
**Note:** This is similar to the original assessment but please read the instructions carefully.

Spend your allotted time to see how far you can get through this exercise. The assessment will be based how the tasks were implemented. Note, the instructions are intentionally vague and it is up to you to figure out best how to implement the task. Attempt to get completely through the tasks, then refactor *only* if you have time.

## Requirements for exercise:

### Task A: Ruby on Rails application

1. Fork assessment into your own repo https://github.com/tusker-direct/tusker_assessment_api **do not push directly to it**
2. create a rails 5 api `rails new tusker_assessment_api --api `
3. should allow for the rendering of Prospects ( can be found via http://tuskermarvel.com/prospects.json)
4. should allow for the rendering of available packages (packages can be found via http://tuskermarvel.com/packages.json)
5. should display Prospects from the root of the api endpoint
7. should show the next box that the prospect will receive
8. should show what packages will be delivered to each city
9. should be RESTful

## Task B: Collection of business objects

1. Create an implementation that integrates into Task A. The goal is to display packages to prospects ensuring prospects do not receive the same contents again.

   - Here is a list of prospects and the contents they have received already.
  Prospects:[Prospects Endpoint](http://tuskermarvel.com/prospects.json)

   - These are the Packages for the next shipment and their contents.
    [Packages Endpoint](http://tuskermarvel.com/packages.json)

**hint:** remote api is protected with basic auth - your app should be able to deal with this appropriately `username: username, password: tuskermarvel` 

## Task C: Bonus Points
1. Application contains relevant tests
2. Document design considerations and proper usage
3. The app should be deployed locally, so we can access a running instance. Using the default rails server is fine.


## Submission:
Submitted by committing to your own github repo. When everone is finished, further instructions will be given (probably requesting a PR)
Part of the exercise is appropriate use of git.
