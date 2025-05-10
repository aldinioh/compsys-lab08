mov R0, #15
str R0, .WriteUnsignedNum
mov R1, #remainingMessage
str R1, .WriteString

remainingMessage: .ASCIZ "remaining\n"