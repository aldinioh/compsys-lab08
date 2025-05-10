; R0 keeps track of  current amount of matchsticks present
; R1 is the register where messages are outputted from
; R2 is the register of the current user's inputted number

; Store number 15 to R0 (this is the default starting value of R0,)
mov R0, #15

Loop:

; Output current num of matchsticks
str R0, .WriteUnsignedNum

; Store remainingMessage and output it
mov R1, #remainingMessage
str R1, .WriteString

; Store removeMessage and output it
mov R1, #removeMessage
str R1, .WriteString

RangeLoop:

; Store the input that is recived from user
ldr R2, .InputNum

; We need to check if the input (R2) is less than 1, if it is go to next conditional and perform another check.
cmp R2, #1
blt outOfRange

; Check if input (R2) is greater than 3 
cmp R2, #3
bgt outOfRange

; If both compares are true than this will be executed
B InRange

outOfRange:
mov R1, #outOfRangeMessage
str R1, .WriteString
B RangeLoop ; Go back because it was not in range


InRange:
; Subtract R0 and R2 and store new value in R0
sub R0, R0, R2

B Loop

HALT

; Messages that will be outputted
remainingMessage: .ASCIZ "remaining\n"
removeMessage: .ASCIZ "How many do you want to remove (1-3)?\n"
outOfRangeMessage: .ASCIZ "\nInput out of range! Please enter (1-3).\n"