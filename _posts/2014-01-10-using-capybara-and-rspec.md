---
layout: post
last-modified: '2014-01-10T12:00:00+05:30'

title: "Using Capybara and Rspec assertions in Page Objects"
subtitle: "Writing well encapsulated tests in Rails with the Page Object pattern"
cover_image: general/orange-evening.jpg
cover_image_caption: "Near the Norbulingka Institute, Dharamshala, India"
og-image: "general/orange-evening.jpg"

excerpt: "In this blog I explain how using Capybara and Rspec, one can implement the page object pattern in Rails."

author:
  name: Gurpreet Luthra
  twitter: _zenx_
  bio: Software Craftsman and Lead Consultant Developer at ThoughtWorks
  image: general/gp-square-v.jpg
---

On my Rails project, I am using RSpec and Capybara to write functional tests.  
I did not want to specify any HTML elements in my Capybara feature files, since that makes the 
feature files brittle to HTML / CSS changes. It also violates the DRY principle and basic code hygiene.

Read the full blog on my older blog site here:
[Using Capybara and Rspec assertions in Page Objects](http://techie-notebook.blogspot.in/2014/01/using-capybara-and-rspec-assertions-in.html)