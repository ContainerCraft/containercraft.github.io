---
layout: post
last-modified: '2015-12-25T12:00:00+05:30'

title: "The Velocity Conundrum"
subtitle: "Pitfalls in measuring velocity of high performance teams"
cover_image: general/singapore-street.jpg
cover_image_caption: "Near Chinatown street in Singapore"

excerpt: "Velocity! It's a term that has potentially confounded, frustrated and perhaps amused Agile practitioners and
customers alike at some point. It's a concept that can be quite helpful though, when used accurately as a planning and estimation tool."

author:
  name: Gurpreet Luthra
  twitter: _zenx_
  bio: Software Craftsman and Lead Consultant Developer at ThoughtWorks
  image: general/gp-square-v.jpg
---

Velocity! It's a term that has potentially confounded, frustrated and perhaps amused Agile practitioners and customers alike at some point. It's a concept that can be quite helpful though, when used accurately as a planning & estimation tool.

_Velocity is a measure of the number of story points delivered in an Iteration_. The word **delivered** here means - dev & test complete, and
ready for Production. Depending on your organizational maturity it could also mean -- **in Production**.


### Velocity as a Guide

Let's take an example of how one uses velocity as a guiding metric.

For instance, in Iteration-1 (I-1), if a team completes 12 story points, then the velocity of the team is 12. It means that, in next iteration you can assume the team will be able to deliver about 12 points worth of features. Another way of saying this, is that _yesterday's weather_ is 12.

In I-2, if the team delivers 15 points, then for I-3 you can plan for approx 13 (avg of I-1 and I-2). On the other hand, if the team delivers say 10 points in I-2, then next time you plan for 11 (avg of I-1 and I-2).

In general, you average the velocity of the last three iterations, and use that as _yesterday's weather_ to arrive at what you should expect as velocity for the next iteration.

### Low Velocity

If the team achieves lesser points in an iteration than what you expected, should you be concerned? The answer is: _It depends_. You should try
and find out the possible cause, and then decide whether you should be concerned or not. _The aim is to reach a sustainable cadence
that allows for healthy team productivity and greater customer satisfaction_.

A retrospective meeting at the end of an iteration, is a practical way to discuss potential reasons for drop (or increase) in velocity. Some possible reasons for a drop in velocity are:

1. The features being developed were more complex than estimated (or expected).
2. High technical debt in certain parts of the system is causing development to be slower than expected. Think of tech debt as hurdles on your way. The more the hurdles, the higher the friction, the slower you will move.
3. Other factors like too many red builds, flaky acceptance tests, network issues, unnecessary meetings, bugs from previous iteration or holidays, could have sucked away precious time from the team -- and hence they could not work on feature development as much as they otherwise would have.

Usually a drop in velocity is due to a combination of the above factors. You may be able to remove some hurdles and mitigate some challenges. Or, maybe you can't do anything about some of the reasons. You note them down, voice them, and remember to account for them in future iteration plans where applicable.


### The "Upper Management" Effect

Many teams (and managers) don't want to show a velocity drop. Because _upper management_ will frown upon them as an indicator of slacking
and under achievement.

This leads to people coming up with various ways of showing that their velocity is the same as before.
For instance, claims like: "_We were busy refactoring the service layer, so, we should claim 2 points for that_". Or, "_We were blocked due to
network issues, and hence we claim 1 point for that_". So now, with these deviations, total velocity is shown to be:

**9**  (actual for feature development) + **2**(for refactoring) + **1** (for network issues) = **12** (hey.. this is 1 point better than usual! All is good!)

This velocity adjustment for _upper management's_ sake is a recipe for disaster. Instead of fixing organizational, technical and business issues, we have made everything look "OK" and reached a status-quo.

The fixation for treating velocity as a productivity measure, has led to a loss of agility and muddled priorities.


### High Performance Teams & Trust

Agile practices only work when you trust the team. Trust can only be developed, when you hire the right people for the job. The right people for the job are people who care about their work, and are good at what they do. Organizations have a duty to hire the best, and then get out of the way, whilst providing periodic and necessary support.

Velocity as a metric, will be useful only if the team is passionate about delivering and improving their own productivity. If the team is looking at answering the question - "How can we do better?", then velocity can help the team to inform them if they are on the right track.

 But, depending ONLY on _velocity_ as a measure of your improvement is wrong. You may see a drop in _velocity_ due to many external factors, even when the team is taking the right steps to improve the quality of the system. It is analogous to seeing _weight_ as the only measure of improving health.


### Conclusion

Velocity should be treated as a guide using which you plan the next iteration and measure the impact of your adjustments or fixes. Velocity also acts as an approximate tool to provide visibility into when certain features will make it into the release.

Velocity is _NOT_ a measure of the quality of the work being done by the team or of the productivity of the team.


### Further Reading

 1. [Velocity is killing agility (Jim Highsmith)](http://jimhighsmith.com/Velocity-is-killing-agility/)

    _Over emphasis on velocity causes problems because of its wide use as a productivity measure. The proper use of velocity is as a calibration tool, a way to help do capacity-based planning..._
 2. [XpVelocity (Martin Fowler)](http://martinfowler.com/bliki/XpVelocity.html)

    _Velocity is a tool for calibrating estimations for YesterdaysWeather, it is not a measure of productivity._
 3. [Technical Debt (Wikipedia)](https://en.wikipedia.org/wiki/Technical_debt)

    _If the debt is not repaid, then it will keep on accumulating interest, making it hard to implement changes later on. Unaddressed technical debt increases software entropy._
 4. [How To Not Destroy your Agile Team with Metrics (InfoQ)](http://www.infoq.com/articles/not-destroy-team-metrics)

    _The streetlight effect is our human tendency to look for answers where it’s easy to look rather than where the actual information is._


