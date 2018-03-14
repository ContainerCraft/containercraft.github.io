---
layout: post
last-modified: '2017-03-12T12:00:00+05:30'

title: "Understanding Open Source Software"
subtitle: "My thoughts and findings about questions concerning Open Source Software"
cover_image: general/guitar.jpg
cover_image_caption: "My acoustic guitar - Greg Bennett"
og-image: "general/guitar.jpg"

excerpt: "In this blog I explain what Open Source Software (OSS) means, a little about licenses, business models around OSS and why developers should contribute to OSS. In the end I provide a link to a podcast 
on Myths and Truths in Open Source Software."

author:
  name: Gurpreet Luthra
  twitter: _zenx_
  bio: Software Craftsman and Lead Consultant Developer at ThoughtWorks
  image: general/gp-square-v.jpg
---

I have been contributing to Open Source Software (OSS) for over 3 years now, at ThoughtWorks. Many people seem to have some misconceptions about OSS, or don’t fully realise the implications and impact of OSS. In this blog, I have shared a few  of my learnings and thoughts on this topic. If you are technologist – who has some familiarity with OSS, then it’s likely that this article will be helpful.

## Just because the source code is available does not mean it is Open Source

Most people explain _Open Source Software (OSS)_ as — a software that has made its source code available publicly. That is an incomplete and incorrect definition of the term _Open Source Software_.

