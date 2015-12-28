# Gliffynator

[![Gem Version](https://badge.fury.io/rb/gliffynator.svg)](https://badge.fury.io/rb/gliffynator)
[![Build Status](https://travis-ci.org/timothypage/gliffynator.svg)](https://travis-ci.org/timothypage/gliffynator)

make gliffy diagrams in ruby!


## simple DSL

    diagram = Gliffynator::Diagram.new do
      add_arrow 50, 50, 100, :right, "Some Text"
    end

    diagram.render

or

    diagram = Gliffynator::Diagram.new
    diagram.add_arrow 50, 50, 100, :right, "Some Text"

    diagram.render

the DSL will keep track of some basic housekeeping, like unique IDs for most objects and their children.  If this isn't done, your document may appear correctly until you try and edit it, when moving one thing might cause other side effects!

## Usage

you can save a diagram to a file, just make sure it ends in `.gliffy`

    diagram.render "example.gliffy"

or you can get at the raw text (which is just json).  this is useful for downloading a file from a Sinatra application, for example

    get '/example.gliffy' do
      header 'Content-Type', 'text/plain'
      header 'Content-Disposition', 'attachment'
      body diagram.render
    end


## Contributing

tests are in `spec/` and are run with `rake`. Feel free to add some tests :)

