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
* check if two words are anagrams
 - Input: frogs, sgorf
 - Output: is anagram
* check if two words are antigrams
 - Input: bubble, grunt
 - Output: is antigram
* notify if two words are not anagrams or antigrams
 - Input: shoe, fits
 - Output: is not anagram or antigram
* handle upper lower case in word checks
 - Input: Tea, Eat
 - Output: true
* verify that each discrete block of input are words
 - Input: ffgghh
 - Output: false
* verify that each discrete block of input are words
 - Input: ^!554,
 - Output: false
* when phrases are input, check entire phrase against original input
 - Input: piesieat, Tea sip ie
 - Output: is anagram
* when phrases and original word do not match, check each word in phrase against original input
 - Input: piesieat, Alexander Tea sip ie
 - Output: is anagram
* phrases receive the same processing as a word for anagram, antigram, and letter case
 - Input: I eat pies, Tea sip ie
 - Output: true

## License

This software is licensed under the MIT license.

Copyright (c) 2018 **Will Swanson, BMF**
