# Ruby on Rails 4 Paperclip pdf to img Processor #

This gem is a simple Paperclip processor which uses rmagick/ImageMagik to convert uploaded pdf files to a image file. This processor supports multiple pages

## Requirements ##

* [Paperclip][0] ~> 5.0.0
* [rmagick][2]

## Installation ##

This gem is written and tested on Ruby on Rails 4 only. However, this could work on other versions as well provided that paperclip and rmagick is working.

In order to install it, add

    gem 'pdf2img-paperclip-processor'
    
to your Gemfile and run

    bundle install
   
in your console. Bundler should take care of all the rest.

## SwfTools Instalation ##

Install [rmagick][2] from source or using your favorite package manager. On OS X, the easiest way to do it is by using [Homebrew][3].
    
Various Linux distributions should use similar methods with their respected package managers.

## Using Processor ##

Use it as you would any other Paperclip processor. In your model:

    class Document < ActiveRecord::Base
      
      has_attached_file :pdf,
              :styles => { :final_doc => {:format => "png"}},
              :processors => [:pdf2img]      

                      
which will convert your pdf document into a png, and keep both files (.png and .pdf) on the server

## Release info ##

Be warned, this gem is released as early beta version. If you are using it you are doing so on your own responsibility.

Have fun with it and drop me a note if you like it.

[0]: https://github.com/thoughtbot/paperclip
[2]: https://github.com/rmagick/rmagick