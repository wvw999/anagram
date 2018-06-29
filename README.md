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
* handle upper lower case in word checks
 - Input: Tea, Eat
 - Output: true
* verify that each discrete block of input are words
 - Input: ffgghh
 - Output: false
* verify that each discrete block of input are words
 - Input: ^!554,
 - Output: false
* phrases receive the same processing as a word for anagram, antigram, and letter case
 - Input: I eat pies, Tea sip ie
 - Output: true
* phrases receive the same processing as a word for non-word components
 - Input: frogs like tennis, dogs eat TTRRFBR
 - Output: false

## License

This software is licensed under the MIT license.

Copyright (c) 2018 **Will Swanson, BMF**
