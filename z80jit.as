;Gocaine Z80 JIT Codename:Space-Lightning
;This software is unlicenced.
;So,You can use this software freely!
#module
#deffunc z80jit_init
sdim jitcache,2048*1024*20
ldim z80jitcreamaddr,3
z80jitcreamaddr(0)=*z80jitcream1,*z80jitcream2,*z80jitcream3
z80jitcreamaddrptr=*getz80jitcreamaddrptr
dupptr z80jitcreamaddrgetteraddrdata,lpeek(z80jitcreamaddrptr,0),256,2
if wpeek(z80jitcreamaddrgetteraddrdata,0)&0x8000{z80jitcreamaddrptr=lpeek(z80jitcreamaddrgetteraddrdata,2)}else{z80jitcreamaddrptr=wpeek(z80jitcreamaddrgetteraddrdata,2)}
z80jitopcodeaddr0ptr=*getjitopcodeaddr0
dupptr z80jitopcodeaddrgetteraddrdata,lpeek(z80jitopcodeaddr0ptr,0),256,2
if wpeek(z80jitopcodeaddrgetteraddrdata,0)&0x8000{z80jitopcodeaddr0ptr=lpeek(z80jitopcodeaddrgetteraddrdata,2)}else{z80jitopcodeaddr0ptr=wpeek(z80jitopcodeaddrgetteraddrdata,2)}
sdim jitstack,64
return
#deffunc z80jitrun var startaddr
jitcntaddr=0
compiledaddrz80=startaddr
repeat 10240
wpoke jitcache,jitcntaddr,0x200F|0x8000:jitcntaddr+=2
lpoke jitcache,jitcntaddr,1:jitcntaddr+=4
wpoke jitcache,jitcntaddr,0x0001|0x8000:jitcntaddr+=2
lpoke jitcache,jitcntaddr,z80jitcreamaddrptr:jitcntaddr+=4
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0028:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0004:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0029:jitcntaddr+=2

z80opcodexedchk=z80readmem(compiledaddrz80)
switch z80opcodexedchk
case 0xcb
compiledaddrz80+=1
swbreak
case 0xdd
compiledaddrz80+=1
if z80readmem(compiledaddrz80+1)=0xCB{compiledaddrz80+=2}
swbreak
case 0xed
compiledaddrz80+=1
swbreak
case 0xfd
compiledaddrz80+=1
if z80readmem(compiledaddrz80+1)=0xCB{compiledaddrz80+=2}
swbreak
swend

wpoke jitcache,jitcntaddr,0x200F|0x8000:jitcntaddr+=2
lpoke jitcache,jitcntaddr,1:jitcntaddr+=4
wpoke jitcache,jitcntaddr,0x0001|0x8000:jitcntaddr+=2
lpoke jitcache,jitcntaddr,z80jitopcodeaddr0ptr:jitcntaddr+=4
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0028:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0004:jitcntaddr+=2
wpoke jitcache,jitcntaddr,z80opcodexedchk:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0029:jitcntaddr+=2

wpoke jitcache,jitcntaddr,0x200F|0x8000:jitcntaddr+=2
lpoke jitcache,jitcntaddr,1:jitcntaddr+=4
wpoke jitcache,jitcntaddr,0x0001|0x8000:jitcntaddr+=2
lpoke jitcache,jitcntaddr,z80jitcreamaddrptr:jitcntaddr+=4
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0028:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0004:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0001:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0029:jitcntaddr+=2

if opcodex@z80moduleaccess(z80jitcreamaddrptr)=0{compiledaddrz80+=1}else{compiledaddrz80+=opcodex@z80moduleaccess(z80opcodexedchk)}
loop
wpoke jitcache,jitcntaddr,0x200F|0x8000:jitcntaddr+=2
lpoke jitcache,jitcntaddr,0:jitcntaddr+=4
wpoke jitcache,jitcntaddr,0x0001|0x8000:jitcntaddr+=2
lpoke jitcache,jitcntaddr,z80jitcreamaddrptr:jitcntaddr+=4
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0028:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0004:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0002:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0029:jitcntaddr+=2

wpoke jitcache,jitcntaddr,0x200F:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0002:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x200F:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0011:jitcntaddr+=2
/*wpoke jitcache,jitcntaddr,0x200F:jitcntaddr+=2
wpoke jitcache,jitcntaddr,0x0000:jitcntaddr+=2*/

memcpy stack@z80moduleaccess(0),jitstack(0),64,0,0
memcpy stack@z80moduleaccess(1),jitstack(1),64,0,0
wpoke stack@z80moduleaccess(0),10,startaddr
ldim jitrundbtedaddress,1
lpoke jitrundbtedaddress,0,varptr(jitcache)
gosub jitrundbtedaddress
lpoke startaddr,0,wpeek(stack@z80moduleaccess(0),10)
memcpy jitstack(0),stack@z80moduleaccess(0),64,0,0
memcpy jitstack(1),stack@z80moduleaccess(1),64,0,0
return
*z80jitcream1
wpoke stack@z80moduleaccess(0),10,wpeek(stack@z80moduleaccess(0),10)+1
return
*z80jitcream2
poke stack@z80moduleaccess(0),14,peek(stack@z80moduleaccess(0),14)+1
return
*z80jitcream3
return
*getjitopcodeaddr0
opcodeaddr@z80moduleaccess=opcodeaddropa
return
*getjitopcodeaddr1
opcodeaddr_cb@z80moduleaccess=opcodeaddropa
return
*getjitopcodeaddr2
opcodeaddr_dd@z80moduleaccess=opcodeaddropa
return
*getjitopcodeaddr3
opcodeaddr_dd_cb@z80moduleaccess=opcodeaddropa
return
*getjitopcodeaddr4
opcodeaddr_ed@z80moduleaccess=opcodeaddropa
return
*getjitopcodeaddr5
opcodeaddr_fd@z80moduleaccess=opcodeaddropa
return
*getjitopcodeaddr6
opcodeaddr_fd_cb@z80moduleaccess=opcodeaddropa
return
*getz80jitcreamaddrptr
z80jitcreamaddr=opcodeaddropa
return
#global
z80jit_init