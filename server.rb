require 'sinatra'
require 'redcarpet'
require 'pygments'
require 'json'

get '/' do
  welcome_page = open('welcome.md'){|f| f.read}
sprintf '''<!doctype html>
   <html lang="en">
     <head>
       <meta charset="utf-8" />
       <title>Redcarpet Markdown Preview Service</title>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <meta name="description" content="Markdown preview service">
       <meta name="author" content="Frank Smith">
       <link rel="stylesheet" href="css/bootstrap.css">
       <link rel="stylesheet" href="css/pygments.css">
       <link rel="stylesheet" href="css/bootstrap-responsive.css">
     </head>
     <body>
     <div class="container">
       %s
     </div>
     </body>
   </html>
   ''',  (generate_preview welcome_page)
end

get '/welcome.md' do
  send_file 'welcome.md'
end

post "/" do
  request.body.rewind  # in case someone already read it
  data = JSON.parse request.body.read
  generate_preview data['markdown']
end

def generate_preview markdown 
  renderer = PygmentizeHTML
  extensions = {fenced_code_blocks: true}
  redcarpet = Redcarpet::Markdown.new(renderer, extensions)
  return redcarpet.render markdown
end


class PygmentizeHTML < Redcarpet::Render::HTML
  def block_code(code, language)
    Pygments.highlight(code, :lexer => language)
  end
end
