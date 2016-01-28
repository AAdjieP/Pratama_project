#!/usr/bin/env python

Filename= "all-vs-all.tsv"
File= open(Filename, 'r')

Outfilename= "Outallvsall.tsv"
Outfile=open(Outfilename, 'w')

for line in File:
	value =line.split('\t')
	val = int(float(value[2]))
	if(value >=80):
		print line
		Outfile.write(line)

File.close()
Outfile.close()
