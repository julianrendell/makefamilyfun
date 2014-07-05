# Notes

## References


## Plugins

### Plant UML

* Git repo `url = git@github.com:yjpark/jekyll-plantuml.git`
* Added as a sub-module to plugins

*Test*

{% plantuml %}
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice <-- Bob: another authentication Response
{% endplantuml %}

### AppBox Octopress
* Git repo `https://github.com/sotsy/appbox-octopress`

*Test*

_Appstore_
{% appbox appstore 557168941 %}

{% appbox appstore screenshots 557168941 %}

_GooglePlay_
{% appbox googleplay com.twitter.android %}

{% appbox googleplay screenshots com.twitter.android %}

### Wikipedia
* Git repo: git@github.com:pferreir/octopress-wikipedia.git
* Note- bit of a pain to set up, need to manually modify theme in use

*Test*

{% wikipedia Stirling Engine %}

### Highlight
* Git repo: git@github.com:thesp0nge/octopress_highlight_plugin.git
* also need to modify `_layout.scss`

*Test*

{% highlight this is a great piece of wisdom %}, this is not.

### Gemoji
* Git repo: https://github.com/rcmdnk/octopress-gemoji
* [Emoji cheatsheet](http://www.emoji-cheat-sheet.com/)

*Test*

{%gemoji smile%}

### Gravatar

* Git repo: git@github.com:joet3ch/gravatar-octopress.git
