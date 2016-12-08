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
  return 0 if args.flatten.length == 0
  args.flatten.inject(:+)
end

def multiply(*args)
  return 0 if args.flatten.length == 0
  args.flatten.inject(:*)
end

def power a,b
  a**b
end

def factorial f
  return 1 if f == 0
  (1..f).inject(:*)
end
