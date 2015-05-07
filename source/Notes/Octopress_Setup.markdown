---
layout: page
title: "Octopress Setup"
author: Julian
date: 2014-07-04 19:53
comments: true
sharing: true
footer: true
published: true
---

Reminders about the plugins and other configuration for this site.

## Notes

* For [Heroku] deployment, all git submodules need to be added via their public (`https`) repository URLs. You can't add a (private) `ssh` key to your [Heroku] account to access your [Github] repositories. Which makes sense if you think about it.

* Had to add extra `span` elements in various places to make the `css` animations I added to `a` links work correctly.

## Layouts

Using [Octostrap3].

## Plugins

### Plant UML

* Git repo https://github.com/yjpark/jekyll-plantuml.git
* Added as a sub-module to plugins

*Test*

{% plantuml %}
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice <-- Bob: another authentication Response
{% endplantuml %}

### AppBox Octopress
* Git repo: https://github.com/sotsy/appbox-octopress

*Test*

_Appstore_
{% appbox appstore 557168941 %}

{% appbox appstore screenshots 557168941 %}

_GooglePlay_
{% appbox googleplay com.twitter.android %}

{% appbox googleplay screenshots com.twitter.android %}

### Wikipedia
* Git repo: https://github.com/pferreir/octopress-wikipedia.git
* Note- bit of a pain to set up, need to manually modify theme in use

*Test*

{% wikipedia Stirling Engine %}

### Highlight
* Git repo: https://github.com/thesp0nge/octopress_highlight_plugin.git
* also need to modify `_layout.scss`

*Test*

{% highlight this is a great piece of wisdom %}, this is not.

### Gemoji
* Git repo: https://github.com/rcmdnk/octopress-gemoji
* [Emoji cheatsheet](http://www.emoji-cheat-sheet.com/)

*Test*

{%gemoji smile%}

### Gravatar

* Git repo: https://github.com/joet3ch/gravatar-octopress.git

### Jekyll Author
* (My fork) Git repo: https://github.com/julianrendell/jekyll-author-plugin.git



[Heroku]: http://heroku.com
[Github]: http://github.com
[Octostrap3]: http://kaworu.github.io/octostrap3/
