#!/usr/bin/env ruby
# -*- mode: ruby -*
# vi: set ft=ruby

VOWELS     = %w[a e i o u]
CONSONANTS = ('a'..'z').to_a - VOWELS

# Not crazy about this, but it works. Still not sure why the splits end up
# with an empty string as element 0 in the chunk arrays.
#
def translate input
  words = input.split(' ')
  words.map! do |pig|
    if /^[#{VOWELS}]/ === pig
      pig += 'ay'
    elsif /^qu/ === pig
      pig = pig.gsub(/^qu/,'')+'quay'
    elsif /.qu/ === pig
      chunk = pig.split(/(.qu)/)
      pig = chunk[2]+chunk[1]+'ay'
    else
      chunk = pig.split(/(^[#{CONSONANTS}]*)/)
      pig = chunk[2]+chunk[1]+'ay'
    end
  end
  words.join(' ')
end
