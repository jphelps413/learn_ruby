#!/usr/bin/env ruby
# -*- mode: ruby -*
# vi: set ft=ruby :

F2C = (5.0/9.0)

def ftoc f
  (f-32.0)*F2C
end

def ctof c
  32.0+(c/F2C)
end
