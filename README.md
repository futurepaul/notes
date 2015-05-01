Notes
=====

Appends new lines to a small set of (pre-defined) text files (it will append even if the file already exists, so don't let this run near something precious! Or better yet, just don't run it at all!). That set is currently hardcoded (lib/notes.ex) but hopefully I'll find a way to make that configurable at runtime — a meta-notes text file that lists the text files available. If you attempt to edit something not in the list, it goes into scratch.txt. The limitations are intentional, I'm trying to write more in fewer categories.

Usage
=====

[Install elixir](http://elixir-lang.org/install.html)

Clone this repo somehow I don't know.

CD into the root folder of this repo.

Run ```$ mix escript.build``` to compile the binary.

Finally, create a .notes file in your home directory with a path to where you want the notes to end up.

Oh, and put the notes binary somewhere it can be run from, or add the notes directory to your PATH (my .bash_profile includes the line ```export PATH=~/dev/elixir/notes:$PATH``` for example)

Now just run ```$ notes``` from wherever and you should get a prompt allowing you to append lines to scratch.txt. If you run ```$ notes programming``` it will append to programming.txt, and so on.

If you want to change the "categories" you can write to, you need to edit lib/notes.ex and recompile. This is the current list of categories: ```["notes", "programming", "philosophy", "science", "ethics", "god"]```
