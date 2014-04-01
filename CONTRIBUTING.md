# Contributing to Redstone Arsenal

We welcome patches and pull requests. Just make sure to follow these guidelines.

## General

* **Always** run the tests. If your pull request fails the tests, it won't be accepted.
* **Always** rebase on top of the latest version of the repo before submitting your pull request.
* **Always** connect pull requests to an issue.
  * If it's a feature that **has** been requested or a bug that **has** reported, reference the issue in your commits.
  * If it's a feature that **hasn't** been requested or a bug that **hasn't** been reported, create an issue for it.
* **Never** request a pull into `master`. We use the [Gitflow](http://www.atlassian.com/git/workflows#!workflow-gitflow) workflow, so always submit your pull requests against the appropriate version branch.
* **Never** commit the build files. The contents of the `build` folder are ignored for a reason.

## Literate Coffeescript

As a front end heavy application, Redstone Arsenal maintains a certain aesthetic standard for our Javascript. Everything is written and extremely well documented in [Literate Coffeescript](http://ashkenas.com/literate-coffeescript/) to ensure anybody can pick up the project and understand everything that's going on. The better documented your pull requests are, the better chance theyhave to be accepted. Use [Markdown](http://daringfireball.net/projects/markdown/syntax) excessively. If there are more lines of code than there are of documentation then you're probably doing it wrong.
