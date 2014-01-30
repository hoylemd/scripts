#! bin/python

import fileinput

people = {}
line_count = 0

for line in fileinput.input():
    print line,
    line_count += 1
    parts = line.split()

    person = parts[1]

    if person in people.keys():
        people[person] += 1
    else:
        people[person] = 1

print
print "Report:"

sorted_people = sorted(people, key=people.get)
sorted_people.reverse()

for person in sorted_people:
    percent = (float(people[person]) / float(line_count)) * 100.00
    print "%s: %d lines of %d (%.2f percent of blame)" % (person, people[person], line_count, percent)
