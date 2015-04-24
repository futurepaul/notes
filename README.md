Notes
=====

Appends new lines to a small set of text files in the same folder as the binary (it will append even if the file already exists, so don't let this run near something precious! Or better yet, just don't run it at all!). That set is currently hardcoded (lib/notes.ex) but hopefully I'll find a way to make that configurable at runtime — a meta-notes text file that lists the text files available. If you attempt to edit something not in the list, it goes into scratch.txt. The limitations are intentional, I'm trying to write more in fewer categories.
