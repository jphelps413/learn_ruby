#!/usr/bin/env ruby
# -*- mode: ruby -*
# vi: set ft=ruby :

def add a,b
  a+b
end

def subtract a,b
  a-b
end

def sum(*args)
  args.flatten.inject(:+) || 0
end

def multiply(*args)
  args.flatten.inject(:*) || 0
end

def power a,b
  a**b
end

def factorial f
  (1..f).inject(:*) || 1
end
