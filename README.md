spark-happy
===========

A way to check your code happiness from the command line

Summary
-------

We just want to be happy, right? When it comes down to it that is what
matters when we right code. If we are happy doing it then maybe we are
writing good code. At least that is my theory. Good code is simple to
change and work with. When requirements change and working with the code
to implement it is making us angry maybe that is some code we should
look toward in refactoring. The problem is where should we refactor.

Step one is to prove that I can do this. That is where spark-happy.rb
comes into play. Utilizing [spark](https://github.com/holman/spark) and
some clever git commits I want to draw a trending graph of your repo's
happiness.

Requirements:

* [spark](https:..github.com/holman/spark)
* rubygems
* [grit](http://rubygems.org/gems/grit)

Usage:
tag commits with #happy or #sad

./spark-happy.rb /path/to/repo branch

DONE

MIT License

Copyright: Amos King 2013
