#Welcome to the Markdown preview service
Do an HTTP Post to me to get the rendered html of any markdown (redcarpet edition) and pygmentize code blocks.
Posting the markdown [from this page](welcome.md):

``` javascript
{
    markdown: "Your markdown goes here"
}
```

Will return the body of the page you are currently reading.

#Basics of Markdown

``` bash
#Heading
## Subheading
### Subsubheading
```

Produces:
#Heading
## Subheading
### Subsubheading
``` bash
1. One
2. Two
3. Three
3. Four?
```

Produces:

1. One
2. Two
3. Three
3. Four?

\`\`\` ruby

``` bash
#!/usr/bin/local/ruby
puts "ruby...awesome"
```

\`\`\`

Produces:

``` ruby

#!/usr/bin/local/ruby
puts "ruby...awesome"
```

Which looks like this in raw html:

``` html
<div class="highlight"><pre><span class="c1">#!/usr/bin/local/ruby</span>
<span class="nb">puts</span> <span class="s2">"ruby...awesome"</span>
</pre></div>
```

By adding the pygmentize css to your web page, you can get your code nicely highlighted.
