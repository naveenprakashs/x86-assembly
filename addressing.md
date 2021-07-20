# it's aoubt how address memory locations 

we can addresss memory using **absolute 64 bit addresses** or we can use **RIP relative addresses**, which are relative to the RIP ( instruction pointer )

## Position Independent Code 
position independent code can be loaded in any addresss in memory

## Absolute addressing 
- it is slow 
- can address more than 2 GB 
- required for programs larger than 2GB

## Relative addressing
- address relative the instruction pointer
- can address upto 2 GB 
- it is fast

**small** - only relative addressing is used   
**medium** - relative and absolute addressing is used taking advantage of the both based on the context  
**large** - only absolute addressing is used
