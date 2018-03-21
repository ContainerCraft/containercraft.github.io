# ContainerCraft.io - Front Page Hosting
#### Branch 'Core-Dev'
Where core pre-production web development occurs before final merging.

#### Container Build:
###### Ubuntu 16.04 LTS Xenial
    1) $ lxc launch ubuntu: containercraftio-c01
    2) $ obb --add-port physical-net ccio01 containercraftio-c01
    3) $ lxc restart containercraftio-c01
    4) $ lxc exec containercraftio-c01 bash
    5) $ apt update && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y

###### Centos 7.4
    1) $ lxc launch images:centos/7/amd64 trent-centos-t01 -p  physical-net
    2) $ lxc exec trent-centos-t01 bash
    3) $ yum install gcc-c++ patch readline readline-devel zlib zlib-devel \
         libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake \
         libtool bison iconv-devel sqlite-devel which
    4) $ curl -sSL http://rvm.io/mpapis.asc | gpg --import -
    5) $ curl -L get.rvm.io | bash -s stable
    6) $ usermod -a -G rvm $USER_NAME 
    7) $ source /etc/profile.d/rvm.sh
    8) $ rvm reload
    9) $ rvm use 2.3.3 --default
    10)$ rvm list
    11)$ rvm use 2.3.3 --default 

#### Ruby Installation:
    1) $ sudo apt install ruby ruby-dev make gcc tree zlib1g-dev
    2) $ gem install jekyll bundler nokogiri jekyll-paginate
    
#### Repo Setup:
    1) $ git clone https://github.com/containercraft/containercraft.github.io.git
    2) $ cd containercraft.github.io
    3) $ bundle install
    4) $ bundle update
    5) $ jekyll serve --watch

# Template Info:
## Jekyll Incorporated
Modern Jekyll based blog. Great for companies, products or anything. See live at [containercraft.io](http://containercraft.io)



## Installation & Usage
    bundle install
    jekyll serve --watch

_Note: Requires Ruby version 1.9.3 =>. For example use [rbenv](https://github.com/sstephenson/rbenv)_   
    
## Configuration
Edit: _config.yml (general options), main.css (theme colors &amp; fonts)

```
jekyll-incorporated/
├── _config.yml
├── _assets/
    ├── stylesheets/
        ├── main.scss
```

_Note: when editing _config.yml, you need to restart jekyll to see the changes.__

    
## Publish to Github Pages
1. Add your domain to _CNAME_
2. Edit your repo address at _Rakefile_
    
Run rake task. **NOTE: It will deploy the generated site to _gh-pages_ branch overwriting it**    
``` 
rake site:publish
```

## Usage examples

* Adroll Engineering http://tech.adroll.com/
* Brace.io blog http://blog.brace.io/
* Spark.io blog http://blog.spark.io/
* Department of Better Technology http://blog.dobt.co/

## Authors

Originally build for [sendtoinc.com](https://sendtoinc.com), your workspace for sharing and organizing knowledge

**Karri Saarinen**

+ [http://twitter.com/karrisaarinen](http://twitter.com/karrisaarinen)
+ [http://github.com/ksaa](http://github.com/ksaa)

**Jori Lallo**

+ [http://twitter.com/jorilallo](http://twitter.com/jorilallo)
+ [http://github.com/jorde](http://github.com/jorilallo)

## Todo:

+ Documentation
+ Less config files
+ Better deploy scripts

## Copyright and license

Copyright 2013 Kippt Inc. under [The MIT License ](LICENSE)

# Creative Theme for Jekyll

A Jekyll implementation of the [Creative Theme](http://startbootstrap.com/template-overviews/creative/) template by [Start Bootstrap](http://startbootstrap.com).

Creative is a one page Bootstrap theme for creatives, small businesses, and other multipurpose uses.
The theme includes a number of rich features and plugins that you can use as a great boilerplate for your next Jekyll project! 

See it live in action at <https://volny.github.io/creative-theme-jekyll/>

## To use the Creative Theme template in your project

- Start by adding your info in `_config.yml`
- In `_layouts/front.html` reorder or remove section as you prefer.

