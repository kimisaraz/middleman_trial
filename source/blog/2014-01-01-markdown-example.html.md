---
title: Markdown Example
date: 2014-01-01 10:47 JST
tags: example, markdown
---

An article for confirmation of Markdown processing.

<!-- READ_MORE -->

## Texts ##

"Lorem ipsum" dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.[^1]

Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

## Lists ##

1. Item
2. Item
    1. Sub Item
    2. Sub Item
3. Item
    - Sub Item
    - Sub Item
4. Item

- Item with
  newline and indent
- Item with
newline

## Links ##

- Inline link: [Middleman Trial](http://kimisaraz.github.io/middleman_trial/)
- Reference link: [Middleman Trial][middleman_trial]
- Normal link (in `<>`): <http://kimisaraz.github.io/middleman_trial/>
- Auto link: http://kimisaraz.github.io/middleman_trial/
- Wiki link: [[WikiLink]]

[middleman_trial]: http://kimisaraz.github.io/middleman_trial/ "Middleman Trial"

## Tables ##

left-align | center-align | right-align
:----------| :----------: | ----------:
1111       | 2222         | 3333
4444       | 5555         | 6666
7777       | 8888         | 9999

## Styles ##

- normal
- *emphasis text with one asterisk*
- **emphasis text with two asterisks**
- `inline code`
- emphasis_inside_of_text
- ~~strikethrough text~~
- ==hightlight text==
- _underscored emphasis text_
- superscript 2^(nd)

### Blockquotes ###

> blockquote
> blockquote
> blockquote

### Images ###

![Middleman](middleman.png "Middleman logo")
![Middleman][middleman logo]
[![Middleman](middleman.png)](http://middlemanapp.com "Middleman guide")
[![Middleman][middleman logo]](http://middlemanapp.com "Middleman guide")

[middleman logo]: images/middleman.png "Middleman logo"

### Code Blocks ###

```ruby
# Code blocks delimited with "```"
def hello(message)
  puts "Hello, #{message}"
end
```

~~~ruby
# Code blocks delimited with "~~~" style
def hello(message)
  puts "Hello, #{message}"
end
~~~

    # Code blocks indented with 4 spaces
    def hello(message)
      puts "Hello, #{message}"
    end

-------------------------------------------------------------------------------

## Non Space Header ##

There is no space between the hash at the beginning of a header above and its name.

## Lax Spacing ##

Text without empty line after.
<div>
  <pre>
    HTML blocks do not require to be surrounded by an empty line
  </pre>
</div>
Text without empty line before.

-------------------------------------------------------------------------------

[^1]: footnotes_example
