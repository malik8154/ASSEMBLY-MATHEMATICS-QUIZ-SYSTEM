.model small
.stack 100h

.data
q1 db "Q1: 2 * 2 = ? (a) 4 (b) 8 (c) 2 $"
q2 db "Q2: 5 + 3 = ? (a) 7 (b) 8 (c) 9 $"
q3 db "Q3: 10 - 4 = ? (a) 5 (b) 7 (c) 6 $"
q4 db "Q4: 3 * 3 = ? (a) 6 (b) 9 (c) 12 $"
q5 db "Q5: 12 / 3 = ? (a) 6 (b) 4 (c) 3 $"
q6 db "Q6: 7 + 6 = ? (a) 12 (b) 13 (c) 14 $"
q7 db "Q7: 9 - 5 = ? (a) 3 (b) 4 (c) 5 $"
q8 db "Q8: 8 * 2 = ? (a) 16 (b) 18 (c) 20 $"
q9 db "Q9: 15 / 5 = ? (a) 2 (b) 3 (c) 5 $"
q10 db "Q10: 6 + 9 = ? (a) 14 (b) 15 (c) 16 $"

answers db 'a','b','b','b','b','b','b','a','c','b' ; correct answers

newline db 0Dh,0Ah,'$'
scoremsg db "Final Score (out of 10): $"

questions dw q1,q2,q3,q4,q5,q6,q7,q8,q9,q10

score db 0

.code
main proc
    mov ax,@data
    mov ds,ax

    mov cx,10         ; 10 questions
    mov si,0          ; answer index
    mov bx,offset questions

nextq:
    ; show question
    mov dx,[bx]
    mov ah,09h
    int 21h

    ; newline
    mov dx,offset newline
    mov ah,09h
    int 21h

    ; read answer
    mov ah,01h
    int 21h
    mov dl,al          ; user input in DL

    ; check answer
    mov al,answers[si]
    cmp dl,al
    jne wrong
    inc score

wrong:
    ; newline
    mov dx,offset newline
    mov ah,09h
    int 21h

    ; go to next question
    add bx,2
    inc si
    loop nextq

    ; final message
    mov dx,offset scoremsg
    mov ah,09h
    int 21h

    ; print score
    mov al,score
    add al,'0'
    mov dl,al
    mov ah,02h
    int 21h

    ; exit
    mov ah,4Ch
    int 21h
main endp
end main
