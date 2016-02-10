#!/usr/bin/env ruby
# 
# This script is a wrapper around pandoc that uses pandoc's
# builtin citeproc support to generate a markdown bibliography
# from bibtex.
#
# Inspired by Jacob Barney's [bib2mkd][] script.
#
# [bib2mkd]: http://jmbarney.dyndns.org/?/linux/bib2mkd/
#
# Simplest usage:
#
#    cat file.bib | bibtex2markdown
#
# will send to STDOUT a markdown bibliography containing all the
# publications from file.bib on STDOUT.
#
# Filtering:
#
#    cat file.bib | bibtex2markdown smith jones
#
# will send to STDOUT a markdown bibliography containing all the 
# publications from file.bib whose citekeys begin with 
# 'smith' or 'jones'.
#
# Filtering with Regexs:
#
#    cat file.bib | bibtex2markdown ".*nes"
#
# will send to STDOUT a markdown bibliography containing all the
# publications from file.bib whose citekeys begin with something
# that matches the regex ".*nes", e.g., 'jones1992' and 
# 'ernest1878'.
#
# Using a default bibtex file:
#
#    bibtex2markdown -d
#
# If the first argument is '-d', then will use the file given by
# the variable defaultbib, defined below, rather than reading 
# STDIN.
 
defaultbib="/Users/david/.pandoc/default.bib"
 
input = ""
bibfile = ""
 
if ARGV[0] == "-d"
  bibfile = defaultbib
  File.open(defaultbib, 'r') { |bibtex| 
    input = bibtex.read
  }
  ARGV.shift
else
  input = STDIN.read
  tmpbibfile = "/tmp/bibtex2markdown" + Process.pid.to_s + ".bib"
  bibfile = tmpbibfile
  File.open(tmpbibfile, 'w') { |bibtex| 
    bibtex.puts "#{input}"
  }
end
 
strings=ARGV
 
if strings.length == 0
  strings = [ "" ]
end
 
keys = []
strings.each { |match|
    match.chomp
    keys = keys + input.scan(/@.*?\{\s*(#{match}.*?),/i)
}
keys.uniq!
keys.sort!
 
#refs = "@" + keys.join(" @")

hdr = '\documentclass{article}
\usepackage{biblatex}
\bibliography{mybib}
\nocite{*}
\begin{document}
'
foot = '\printbibliography
\end{document}
'

refs = "\\cite{" + keys.join("} \n \\cite{") + "}"

print hdr + refs + foot

#bibliography = `echo "#{refs}" | pandoc --bibliography="#{bibfile}" -t markdown --no-wrap`
 
#puts bibliography.lines.to_a[2..-1].join
