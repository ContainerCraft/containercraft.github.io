JEKYLL_ENV=production bundle exec rake site:publish
git checkout gh-pages
git push website gh-pages:master --force
git checkout master


