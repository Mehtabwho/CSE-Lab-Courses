

org 100h

jmp start

; Text interface
msg_menu db 13, 10, 'Disk Calculator ', 13, 10
         db '1. Addition', 13, 10
         db '2. Subtraction', 13, 10
         db '3. Multiplication', 13, 10
         db '4. Division', 13, 10
         db 'Enter your choice (1-4): $'

msg_num1 db 13, 10, 'Enter first number (00-99): $'
msg_num2 db 13, 10, 'Enter second number (00-99): $'
msg_result db 13, 10, 'Result: $'
msg_remainder db ' Remainder: $'
msg_invalid db 13, 10, 'Invalid input!$'
msg_newline db 13, 10, '$'

num1 db ?
num2 db ?
result dw ?
remainder db ?
choice db ?

start:
    ; Display
    mov ah, 09h
    mov dx, offset msg_menu
    int 21h
    
    ; User input
    mov ah, 01h
    int 21h
    sub al, '0'     
    mov [choice], al
    
    ; Valid or invalid
    cmp al, 1
    jl invalid_input
    cmp al, 4
    jg invalid_input
    
    ; first number
    mov ah, 09h
    mov dx, offset msg_num1
    int 21h
    call get_two_digit_number
    mov [num1], al
    
    ; second number
    mov ah, 09h
    mov dx, offset msg_num2
    int 21h
    call get_two_digit_number
    mov [num2], al
    
    ; calculation
    mov al, [choice]
    cmp al, 1
    je addition
    cmp al, 2
    je subtraction
    cmp al, 3
    je multiplication
    cmp al, 4
    je division
    
addition:
    mov al, [num1]
    add al, [num2]
    mov ah, 0
    mov [result], ax
    jmp show_result
    
subtraction:
    mov al, [num1]
    sub al, [num2]
    mov ah, 0
    mov [result], ax
    jmp show_result
    
multiplication:
    mov al, [num1]
    mov bl, [num2]
    mul bl           
    mov [result], ax
    jmp show_result
    
division:
    mov al, [num1]
    mov ah, 0        
    mov bl, [num2]
    cmp bl, 0        
    je invalid_input
    div bl           
    mov [remainder], ah 
    mov ah, 0        
    mov [result], ax
    jmp show_division_result
    
show_result:
    mov ah, 09h
    mov dx, offset msg_result
    int 21h
    
    mov ax, [result]
    call print_number
    jmp exit_program
    
show_division_result:
    mov ah, 09h
    mov dx, offset msg_result
    int 21h
    
    mov ax, [result]
    call print_number
    
    ; remainder
    mov ah, 09h
    mov dx, offset msg_remainder
    int 21h
    
    mov al, [remainder]
    mov ah, 0
    call print_number
    jmp exit_program
    
invalid_input:
    mov ah, 09h
    mov dx, offset msg_invalid
    int 21h
    
exit_program:
    mov ah, 4Ch   
    int 21h       

get_two_digit_number proc near
    ;first digit
    mov ah, 01h
    int 21h
    sub al, '0'
    mov bl, 10
    mul bl         
    mov bl, al
    
    ; second digit
    mov ah, 01h
    int 21h
    sub al, '0'
    add al, bl     
    ret
get_two_digit_number endp

; print number
print_number proc near
    ;negative numbers
    cmp ax, 0
    jge positive
    push ax
    mov ah, 02h
    mov dl, '-'
    int 21h
    pop ax
    neg ax
    
positive:
    ; Convert to ASCII digits
    mov cx, 0     
    mov bx, 10     
    
divide_loop:
    mov dx, 0
    div bx          
    push dx        
    inc cx          
    cmp ax, 0
    jne divide_loop
    
print_loop:
    pop dx
    add dl, '0'     
    mov ah, 02h
    int 21h
    loop print_loop
    ret
print_number endp