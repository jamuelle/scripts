#!/usr/bin/python

import sys;
import re;

lines = sys.stdin.readlines()

firstmatch = re.compile('(\\s*)((\\s<=\\s)|(\\s:\\s)|(\\sis\\s))');
secondmatch= re.compile('(\\s*)((\\s<=\\s)|(\\s:\\s)|(\\sis\\s))');
arrow = re.compile('(.*)(((\\s<=\\s)|(\\s:\\s)|(\\sis\\s)).*)');

maxX = 0;

for line in lines:
    regs = firstmatch.search(line)
    if regs:
        if (regs.start() > maxX):
            maxX = regs.start()

#maxX = maxX + 1
        
for line in lines:
    newline = []
    regs = arrow.search(line);
    if regs:
        regs2 = secondmatch.search(line)
        if regs2:
            str1 = regs.group(1)
            str2 = str1[:maxX]
            print str2.ljust(maxX,' ') + regs.group(2)
        else:            
            str1 = regs.group(1)
            str2 = str1[:maxX]
            print str2.ljust(maxX,' ') + regs.group(2)
    else:
        print line,