An Open Source Software is software where the code is not only freely available to view, but also to modify,  redistribute, and has an associated license that allows for this to happen. This is how Wikipedia defines [Open Source Software (OSS)](https://en.wikipedia.org/wiki/Open-source_software):


**Open-source software (OSS) is computer software with its source code made available with a license
in which the copyright holder provides the rights to study, change, and distribute the software to anyone
and for any purpose.**


Irrespective of the OSS license being applied, the above conditions should be true for a software to call itself Open Source.

A more precise, easy-to-understand and widely referenced definition of Open Source Software is maintained and managed by the Open Source Initiative (OSI) on this page: [Open Source Definition](https://opensource.org/osd-annotated). It mentions ten criteria that should be satisfied by the distribution terms of the software license for it to be accepted as Open Source. Some of these criteria are: free redistribution, must have easy access to un-obfuscated source code, should allow modifications and distribution of these modifications, should be free of discrimination against people/geographies/groups/field of endeavour/technology stack, etc.

So – just having access to source code isn’t Open Source. It’s a much broader term, associated with greater freedom.

## So then what is the deal with the different licenses -- GPL, MPL, Apache, etc?


**Note: I  am not a lawyer. Please consult a qualified lawyer when you are inspecting / figuring out an OSS License for your company or software. My advice here is informal. Licenses are a complex beast – especially when softwares containing different licenses are put into the mix.**


There are many available OSS licenses publicly recognized to make it convenient for you to choose the one that suits your needs. The Open Source Initiative (OSI) maintains a [list of approved licenses here](https://opensource.org/licenses/alphabetical) for you to choose from.

All these licenses are recognized as Open Source Licenses, and hence should provide the same freedom as mentioned above while explaining what does OSS mean – but there is always something unique about each license that makes them stand apart. This is why you need legal counsel. Your motivations and business model will affect the choice of license.


Licenses like the GPL license are called [Copyleft licenses](https://en.wikipedia.org/wiki/Copyleft) which are protective in nature. If you use a GPL Licensed software library in your software you will require to make your own software freely available under the GPL License. If you are a commercial / proprietary software team, you most likely do not want to open source your proprietary software, and therefore won’t be able to include libraries licensed under GPL. Do check out: [Can I use GPL software in a commercial application?](https://softwareengineering.stackexchange.com/questions/47032/can-i-use-gpl-software-in-a-commercial-application) As an example – iText is a library for generating PDFs which is provided under an [AGPL license](http://www.affero.org/oagf.html) (free) and also under a commercial license that allows you to include it in programs that are released under a license of your choice (paid). You will not be able to include its free version in the source code to closed-source software for the same reasons articulated above. Read about [iText License implications here](http://itextpdf.com/legal).

Interesting articles to read: [The Decline of GPL?](https://opensource.com/article/17/2/decline-gpl)
and [Can I use MongoDB for a commercial web based service?](https://softwareengineering.stackexchange.com/questions/226111/can-i-use-mongodb-for-a-commercial-web-based-service)

**Important Notes**:

1. _I work on an open source hospital system called [Bahmni](http://bahmni.org), for low-resource environments. This software is licensed under AGPL license. Distributing the software under the AGPL means that any modifications or improvements done for Bahmni must be made available to all for free. In this way, the choice of license helps to ensure that the software will remain a public benefit to humanity and no one can capture it for their private gain. Read more about some problems with commercial EHR here: [Obama and Biden Blast EHR Vendors for Data Blocking](http://www.openhealthnews.com/blogs/ramaduro/2017-01-19/obama-and-biden-blast-ehr-vendors-data-blocking)._
2. _Linux is licensed under GPLv2. For good reasons. From this [article](http://www.zdnet.com/article/linus-torvaldss-love-hate-relationship-with-the-gpl/), Linus Torvalds says: “The GPL ensures that nobody is ever going to take advantage of your code. It will remain free and nobody can take that away from you. I think that’s a big deal for community management.”_
3. _Do you know the differences between Red Hat Enterprise Linux RHEL (paid) and CentOS Linux (free)? You might be surprised to know that the code of CentOS Linux is created from RHEL source code with all Red Hat trademark information removed – because Red Hat invests/pays for the trademark and logo, but the underlying Linux and its modifications are required to be made freely available as source code – which allows the creation of CentOS. This is why so many companies use CentOS – because they believe they get the same quality for free! Amazing. Isn’t it? Read more here: [Wikipedia/CentOS](https://en.wikipedia.org/wiki/CentOS) and here: [Wikipedia/RedHatDerivatives](https://en.wikipedia.org/wiki/Red_Hat_Enterprise_Linux_derivatives)._

But some OSS would prefer to focus on getting lots of people to adopt them quickly and easily, especially software platforms and libraries – because the wider the adoption of a software, the more chances are that its bugs will surface quicker, it will become more stable, it will have more impact, and more people will contribute to it. Once a company or a team invests in a software stack, it’s unlikely that they would want to throw it away on the slightest excuse! This is why many Open Source Software projects choose a more permissive license which allows you to ship and use them in commercial packages. Think of [Angular.js](https://github.com/angular/angular.js/blob/master/LICENSE), [React.js](http://react-etc.net/entry/your-license-to-use-react-js-can-be-revoked-if-you-compete-with-facebook), [Postgres](https://www.postgresql.org/about/licence/), [Spring Framework](https://en.wikipedia.org/wiki/Spring_Framework), [Ruby Language](https://www.ruby-lang.org/en/about/license.txt), [jQuery](https://github.com/jquery/jquery/blob/master/LICENSE.txt), [Tomcat Server and other softwares from Apache](https://tomcat.apache.org/legal.html), [Nginx](https://en.wikipedia.org/wiki/Nginx), [Selenium Test Framework](https://en.wikipedia.org/wiki/Selenium_(software)), [jUnit](https://en.wikipedia.org/wiki/JUnit) and many other libraries, tools and software which we all use in proprietary software – are all Open Source! They are licensed in a manner that allows others to benefit off them. Isn’t that awesome! So – have you given them back something? Have you helped making them better or popular?


## So do people make any money with Open Source Softwares?

I think it’s important to separate this question into two areas -- one for the company and the other for an individual. 

So, let’s ask the first question: **As a company, if I open source my software - can I make money?** The answer is: **Unlikely**. The software after all is free, and hence you can’t really make money from it. But it might make long term business and financial sense to still do it -- for reasons like adoption and maintenance. Platform products like Android and OpenStack are open source so that people can use them widely and build commercial models on top of them. The more people adopt Android for instance, the more people use Google Search and related services. That drives revenue and profits for Google. Open sourcing their platform, helps companies stay relevant.

For instance in this article on Tech Radar ([The reasons behind Microsoft's drive for open source](http://www.in.techradar.com/news/software/The-reasons-behind-Microsofts-drive-for-open-source/articleshow/51512501.cms)) Wes Miller, Vice President at analyst group Directions on Microsoft points out:
_"Much like Apple and Google, whose open source projects may be strategic to a degree of mindshare (but not revenue), the projects that Microsoft has chosen to open source are intended to help build community/collaboration and mindshare. The areas of the company that are still breadwinners are not open source, nor do I believe we should expect them to be anytime soon"._

This is not to say that companies are not making money from Open Source software. There are [15+ business models with OSS](https://en.wikipedia.org/wiki/Business_models_for_open-source_software) mentioned on Wikipedia. The obvious ones are Support and Professional Services around the software package, but people can do a lot more including writing paid add-ons, software-as-a-service, advertisements, trainings, etc. 

For good examples of businesses that rely on Open Source Software, and the associated struggle, I would recommend reading this article by TechCrunch ([Money in Open Source Software](https://techcrunch.com/2016/02/09/the-money-in-open-source-software/)). It says: _“Despite the growing popularity of open-source software, though, many open-source companies are not financially healthy. Just like eyeballs didn’t translate into actual online purchases during the first dot-com era in the late 1990s, millions of free-software downloads do not always lead to sustainable revenue streams.”_

Now - lets ask the second question: **As a developer or a technologist - can I make money by working on Open Source Software?** The answer is: **Pretty Likely -- if you are good at what you do and your chosen OSS is in-demand**. Developing and maintaining good software is hard - especially if it’s being used by multiple customers. 

With Open Source, the advantage is that there are very few geographical barriers for team members -- since the code and software is available online easily. So, people from across cities can contribute to the project, and be paid to consult, maintain, develop and deploy softwares. This can also help the individual build their brand, connect with other like minded people around the world, and be called upon for important gigs. Plus, once a company has already invested in a particular open source stack, they would be compelled and happy to pay for its evolution -- to keep their own systems up-and-running, or even to beat the competition. 

**But most contributors worldwide contribute to Open Source software for free. Because the returns themselves are worth it.**

## This sounds very interesting. Should I participate in a particular Open Source software?

If you are a developer, a QA, a BA, a technologist – you have very little excuse to not be involved in some Open Source Software. Why should you limit your exposure, experience and learnings to only the project you are on? Why not contribute and learn from the zillions of OSS that are out there? Most of these softwares are looking for technical contributions and to make greater impact.

Pick a topic that you love. Or a software you would be interested in. Do you like Security, Music, Medicine, Programming Languages, Painting, Maths, Teaching, Kids, Criminology, Guitar, Sports, Gym, FILL-IN-THE-BLANKS? Find an OSS in your chosen area, whatever motivates you, and jump in. Projects need help on everything under the sun – from developing small/large features, to writing unit/integration/functional tests, to setting up CI/CD servers, to documentation, to creating stories, to fixing bugs, to creating presentations, to publishing videos, to organizing events, to evaluating libraries, to helping in rollouts and implementations of their softwares, to…. you get it. Whatever you do in your organization on your project; the OSS also needs that to be done. Plus, you can be a QA contributing to Development tasks, or a Dev contributing to recording videos, and so on.. because no one cares what “role” you come from – it’s what you want to do!

Most OSS projects will have a chatroom on IRC/Slack/etc, a mailing list, a public version control repository (likely Github), a public task management system (like JIRA, Github Issues, Trello, etc), and periodic virtual meetings. If you go in with sincerity, and resolve — your work will be highly appreciated.

## A list of Open Source Projects you might consider

A short list of suggestions from my side. It's a drop in the ocean. The important thing is to choose a project you **want** to contribute to. Find your holy grail.

- [Bahmni](http://bahmni.org): Open Source EMR & Hospital System (or [OpenMRS](http://openmrs.org))
- [Pixelated](https://pixelated-project.org/): Encrypted/Private/Secure Web based email
- [Moodle](https://moodle.org/): Free Learning Management System
- [BugZilla](https://www.bugzilla.org/): Task Management and Issue Management System
- [Ushahidi](https://www.ushahidi.com/): Real time, crowdsourced crisis management and mapping tool
- [Audacity](https://github.com/audacity/audacity): Digital Audio Editor
- [Wikipedia/List of Open Source Softwares](https://en.wikipedia.org/wiki/List_of_free_and_open-source_software_packages): Huge list of Open Source softwares by category


The Open Source Software movement is big. It’s time to jump in. Give back. Learn. Soak. Become part of alternative communities, across multiple countries. You will be welcomed.

## Podcast on Open Source Myths - With Karl Brown

**If you liked this article, you may also like this podcast I recorded with Karl Brown from ThoughtWorks
where we talk about [Myths & Truths in Open Source Software](https://www.thoughtworks.com/insights/blog/podcast-open-source-myths-and-truths).**

## Further Reading on Open Source

- [Free as in Beer, or Free as in Speech -- Understanding the difference](https://www.howtogeek.com/howto/31717/what-do-the-phrases-free-speech-vs.-free-beer-really-mean/)
- [Difference between Open Source License vs Copyright vs Trademark](http://twiki.org/cgi-bin/view/Blog/BlogEntry201207x1)
- [Book: The Success of Open Source by Steven Weber](http://www.amazon.in/Success-Open-Source-Steven-Weber/dp/0674018583)