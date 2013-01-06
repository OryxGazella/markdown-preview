require 'sinatra'
require 'redcarpet'
require 'pygmentize'

get '/' do
  welcome_page = open('welcome.md'){|f| f.read}
"""<!doctype html>
   <html lang=\"en\">
     <head>
     <meta charset=\"utf-8\" />
     <title>Redcarpet Markdown Preview Service</title>
     </head>
     <body>
       #{generate_preview welcome_page}
     </body>
   </html>
"""
end

get '/welcome.md' do
  send_file 'welcome.md'
end

post "/" do
  generate_preview params[:markdown]
end

def generate_preview markdown 
  renderer = PygmentizeHTML
  extensions = {fenced_code_blocks: true}
  redcarpet = Redcarpet::Markdown.new(renderer, extensions)
  return redcarpet.render markdown
end


class PygmentizeHTML < Redcarpet::Render::HTML
  def block_code(code, language)
    require 'pygmentize'
    Pygmentize.process(code, language)
  end
end
