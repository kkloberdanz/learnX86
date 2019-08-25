        segment   .data                                                         
a       dq        246                                                              
b       dq        328                                                              
c       dq        410                                                              
                                                                                   
        segment .text                                                              
        global main                                                                
main:                                                                              
        mov     rax, [a]    ; move a into rax                                      
        imul    rax, rax    ; a squared                                            
        mov     rbx, [b]    ; move b into rbx                                      
        imul    rbx, rbx    ; b squared                                            
        mov     rcx, [c]    ; move c into rcx                                      
        imul    rcx, rcx    ; c squared                                            
        add     rax, rbx    ; rax has a^2 + b^2                                    
        sub     rax, rcx    ; is rax 0?                                            
        xor     rax, rax                                                           
        ret
