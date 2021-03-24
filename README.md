# Change Converter

Given a number in pounds and pence, work out the most efficient way of breaking it down into notes and coins, e.g. 11.55 becomes ["£10", "£1", "50p", "5p"]

Edge Cases:
Input NAN/not 0 or 2 decs

INPUT | OUTPUT
-|-
1  | ["£1"]
2  | ["£1", "£1"]
3  | ["£1", "£1", "£1"]
5  | ["£5"]
6  | ["£5", "£1"]
10 | ["£5", "£5"]
40 | ["£20", "£20"]
86 | ["£50", "£20", "£10", "£5", "£1"]
1.50 | ["£1", "50p"]
1.70 | ["£1", "50p", "20p"]
1.80 | ["£1", "50p", "20p", "10p"]
1.85 | ["£1", "50p", "20p", "10p", "5p"]
1.87 | ["£1", "50p", "20p", "10p", "5p", "2p"]
1.88 | ["£1", "50p", "20p", "10p", "5p", "2p", "1p"]
16.30 | ["£10", "£5", "£1", "20p", "10p"]
76.81 | ["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"]
A | "Incorrect input"
1.2 | "Incorrect input"

## Acceptance Criteria

```
change_generator.convert(7.42)
 => ["£5", "£1", "£1", "20p", "20p", "2p"]
change_generator.convert(40)
 => ["£20", "£20"]
change_generator.convert(16.30)
 => ["£10", "£5", "£1", "20p", "10p"]
change_generator.convert(19.99)
 => ["£10", "£5", "£1", "£1", "1", "£1", "50p", "20p", "20p", "5p", "2p", "2p"]
change_generator.convert(76.81)
 => ["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"]
```

## Extension Options

- Write a program that takes an array of note and coin values and returns the result of summing these amounts, in `£00.00` format.

- Write a change generator for a different currency e.g. USD.

- Turn you change converter into a cash machine, but pre-loading it with notes and change. Keep track of how much money it has dispensed, and notify the user when it runs out.
