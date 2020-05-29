; Program: Improving_Bubble_Sort (Chapter 9, Modified)
; Description: Improves Irvine Bubble Sort Example PROC
; Student:     Gabriel Warkentin
; Date:        04/22/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

INCLUDE Irvine32.inc

.code
;----------------------------------------------------------
BubbleSort2 PROC USES eax ebx ecx esi,
	pArray:PTR DWORD,		; pointer to array
	Count:DWORD				; array size
;
; Sort an array of 32-bit signed integers in ascending order
; using the bubble sort algorithm.
; Receives: pointer to array, array size
; Returns: nothing
;-----------------------------------------------------------

	mov ecx,Count
	dec ecx				; decrement count by 1
L1:	
	mov bl, 0			; clear flag						added
	push ecx			; save outer loop count
	mov	esi,pArray		; point to first value

L2:	mov	eax,[esi]		; get array value
	cmp	[esi+4],eax		; compare a pair of values
	jge	L3				; if [esi] <= [edi], don't exch
	mov bl, 1			; set flag							added
	xchg eax,[esi+4]	; exchange the pair
	mov	[esi],eax

L3:	add	esi,4			; move both pointers forward
	loop	L2			; inner loop

	pop	ecx				; retrieve outer loop count
	cmp bl, 0			;									added
	jz L4				; if flag clear, sort finished		added
	loop L1				; else repeat outer loop

L4:	ret
BubbleSort2 ENDP

END