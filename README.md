[//]: #@corifeus-header

  [![Build Status](https://travis-ci.org/patrikx3/gitlist.svg?branch=master)](https://travis-ci.org/patrikx3/gitlist)  [![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/patrikx3/gitlist/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/patrikx3/gitlist/?branch=master)  [![Code Coverage](https://scrutinizer-ci.com/g/patrikx3/gitlist/badges/coverage.png?b=master)](https://scrutinizer-ci.com/g/patrikx3/gitlist/?branch=master) 


 
# 🤖 P3X Gitlist  v1.0.4-rc.2    

# Description  


                        
[//]: #@corifeus-header:end

This is Klaus Silveira's fork, with multiple themes, sub-modules and updated to PHP7 only and upgraded all components.

### PHP > 7.1 only
 
[README](artifacts/php-7.2-ubuntu.md)
 
# Release version/update info

## Package
Done, just put on your server, nothing to build:   
https://github.com/patrikx3/gitlist/releases

### v1.0.4 - unreleased / in progress
* Format size was missing space (ugly)
* Graph time was not using the ```config.ini```
* Fixed images to not show a html block span text and use now real image alt and title attributes in html
* In progress
  * Graph is not using Bootstrap
  * Network is not using Bootstrap
  * Browse tags
  * In submodules, if the "submodule" and "path" is not the same, it chokes (it should work the submodule name and path are not the same)
    * Works
      * submodule "path/name"
      * path path/name
    * Not working
      * submodule "name"
      * path path/name 

### v1.0.3
* Total bytes was not working with Twig 2

### v1.0.2
* Add support for .gitmodules files at repository root
* Updated to latest dependencies

### v1.0.1
* The minimum PHP version is 7.1 and PHPUNIT 7.

### v1.0.0
* Works with ```PHP 7.2```


### v0.5.6
* The Markdown image links were not working. 
* Missed out the ```package.json``` from the previous release.

### v0.5.5
* Fixed PHPUNIT 6

### v0.5.4
* Different submodule links for Gitlist and Github

### v0.5.3
* The markdown links are working right
* Shows submodules

### v0.5.2
* Added all Bootsswatch themes (https://bootswatch.com/)
* Removed default theme, kept only Bootstrap (though like over 10 themes now)
* Removed PHP 5 support, only >= 7
* Upgraded Silex v1 to v2
* Upgraded Twig v1 to v2
* Upgraded Symfony/twig-bridge v2 to v3
* Upgraded  Symfony/filesystem v2 to v3
* Upgraded Phpunit v4 to v6
* Moved from Showdown to Marked (more features)
* For building requires (not required for the server):
  * NodeJs >= 8.9.0
  * Bower
  * Grunt

   
# Old info
https://github.com/klaussilveira/gitlist

# Live demo

http://gitlist.patrikx3.com/

# Installation

## Requirements
For the build on your workstation (themes):
* ```NodeJs``` >= 7.8
* ```Bower``` and ```Grunt``` (npm install -g bower grunt-cli)

In order to run GitList on your server, you'll need:

* ```git```
* ```Apache``` with ```mod_rewrite``` enabled or ```nginx```
* ```PHP``` >= 7.1 

## By hand
If you just want to get the project dependencies, instead of building everything:

```
git clone https://github.com/patrikx3/gitlist.git
curl -s http://getcomposer.org/installer | php
php composer.phar install
bower install
grunt
```

If you have Composer in your path, things get easier. But you know the drill.

[Install](INSTALL.md) - here.


[//]: #@corifeus-footer

---

[**GITLIST**](https://pages.corifeus.com/gitlist) Build v1.0.4-rc.2 

[![Like Corifeus @ Facebook](https://img.shields.io/badge/LIKE-Corifeus-3b5998.svg)](https://www.facebook.com/corifeus.software) [![Donate for Corifeus / P3X](https://img.shields.io/badge/Donate-Corifeus-003087.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QZVM4V6HVZJW6)  [![Contact Corifeus / P3X](https://img.shields.io/badge/Contact-P3X-ff9900.svg)](https://www.patrikx3.com/en/front/contact) 


## Sponsors

[IntelliJ - The most intelligent Java IDE](https://www.jetbrains.com)
  
[![JetBrains](https://cdn.corifeus.com/assets/svg/jetbrains-logo.svg)](https://www.jetbrains.com/) [![NoSQLBooster](https://cdn.corifeus.com/assets/png/nosqlbooster-70x70.png)](https://www.nosqlbooster.com/)

[The Smartest IDE for MongoDB](https://www.nosqlbooster.com)
  
  
 

[//]: #@corifeus-footer:end