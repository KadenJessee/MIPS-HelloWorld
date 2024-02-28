# Author: Kaden Jessee
# Date: 27 Dec 2021
# Description: My first hello world program
# Registers used:
#	$v0		- syscall parameter and return value
#	$a0		- syscall paremeter: the string to print

# Data for the program goes here
.data
hello: .asciiz "Hello CS2810 World!"

# Code goes here
.text
main:
	# Use systcall to interact with the system
	la $a0, hello	# load the location/address of hello string into $a0
	li $v0, 4		# 4 is the print_string() syscall
	syscall			# execute call
	
	li $v0, 10		# 10 is the exit program syscall
	syscall			# execute call

## end of hello.asm
