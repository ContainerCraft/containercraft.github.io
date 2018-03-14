## Introduction

This is a [Jekyll](https://jekyllrb.com/) based blog of Gurpreet.


## Ruby and RVM

This project already contains a `.ruby-gemset` and `.ruby-version` file,
to ensure that if you have RVM installed, then it will install gems
in the right directory, and give you a unique gemset.

## Installation & Usage

    bundle install

    # See blog locally on port 4000
    bundle exec jekyll serve

    # See blog locally on port 4000 (with drafts)
    bundle exec jekyll serve --draft

    # Command used by Github to build. Use this to verify if there are any errors
    bundle exec jekyll build --safe

## Publish to Github Pages

    # Create a local gh-pages branch which contains only the assets that need to be published
    JEKYLL_ENV=production bundle exec rake site:publish

    # Switch to this new branch
    git checkout gh-pages

    # FORCE Push the gh-branch to MASTER branch of your github.io repository assuming the remote name is 'website'
    git push website gh-pages:master --force

    # Once successfully published, tag the current branch
    git checkout -b gh-pages-rel-x

    # Delete the local gh-pages branch.. since we don't need it anymore
    git branch -D gh-pages

    # Push backup to github
    git push origin gh-pages-rel-x


## Jekyll Related Links

+ [Jekyll From Scratch - Getting Started] (http://pixelcog.com/blog/2013/jekyll-from-scratch-introduction/)
+ [Jekyll Configuration options] (http://jekyllrb.com/docs/configuration/)
+ [Configuring Go Daddy with your domain to point to Github pages] (http://andrewsturges.com/blog/jekyll/tutorial/2014/11/06/github-and-godaddy.html)
+ [Understanding difference between master and gh-pages](http://octopress.org/docs/deploying/github/)



## Thanks

[Gurpreet] This blog was forked from [https://github.com/willkoehler/](https://github.com/willkoehler/). Thank you!


[Original] This blog was forked from https://github.com/kippt/jekyll-incorporated. Originally built for
[sendtoinc.com](https://sendtoinc.com), your workspace for sharing and organizing knowledge.
Original template built by:

**Karri Saarinen**

+ [http://twitter.com/karrisaarinen](http://twitter.com/karrisaarinen)
+ [http://github.com/ksaa](http://github.com/ksaa)

**Jori Lallo**

+ [http://twitter.com/jorilallo](http://twitter.com/jorilallo)
+ [http://github.com/jorde](http://github.com/jorilallo)