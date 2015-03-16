---
layout: page
title: "Octopress Notes"
date: 2014-07-04 19:53
comments: true
sharing: true
footer: true
---

# Site Mechanics

```
rake preview
rake generate
rake deploy
```

<!--more-->

# Content Creation


## Blog Posts

```
rake new_post["Zombie Ninjas Attack: A survivor's retrospective"]
# Creates source/_posts/2011-07-03-zombie-ninjas-attack-a-survivors-retrospective.markdown
```

### Blog Front Matter

```
---
layout: post
title: "Zombie Ninjas Attack: A survivor's retrospective"
date: 2011-07-03 5:59
comments: true
external-url:
categories:
---
```

### Categories

```
# Multiple categories example 1
categories: [CSS3, Sass, Media Queries]
 
# Multiple categories example 2
categories:
- CSS3
- Sass
- Media Queries
```

### Other useful bits

```
author: Your Name # add authors names
published: false # for drafts
```

## Pages

```
rake new_page[super-awesome]
# creates /source/super-awesome/index.markdown
 
rake new_page[super-awesome/page.html]
# creates /source/super-awesome/page.html
```

### Page Front Matter

```
---
layout: page
title: "Super Awesome"
date: 2011-07-03 5:59
comments: true
sharing: true
footer: true
---

```

# Adding Code

## Code Snippets

```
\[language] [title] [url] [link text] [linenos:false] [start:#] [mark:#,#-#]
code snippet
```

## Gists

```
\{\% gist gist_id [filename] %\}
```

## Code Files

```
\{\% include_code [title] [lang:language] path/to/file [start:#] [end:#] [range:#-#] [mark:#,#-#] [linenos:false] %}
```

## Inline Code Blocks

```
\{\% codeblock [lang:language] [title] [url] [link text] [start:#] [mark:#,#-#] [linenos:false] %}
code snippet
\{\% endcodeblock %}
```

# Git Management

Push the `source` branch on content changes:

```
git add .
git commit -m 'your message'
git push origin source
```

Content is generated and put in `_deploy.`

The `_deploy` directory is configured as a git repo, pointing at the `master` branch. Github publishes the content in the `master` branch as a website.

Remember: the `octopress` directory, and contained `_deploy` are clones of the same git repo, just different branches.




# Plugins

## Plant UML

* Git repo `git@github.com:yjpark/jekyll-plantuml.git`
* Added as a sub-module to plugins

**Test**

{% plantuml %}
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice <-- Bob: another authentication Response
{% endplantuml %}

## AppBox Octopress
* Git repo `<https://github.com/sotsy/appbox-octopress>`

**Test**

_Appstore_
{% appbox appstore 557168941 %}

{% appbox appstore screenshots 557168941 %}

_GooglePlay_
{% appbox googleplay com.twitter.android %}

{% appbox googleplay screenshots com.twitter.android %}

## Wikipedia
* Git repo: `git@github.com:pferreir/octopress-wikipedia.git`
* Note- bit of a pain to set up, need to manually modify theme in use
* Grabs content, so fails to generate pages if off-line

**Test**

{%wikipedia Stirling Engine %}

## Highlight
* Git repo: `git@github.com:thesp0nge/octopress_highlight_plugin.git`
* also need to modify `_layout.scss`

**Test**

{% highlight this is a great piece of wisdom %}, this is not.

## Gemoji
* Git repo: `<https://github.com/rcmdnk/octopress-gemoji>`
* [Emoji cheatsheet](http://www.emoji-cheat-sheet.com/)

**Test**

*fix -- not working! Need to update to 2!*
% gemoji smile%

## Gravatar

* Git repo: `git@github.com:joet3ch/gravatar-octopress.git`
