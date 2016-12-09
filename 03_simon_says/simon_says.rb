#!/usr/bin/env ruby
# -*- mode: ruby -*
# vi: set ft=ruby :

# Note the utter lack of input checking, which is not recommended in a
# production environment, but is ok here because I said so.

def echo e
  e
end

def shout s
  s.upcase
end

def repeat w,n=2
  (("#{w} ")*n).chomp(' ')
end

def start_of_word w,c
  w[0..(c-1)]
end

def first_word s
  s.split(/ /)[0]
end

def titleize title
  noise = %w(and by from of or over the to)
  words = title.downcase.split(' ')
  words.map! do |w|
    if noise.include? w
      w
    else
      w.capitalize
    end
  end
  words[0].capitalize!
  words.join(' ')
end
