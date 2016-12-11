#!/usr/bin/env ruby
# -*- mode: ruby -*
# vi: set ft=ruby

VOWELS     = %w[a e i o u]
CONSONANTS = ('a'..'z').to_a - VOWELS

def pig_out word,regexp
  # Still uncertain why this => 'splitme'.split(/(.*it)/)
  # is returning this        => ["", "split", "me"]
  # but the reject eliminates the null string element.
  word.split(/#{regexp}/).reject(&:empty?).reverse.join+'ay'
end

def translate input
  words = input.split(' ')
  words.map! do |pig|
    if /^[#{VOWELS}]/ === pig
      pig += 'ay'
    elsif /.*qu/ === pig
      pig = pig_out pig, '(.*qu)'
    else
      # Fun fact, using single quotes will prevent the CONSONANTS from
      # properly expanding into the regexp, therefore the double quotes
      # are a necessity in this case..
      pig = pig_out pig, "(^[#{CONSONANTS}]*)"
    end
  end
  words.join(' ')
end
