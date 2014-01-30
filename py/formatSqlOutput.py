#/bin/python

import sys
import math

# set your tabs widths here
tabwidth = 4

# function to count how many tabwidths a word plus a space is
# used to calculate how wide a column should be
def countTabs(word):
    return int(math.ceil(float(len(word) + 1) / float(tabwidth)))

# only run if this is the main
if __name__ == "__main__":
    # read in the lines
    records = sys.stdin.readlines()

    print len(records),
    print " records."

    if (len(records) > 0):
        # TODO: discard lines that are not obviously part of a table
        # count the number of columns by counting the tabs in the first line
        columns = records[0].count('\t') + 1

        # initialize the widths list
        widths = []
        for i in range(0, columns):
            widths.append(0)

        # split each line into a list of fields
        lists = []
        for record in records:
            list = record.rstrip().split("\t")
            i = 0

            # also, widen the columns, if needed
            for field in list:
                tabs = countTabs(field)

                if tabs > widths[i]:
                    widths[i] = tabs
                i += 1

            lists.append(list)

        # print out each record
        for list in lists:
            out = ""
            i = 0
            for word in list:
                out += word;

                # determine the number of tabs needed to make this column line up
                remaining_tabs = widths[i] - countTabs(word)
                for j in range(0, remaining_tabs + 1):
                    out += "\t"
                i += 1

            print out
