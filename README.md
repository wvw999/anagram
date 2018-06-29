# Anagram checker!

#### Epicodus Ruby: 06/29/2018

#### By HRM Will Swanson

## Description

class which will check input's status as anagram or antigram

## Setup/Contribution Requirements

1. Clone the repo
1. Make a new branch
1. Commit and push your changes
1. Create a PR

## Technologies Used

* Ruby 2.4.1

## Specs/Steps
* checks if two words are anangrams
 - Input: frogs, sgorf
 - Output: sgorf is an anagram of frogs
* checks if two words are antigrams
 - Input: bubble, grunts
 - Output: grunts is not an anagram or antigram of bubble
* notify if two words are not anagrams or antigrams
 - Input: shoe, fits
 - Output: fits is not anagram or antigram of shoe
* handle upper lower case in word checks
 - Input: Tea, Eat
 - Output: eat is an anagram of tea
* verify that original input string is a word
 - Input: ffgghh
 - Output: Your original word input was not a word
* verify that original input string is a word
 - Input: ^!554,
 - Output: Your original word input was not a word
* when phrases are input, check entire phrase against original input
 - Input: piesieat, Tea sip ie
 - Output: tea sip ie is an anagram of piesieat
* when phrases and original word do not match, check each word in phrase against original input
 - Input: Tea sip ie, Alexander piesieat
 - Output: piesieat is an anagram of tea sip ie
* when phrases and original word do not match, check each word in phrase against original input
 - Input: violins, the vio lin was invented by pupupup and tututut
 - Output: tututut is an antigram of violins

## License

This software is licensed under the MIT license.

Copyright (c) 2018 **Will Swanson, BMF**
