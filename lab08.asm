; R0 keeps track of  current amount of matchsticks present
; R1 is the register where messages are outputted from

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

; Store the input that is recived from user
ldr R2, .InputNum
sub R0, R0, R2

B Loop

HALT

; Messages that will be outputted
remainingMessage: .ASCIZ "remaining\n"
removeMessage: .ASCIZ "How many do you want to remove (1-3)?"