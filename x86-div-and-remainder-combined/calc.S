	.globl	_calc                   ## -- Begin function calc

    ## not sure why underscore as prefix is needed
_calc:                                  ## @calc
	pushq	%rbp
	movq	%rsp, %rbp
	
	## int a = 7
	movl	$12, -4(%rbp)

	## int b = 5
	movl	$5, -8(%rbp)

	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)

    ## division result is in in %edx
    ## remainder is in %eax
    
    ## add value in edx to value in eax; should be 3
    ## resultig function is
    ## int c = a / b;
    ## int d = a % b;
    ## return (c + d) (via %eax)
    addl    %edx, %eax
	
	popq	%rbp
	retq
                                        ## -- End function
