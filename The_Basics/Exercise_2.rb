#Use the modulo operator,division, or combination of both to take a 4 digit number and find the digit
# in the thousands,hundreds,tens,ones
thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 % 100 % 10