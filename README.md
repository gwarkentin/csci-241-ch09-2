# csci-241-ch09-2
Improving_Bubble_Sort

This class supposes you having learned Bubble sort with its exchange flag. If not, please see the variable flag or find more on-line. Whatever it called, this Boolean flag is used to track whether an changes have been made in the current pass; when a pass completes without changing anything, the algorithm exits.
Modify the textbook sample BubbleSort PROC and renamed it as BubbleSort2 to improve with the following required:

Add a register as the exchange flag, not using a memory variable
Consider where to set this flag and where to check it
If use PUSH/POP, must match two in pair logically in any test cases
Don't try to rewrite all logic in BubbleSort, Simply add some instructions
Don't use directive .IF/.ELSE/.ENDIF. Use CMP and jump instead
You only need to submit modified BubbleSort2.asm
