#Welcome to the Markdown preview service
Doing an HTTP Post to '/' with the folowing:

``` javascript
{
    markdown: "Your markdown goes here."
}
```

Will return:

``` html
<p>Your markdown goes here.</p>
```

##Why
My [blog](http://gazel.la) currently uses github flavoured markdown to author entries and I find it a real chore to edit these entries. I want to write a locally hosted application that can facilitate the posting process.

## Try it yourself
1. In a separate tab open the  [split window editor](/preview.html). This gives you the rendered markdown as you type!
2. Download the [markdown file](welcome.md) of the page you're currently reading. How meta...
3. Copy the file's contents into the clipboard.


Have you downloaded the file? If you have the contents of the file in the clipboard, you can now close this tab as you'll have a copy of this page rendered as soon as you paste it into the left text area on the next tab.
##Basics of Markdown

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

\`\`\` ruby<br>
\#\!/usr/bin/local/ruby <br>
puts "ruby...awesome"<br>
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

By adding the [pygmentize css](/css/pygments.css) to your web page, you can get your code nicely highlighted.

You can also include straight HTML. Look at the following section.

##About
<div class="alert alert-info">
<a class="close" data-dismiss="alert" href="#">--------------->(&times;)</a>
<p>
Combined with twitter bootstrap, straight Html allows you to add their components. Notice the x in the corner. Why don't you try clicking it? Remove the crude ASCII arrows while you're at it.
</p>
</div>

<p>This page uses the following technologies:</p>
<table class="table table-striped">
   <tr><td>Sinatra</td><td>Micro web framework</td><td><a href="http://www.sinatrarb.com/">Home page</a></td></tr>
   <tr><td>Twitter Bootstrap</td><td>Kickass Page Layouts and Components</td><td><a href="http://twitter.github.com/bootstrap/">Home page</a></td></tr>
   <tr><td>AngularJS</td><td>JavaScript with two way {{model_binding}}, sexy!</td><td><a href="http://angularjs.org/">Home page</a></td></tr>
</table>


<p class="lead">
Source code <a href="https://github.com/OryxGazella/markdown-preview">here</a>.
</p>
