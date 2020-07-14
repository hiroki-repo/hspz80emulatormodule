//Gocaine z80 cpu emulator
//this software code can be used to any purposes!
//and this software is unlicenced!
//Codename KisKan

#module
#deffunc gocaine_z80init 
resforrlc=0
dim SZ,257
dim SZ_BIT,257
dim SZP,257
dim SZHV_inc,257
dim SZHV_dec,257
/*	repeat 256
	i=cnt
		p = 0
		p2 = 0
		if(i & 0x01) {p2=p:p=p2+1}
		if(i & 0x02) {p2=p:p=p2+1}
		if(i & 0x04) {p2=p:p=p2+1}
		if(i & 0x08) {p2=p:p=p2+1}
		if(i & 0x10) {p2=p:p=p2+1}
		if(i & 0x20) {p2=p:p=p2+1}
		if(i & 0x40) {p2=p:p=p2+1}
		if(i & 0x80) {p2=p:p=p2+1}
		//SZ(i) = i
		if (i=(i & 0x80)) {SZ(i) = 0x40}
		SZ(i) |= (i & (0x20 | 0x08))
		//SZ_BIT(i) = i
		if (i = (i & 0x80)){SZ_BIT(i) = 0x40 | 0x04}
		SZ_BIT(i) |= (i & (0x20 | 0x08))
		p2=p
		p2xclac=0
		p2xclac=(p2 & 1)
		if p2xclac = 0{p2xclac=0x04}else{p2xclac=0}
		SZP(i)=SZ(i) | p2xclac
		p2=p
		if ((p2 & 1) = 0) {SZP(i) = SZP(i) | (0x04)}
		SZHV_inc(i) = SZ(i)
		if(i == 0x80) {SZHV_inc(i) |= 0x04}
		if((i & 0x0f) == 0x00) {SZHV_inc(i) |= 0x10}
		SZHV_dec(i) = SZ(i) | 0x02
		if(i == 0x7f) {SZHV_dec(i) |= 0x04}
		if((i & 0x0f) == 0x0f) {SZHV_dec(i) |= 0x10}
	loop*/
SZ(0)      =0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8
SZ_BIT(0)  =0x44,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8
SZP(0)     =0x44,0x00,0x00,0x04,0x00,0x04,0x04,0x00,0x08,0x0c,0x0c,0x08,0x0c,0x08,0x08,0x0c,0x00,0x04,0x04,0x00,0x04,0x00,0x00,0x04,0x0c,0x08,0x08,0x0c,0x08,0x0c,0x0c,0x08,0x20,0x24,0x24,0x20,0x24,0x20,0x20,0x24,0x2c,0x28,0x28,0x2c,0x28,0x2c,0x2c,0x28,0x24,0x20,0x20,0x24,0x20,0x24,0x24,0x20,0x28,0x2c,0x2c,0x28,0x2c,0x28,0x28,0x2c,0x00,0x04,0x04,0x00,0x04,0x00,0x00,0x04,0x0c,0x08,0x08,0x0c,0x08,0x0c,0x0c,0x08,0x04,0x00,0x00,0x04,0x00,0x04,0x04,0x00,0x08,0x0c,0x0c,0x08,0x0c,0x08,0x08,0x0c,0x24,0x20,0x20,0x24,0x20,0x24,0x24,0x20,0x28,0x2c,0x2c,0x28,0x2c,0x28,0x28,0x2c,0x20,0x24,0x24,0x20,0x24,0x20,0x20,0x24,0x2c,0x28,0x28,0x2c,0x28,0x2c,0x2c,0x28,0x80,0x84,0x84,0x80,0x84,0x80,0x80,0x84,0x8c,0x88,0x88,0x8c,0x88,0x8c,0x8c,0x88,0x84,0x80,0x80,0x84,0x80,0x84,0x84,0x80,0x88,0x8c,0x8c,0x88,0x8c,0x88,0x88,0x8c,0xa4,0xa0,0xa0,0xa4,0xa0,0xa4,0xa4,0xa0,0xa8,0xac,0xac,0xa8,0xac,0xa8,0xa8,0xac,0xa0,0xa4,0xa4,0xa0,0xa4,0xa0,0xa0,0xa4,0xac,0xa8,0xa8,0xac,0xa8,0xac,0xac,0xa8,0x84,0x80,0x80,0x84,0x80,0x84,0x84,0x80,0x88,0x8c,0x8c,0x88,0x8c,0x88,0x88,0x8c,0x80,0x84,0x84,0x80,0x84,0x80,0x80,0x84,0x8c,0x88,0x88,0x8c,0x88,0x8c,0x8c,0x88,0xa0,0xa4,0xa4,0xa0,0xa4,0xa0,0xa0,0xa4,0xac,0xa8,0xa8,0xac,0xa8,0xac,0xac,0xa8,0xa4,0xa0,0xa0,0xa4,0xa0,0xa4,0xa4,0xa0,0xa8,0xac,0xac,0xa8,0xac,0xa8,0xa8,0xac
SZHV_inc(0)=0x50,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x10,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x30,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x30,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x10,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x10,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x30,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x30,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x28,0x94,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x90,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0xb0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xb0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0x90,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x90,0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0x88,0xb0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xb0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa0,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8,0xa8
SZHV_dec(0)=0x42,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x1a,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x1a,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x2a,0x2a,0x2a,0x2a,0x2a,0x2a,0x2a,0x3a,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x2a,0x2a,0x2a,0x2a,0x2a,0x2a,0x2a,0x3a,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x1a,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x1a,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x2a,0x2a,0x2a,0x2a,0x2a,0x2a,0x2a,0x3a,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x22,0x2a,0x2a,0x2a,0x2a,0x2a,0x2a,0x2a,0x3e,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x8a,0x8a,0x8a,0x8a,0x8a,0x8a,0x8a,0x9a,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x8a,0x8a,0x8a,0x8a,0x8a,0x8a,0x8a,0x9a,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xba,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xba,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x8a,0x8a,0x8a,0x8a,0x8a,0x8a,0x8a,0x9a,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x82,0x8a,0x8a,0x8a,0x8a,0x8a,0x8a,0x8a,0x9a,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xba,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xa2,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xaa,0xba

	SZ(256)=SZ(0)
	SZ_BIT(256)=SZ_BIT(0)
	SZHV_inc(256)=SZHV_inc(0)
	SZHV_dec(256)=SZHV_dec(0)
	i=0
sdim stack,64,2
//sdim memory,65540
ldim opcodeaddr,256
jumplabel=*null
repeat 256
lpoke opcodeaddr(cnt),0,lpeek(jumplabel,0)
loop
iomemorycalledid=0
iomemorycalledid16=0
iomemorycalled=0
cnt2=-1
jumplabel=*opcode_00:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_01:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_02:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_03:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_04:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_05:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_06:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_07:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_08:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_09:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_0a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_0b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_0c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_0d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_0e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_0f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_10:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_11:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_12:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_13:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_14:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_15:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_16:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_17:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_18:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_19:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_1a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_1b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_1c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_1d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_1e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_1f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_20:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_21:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_22:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_23:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_24:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_25:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_26:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_27:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_28:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_29:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_2a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_2b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_2c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_2d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_2e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_2f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_30:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_31:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_32:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_33:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_34:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_35:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_36:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_37:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_38:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_39:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_3a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_3b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_3c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_3d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_3e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_3f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_40:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_41:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_42:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_43:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_44:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_45:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_46:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_47:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_48:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_49:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_4a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_4b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_4c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_4d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_4e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_4f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_50:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_51:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_52:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_53:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_54:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_55:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_56:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_57:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_58:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_59:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_5a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_5b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_5c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_5d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_5e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_5f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_60:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_61:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_62:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_63:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_64:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_65:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_66:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_67:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_68:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_69:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_6a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_6b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_6c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_6d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_6e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_6f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_70:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_71:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_72:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_73:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_74:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_75:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_76:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_77:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_78:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_79:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_7a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_7b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_7c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_7d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_7e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_7f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_80:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_81:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_82:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_83:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_84:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_85:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_86:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_87:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_88:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_89:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_8a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_8b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_8c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_8d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_8e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_8f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_90:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_91:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_92:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_93:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_94:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_95:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_96:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_97:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_98:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_99:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_9a:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_9b:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_9c:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_9d:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_9e:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_9f:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a0:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a1:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a2:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a3:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a4:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a5:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a6:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a7:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a8:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_a9:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_aa:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ab:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ac:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ad:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ae:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_af:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b0:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b1:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b2:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b3:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b4:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b5:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b6:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b7:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b8:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_b9:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ba:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_bb:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_bc:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_bd:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_be:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_bf:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c0:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c1:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c2:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c3:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c4:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c5:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c6:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c7:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c8:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_c9:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ca:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_cb:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_cc:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_cd:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ce:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_cf:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d0:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d1:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d2:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d3:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d4:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d5:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d6:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d7:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d8:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_d9:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_da:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_db:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_dc:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_dd:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_de:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_df:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e0:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e1:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e2:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e3:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e4:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e5:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e6:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e7:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e8:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_e9:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ea:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_eb:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ec:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ed:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ee:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ef:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f0:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f1:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f2:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f3:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f4:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f5:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f6:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f7:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f8:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_f9:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_fa:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_fb:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_fc:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_fd:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_fe:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
jumplabel=*opcode_ff:cnt2=cnt2+1:lpoke opcodeaddr(cnt2),0,lpeek(jumplabel,0)
cpuamountmax=256
dim r2forcalc,cpuamountmax
sdim stackformt,64,2,cpuamountmax
//repeat 256:wpoke stackformt(0,cnt),12,0xFF77:loop
sdim iomemory,cpuamountmax
dim z80runmode,cpuamountmax
dim z80haltmodesw,cpuamountmax
cnt2=0
dim z80halt2endmode,cpuamountmax
return
#defcfunc getioportread16bitaddr var startaddr, var memory
address=-1
switch peek(memory,startaddr)
case 0xDB
address=0
poke address,1,peek(memory,wpeek(stack(0),10))
poke address,0,peek(stack(0),0)
swbreak
case 0xED
switch peek(memory,startaddr+1)
case 0x40
address=0
address=wpeek(stack(0),2)
swbreak
case 0x48
address=0
address=wpeek(stack(0),2)
swbreak
case 0x50
address=0
address=wpeek(stack(0),2)
swbreak
case 0x58
address=0
address=wpeek(stack(0),2)
swbreak
case 0x60
address=0
address=wpeek(stack(0),2)
swbreak
case 0x68
address=0
address=wpeek(stack(0),2)
swbreak
case 0x70
address=0
address=wpeek(stack(0),2)
swbreak
case 0x78
address=0
address=wpeek(stack(0),2)
swbreak
case 0xA2
address=0
peek address,1,wpeek(stack(0),0)
peek address,0,iomemorycalledid
swbreak
case 0xAA
address=0
peek address,1,wpeek(stack(0),0)
peek address,0,iomemorycalledid
swbreak
case 0xB2
address=0
peek address,1,wpeek(stack(0),0)
peek address,0,iomemorycalledid
swbreak
case 0xBA
address=0
peek address,1,wpeek(stack(0),0)
peek address,0,iomemorycalledid
swbreak
swend
swbreak
swend
return address

#defcfunc isioportcalled
ioportidforreturn=iomemorycalledid
if iomemorycalled=0{ioportidforreturn=-1}
iomemorycalled=0
return ioportidforreturn
#defcfunc isioportcalled16
ioportidforreturn=iomemorycalledid16
if iomemorycalled=0{ioportidforreturn=-1}
iomemorycalled=0
return ioportidforreturn
#deffunc ioportpoke int iomemoryidforz80,int iomemorydataforz80
poke iomemory,iomemoryidforz80,iomemorydataforz80
return
#defcfunc ioportpeek int iomemoryidforz80
return peek(iomemory,iomemoryidforz80)

#deffunc stackpoke int threadidforrunthez80,int threadidforrunthez80ptrid,int iomemoryidforz80,int iomemorydataforz80
poke stackformt(threadidforrunthez80ptrid,threadidforrunthez80),iomemoryidforz80,iomemorydataforz80

#defcfunc stackpeek int threadidforrunthez80,int threadidforrunthez80ptrid,int iomemoryidforz80
return peek(stackformt(threadidforrunthez80ptrid,threadidforrunthez80),iomemoryidforz80)

#deffunc z80interrupt var startaddr, var memory,int threadidforrunthez80,int iomemoryidforz80
if z80haltmodesw(threadidforrunthez80)=1{z80haltmodesw(threadidforrunthez80)=0}
if (peek(stackformt(1,threadidforrunthez80),14) & 0x01){
if z80runmode(threadidforrunthez80)=0{
/*poke memory,wpeek(stackformt(0,threadidforrunthez80),12)-2,peek(stackformt(0,threadidforrunthez80),10)
poke memory,wpeek(stackformt(0,threadidforrunthez80),12)-1,peek(stackformt(0,threadidforrunthez80),11)
wpoke stackformt(0,threadidforrunthez80),12,wpeek(stackformt(0,threadidforrunthez80),12)-2
if iomemoryidforz80>=8{
wpoke stackformt(0,threadidforrunthez80),10,0x38
startaddr=0x38
}else{
wpoke stackformt(0,threadidforrunthez80),10,iomemoryidforz80*8
startaddr=iomemoryidforz80*8
}*/
memcpy stack(0),stackformt(0,threadidforrunthez80),64,0,0
memcpy stack(1),stackformt(1,threadidforrunthez80),64,0,0
wpoke stack(0),10,startaddr
//opcode=peek(memory,wpeek(stack(0),10))
//lpoke jumplabel,0,opcodeaddr(opcode)
gosub opcodeaddr(iomemoryidforz80)//opcodeaddr(opcode)//jumplabel
lpoke startaddr,0,wpeek(stack(0),10)
memcpy stackformt(0,threadidforrunthez80),stack(0),64,0,0
memcpy stackformt(1,threadidforrunthez80),stack(1),64,0,0
}
if z80runmode(threadidforrunthez80)=1{
poke memory,wpeek(stackformt(0,threadidforrunthez80),12)-2,peek(stackformt(0,threadidforrunthez80),10)
poke memory,wpeek(stackformt(0,threadidforrunthez80),12)-1,peek(stackformt(0,threadidforrunthez80),11)
wpoke stackformt(0,threadidforrunthez80),12,wpeek(stackformt(0,threadidforrunthez80),12)-2
wpoke stackformt(0,threadidforrunthez80),10,0x38
startaddr=0x38
}
if z80runmode(threadidforrunthez80)=2{
poke memory,wpeek(stackformt(0,threadidforrunthez80),12)-2,peek(stackformt(0,threadidforrunthez80),10)
poke memory,wpeek(stackformt(0,threadidforrunthez80),12)-1,peek(stackformt(0,threadidforrunthez80),11)
wpoke stackformt(0,threadidforrunthez80),12,wpeek(stackformt(0,threadidforrunthez80),12)-2
startaddr=wpeek(memory,(peek(stackformt(0,threadidforrunthez80),15)<<8)+(iomemoryidforz80<<1))
}
poke stackformt(1,threadidforrunthez80),15,iomemoryidforz80
}
return

#deffunc z80stackreset int threadidforrunthez80
memset stackformt(0,threadidforrunthez80),0,64,0
memset stackformt(1,threadidforrunthez80),0,64,0
return

#deffunc z80hltendset int threadidforrunthez80,int threadidforrunthez80ptrid
z80halt2endmode(threadidforrunthez80)=threadidforrunthez80ptrid
return

#defcfunc z80run_c var startaddr, var memory, int threadidforrunthez80
#deffunc z80run var startaddr, var memory, int threadidforrunthez80
memcpy stack(0),stackformt(0,threadidforrunthez80),64,0,0
memcpy stack(1),stackformt(1,threadidforrunthez80),64,0,0
wpoke stack(0),10,startaddr
//opcode=peek(memory,wpeek(stack(0),10))
//lpoke jumplabel,0,opcodeaddr(opcode)
wpoke stack(0),10,wpeek(stack(0),10)+1
if z80haltmodesw(threadidforrunthez80)=0{gosub opcodeaddr(peek(memory,startaddr))}//opcodeaddr(opcode)//jumplabel
lpoke startaddr,0,wpeek(stack(0),10)
memcpy stackformt(0,threadidforrunthez80),stack(0),64,0,0
memcpy stackformt(1,threadidforrunthez80),stack(1),64,0,0
return peek(stack(0),1)
opcodewaiti=opcodewaiti+1
if opcodewaiti=4001{opcodewaiti=0:await 1}
//loop
*null
return

*opcode_00
return
*opcode_01
wpoke stack(0),2,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_02
poke memory,wpeek(stack(0),2),peek(stack(0),0)//wpeek(memory,wpeek(stack(0),10))
//wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_03
wpoke stack(0),2,wpeek(stack(0),2)+1
return
*opcode_04
calculated=0
calculated=peek(stack(0),3)+1
//poke stack(0),1,(peek(stack(0),1) & 0x01)
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(0),3,calculated
return
*opcode_05
calculated=0
calculated=peek(stack(0),3)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(0),3,calculated
return
*opcode_06
poke stack(0),3,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_07
poke stack(0),0,(peek(stack(0),0) << 1) | (peek(stack(0),0) >> 7)
poke stack(0),1,(peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (peek(stack(0),0) & (0x20 | 0x08 | 0x01))
return
*opcode_08
A_bak1=peek(stack(0),0)
A_bak2=peek(stack(1),0)
F_bak1=peek(stack(0),1)
F_bak2=peek(stack(1),1)
poke stack(0),0,A_bak2
poke stack(1),0,A_bak1
poke stack(0),1,F_bak2
poke stack(1),1,F_bak1
return
*opcode_09
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=wpeek(stack(0),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_0a
poke stack(0),0,peek(memory,wpeek(stack(0),2))
return
*opcode_0b
wpoke stack(0),2,wpeek(stack(0),2)-1
return
*opcode_0c
calculated=0
calculated=peek(stack(0),2)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(0),2,calculated
return
*opcode_0d
calculated=0
calculated=peek(stack(0),2)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(0),2,calculated
return
*opcode_0e
poke stack(0),2,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_0f
poke stack(0),1,(peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (peek(stack(0),0) & 0x01)
poke stack(0),0,(peek(stack(0),0) >> 1) | (peek(stack(0),0) << 7)
poke stack(0),1,peek(stack(0),1) | (peek(stack(0),0) & (0x20 | 0x08))
return
*opcode_10
poke stack(0),3,peek(stack(0),3)-1
address=peek(memory,wpeek(stack(0),10))
if address>=128{address=-(256-address)}
if (peek(stack(0),3)) {wpoke stack(0),10,wpeek(stack(0),10)+address+1}else{wpoke stack(0),10,wpeek(stack(0),10)+1}
return
*opcode_11
wpoke stack(0),4,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_12
poke memory,wpeek(stack(0),4),peek(stack(0),0)
return
*opcode_13
wpoke stack(0),4,wpeek(stack(0),4)+1
return
*opcode_14
calculated=0
calculated=peek(stack(0),5)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(0),5,calculated
return
*opcode_15
calculated=0
calculated=peek(stack(0),5)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(0),5,calculated
return
*opcode_16
poke stack(0),5,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_17
rlac=1
rlares = (peek(stack(0),0) << 1) | (peek(stack(0),1) & 0x01)
if (peek(stack(0),0) & 0x80) = 0x01 {rlac = 0}
poke stack(0),1,(peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | rlac | (rlares & (0x20 | 0x08))
poke stack(0),0,rlares
return
*opcode_18
address=peek(memory,wpeek(stack(0),10))
if address>=128{address=-(256-address)}
wpoke stack(0),10,wpeek(stack(0),10)+address+1
return
*opcode_19
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=wpeek(stack(0),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_1a
poke stack(0),0,peek(memory,wpeek(stack(0),4))
return
*opcode_1b
wpoke stack(0),4,wpeek(stack(0),4)-1
return
*opcode_1c
calculated=0
calculated=peek(stack(0),4)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(0),4,calculated
return
*opcode_1d
calculated=0
calculated=peek(stack(0),4)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(0),4,calculated
return
*opcode_1e
poke stack(0),4,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_1f
rlac=1
rlares = (peek(stack(0),0) >> 1) | (peek(stack(0),1) << 7)
if (peek(stack(0),0) & 0x01) = 0x01 {rlac = 0}
poke stack(0),1,(peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | rlac | (rlares & (0x20 | 0x08))
poke stack(0),0,rlares
return
*opcode_20
address=peek(memory,wpeek(stack(0),10))
if address>=128{address=-(256-address)}
if (peek(stack(0),1) & 0x40) {wpoke stack(0),10,wpeek(stack(0),10)+1}else{wpoke stack(0),10,wpeek(stack(0),10)+address+1}
return
*opcode_21
wpoke stack(0),6,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_22
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(0),6)
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_23
wpoke stack(0),6,wpeek(stack(0),6)+1
return
*opcode_24
calculated=0
calculated=peek(stack(0),7)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(0),7,calculated
return
*opcode_25
calculated=0
calculated=peek(stack(0),7)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(0),7,calculated
return
*opcode_26
poke stack(0),7,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_27
	afordaa=peek(stack(0),0)
	if(peek(stack(0),1) & 0x02) { 
		if((peek(stack(0),1) & 0x10) | ((peek(stack(0),0) & 0xf) > 9)) {afordaa -= 6}
		if((peek(stack(0),1) & 0x01) | (peek(stack(0),0) > 0x99)) {afordaa -= 0x60}
	} else { 
		if((peek(stack(0),1) & 0x10) | ((peek(stack(0),0) & 0xf) > 9)) {afordaa += 6}
		if((peek(stack(0),1) & 0x01) | (peek(stack(0),0) > 0x99)) {afordaa += 0x60}
	} 
	poke stack(0),1,(peek(stack(0),1) & (0x01 | 0x02)) | (peek(stack(0),0) > 0x99) | ((peek(stack(0),0) ^ afordaa) & 0x10) | SZP(peek(afordaa,0))
return
*opcode_28
address=peek(memory,wpeek(stack(0),10))
if address>=128{address=-(256-address)}
if (peek(stack(0),1) & 0x40) {wpoke stack(0),10,wpeek(stack(0),10)+address+1}else{wpoke stack(0),10,wpeek(stack(0),10)+1}
return
*opcode_29
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=wpeek(stack(0),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_2a
wpoke stack(0),6,wpeek(memory,wpeek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_2b
wpoke stack(0),6,wpeek(stack(0),6)-1
return
*opcode_2c
calculated=0
calculated=peek(stack(0),6)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(0),6,calculated
return
*opcode_2d
calculated=0
calculated=peek(stack(0),6)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(0),6,calculated
return
*opcode_2e
poke stack(0),6,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_2f
cpla=peek(stack(0),0)
cpla ^=0xFF
poke stack(0),1,(peek(stack(0),1) & (0x80 | 0x40 | 0x04 | 0x01)) | 0x10 | 0x02 | (peek(stack(0),0) & (0x20 | 0x08))
poke stack(0),0,cpla
return
*opcode_30
address=peek(memory,wpeek(stack(0),10))
if address>=128{address=-(256-address)}
if (peek(stack(0),1) & 0x01) {wpoke stack(0),10,wpeek(stack(0),10)+1}else{wpoke stack(0),10,wpeek(stack(0),10)+address+1}
return
*opcode_31
wpoke stack(0),12,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_32
poke memory,wpeek(memory,wpeek(stack(0),10)),peek(stack(0),0)
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_33
wpoke stack(0),12,wpeek(stack(0),12)+1
return
*opcode_34
calculated=0
calculated=peek(memory,wpeek(stack(0),6))+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke memory,wpeek(stack(0),6),calculated
return
*opcode_35
calculated=0
calculated=peek(memory,wpeek(stack(0),6))-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke memory,wpeek(stack(0),6),calculated
return
*opcode_36
poke memory,wpeek(stack(0),6),peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_37
poke stack(0),1,(peek(stack(0),1) & (0x80 | 0x40 | 0x20 | 0x08 | 0x04)) | 0x01 | (peek(stack(0),0) & (0x20 | 0x08))
return
*opcode_38
address=peek(memory,wpeek(stack(0),10))
if address>=128{address=-(256-address)}
if (peek(stack(0),1) & 0x01) {wpoke stack(0),10,wpeek(stack(0),10)+address+1}else{wpoke stack(0),10,wpeek(stack(0),10)+1}
return
*opcode_39
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=wpeek(stack(0),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_3a
poke stack(0),0,peek(memory,wpeek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_3b
wpoke stack(0),12,wpeek(stack(0),12)-1
return
*opcode_3c
calculated=0
calculated=peek(stack(0),0)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(0),0,calculated
return
*opcode_3d
calculated=0
calculated=peek(stack(0),0)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(0),0,calculated
return
*opcode_3e
poke stack(0),0,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_3f
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x20 | 0x08 | 0x04 | 0x01)) | ((peek(stack(0),1) & 0x01) << 4) | (peek(stack(0),0) & (0x20 | 0x08))) ^ 0x01
//wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_40
poke stack(0),3,peek(stack(0),3)
return
*opcode_41
poke stack(0),3,peek(stack(0),2)
return
*opcode_42
poke stack(0),3,peek(stack(0),5)
return
*opcode_43
poke stack(0),3,peek(stack(0),4)
return
*opcode_44
poke stack(0),3,peek(stack(0),7)
return
*opcode_45
poke stack(0),3,peek(stack(0),6)
return
*opcode_46
poke stack(0),3,peek(memory,wpeek(stack(0),6))
return
*opcode_47
poke stack(0),3,peek(stack(0),0)
return
*opcode_48
poke stack(0),2,peek(stack(0),3)
return
*opcode_49
poke stack(0),2,peek(stack(0),2)
return
*opcode_4a
poke stack(0),2,peek(stack(0),5)
return
*opcode_4b
poke stack(0),2,peek(stack(0),4)
return
*opcode_4c
poke stack(0),2,peek(stack(0),7)
return
*opcode_4d
poke stack(0),2,peek(stack(0),6)
return
*opcode_4e
poke stack(0),2,peek(memory,wpeek(stack(0),6))
return
*opcode_4f
poke stack(0),2,peek(stack(0),0)
return
*opcode_50
poke stack(0),5,peek(stack(0),3)
return
*opcode_51
poke stack(0),5,peek(stack(0),2)
return
*opcode_52
poke stack(0),5,peek(stack(0),5)
return
*opcode_53
poke stack(0),5,peek(stack(0),4)
return
*opcode_54
poke stack(0),5,peek(stack(0),7)
return
*opcode_55
poke stack(0),5,peek(stack(0),6)
return
*opcode_56
poke stack(0),5,peek(memory,wpeek(stack(0),6))
return
*opcode_57
poke stack(0),5,peek(stack(0),0)
return
*opcode_58
poke stack(0),4,peek(stack(0),3)
return
*opcode_59
poke stack(0),4,peek(stack(0),2)
return
*opcode_5a
poke stack(0),4,peek(stack(0),5)
return
*opcode_5b
poke stack(0),4,peek(stack(0),4)
return
*opcode_5c
poke stack(0),4,peek(stack(0),7)
return
*opcode_5d
poke stack(0),4,peek(stack(0),6)
return
*opcode_5e
poke stack(0),4,peek(memory,wpeek(stack(0),6))
return
*opcode_5f
poke stack(0),4,peek(stack(0),0)
return
*opcode_60
poke stack(0),7,peek(stack(0),3)
return
*opcode_61
poke stack(0),7,peek(stack(0),2)
return
*opcode_62
poke stack(0),7,peek(stack(0),5)
return
*opcode_63
poke stack(0),7,peek(stack(0),4)
return
*opcode_64
poke stack(0),7,peek(stack(0),7)
return
*opcode_65
poke stack(0),7,peek(stack(0),6)
return
*opcode_66
poke stack(0),7,peek(memory,wpeek(stack(0),6))
return
*opcode_67
poke stack(0),7,peek(stack(0),0)
return
*opcode_68
poke stack(0),6,peek(stack(0),3)
return
*opcode_69
poke stack(0),6,peek(stack(0),2)
return
*opcode_6a
poke stack(0),6,peek(stack(0),5)
return
*opcode_6b
poke stack(0),6,peek(stack(0),4)
return
*opcode_6c
poke stack(0),6,peek(stack(0),7)
return
*opcode_6d
poke stack(0),6,peek(stack(0),6)
return
*opcode_6e
poke stack(0),6,peek(memory,wpeek(stack(0),6))
return
*opcode_6f
poke stack(0),6,peek(stack(0),0)
return
*opcode_70
poke memory,wpeek(stack(0),6),peek(stack(0),3)
return
*opcode_71
poke memory,wpeek(stack(0),6),peek(stack(0),2)
return
*opcode_72
poke memory,wpeek(stack(0),6),peek(stack(0),5)
return
*opcode_73
poke memory,wpeek(stack(0),6),peek(stack(0),4)
return
*opcode_74
poke memory,wpeek(stack(0),6),peek(stack(0),7)
return
*opcode_75
poke memory,wpeek(stack(0),6),peek(stack(0),6)
return
*opcode_76
threadidforrunthez80_2=threadidforrunthez80
if z80halt2endmode=2{z80haltmodesw(threadidforrunthez80_2)=1}else{
if z80halt2endmode=1{z80stackreset threadidforrunthez80_2}else{end}}
return
*opcode_77
poke memory,wpeek(stack(0),6),peek(stack(0),0)
return
*opcode_78
poke stack(0),0,peek(stack(0),3)
return
*opcode_79
poke stack(0),0,peek(stack(0),2)
return
*opcode_7a
poke stack(0),0,peek(stack(0),5)
return
*opcode_7b
poke stack(0),0,peek(stack(0),4)
return
*opcode_7c
poke stack(0),0,peek(stack(0),7)
return
*opcode_7d
poke stack(0),0,peek(stack(0),6)
return
*opcode_7e
poke stack(0),0,peek(memory,wpeek(stack(0),6))
return
*opcode_7f
poke stack(0),0,peek(stack(0),0)
return
*opcode_80
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_81
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_82
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_83
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_84
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_85
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_86
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(memory,wpeek(stack(0),6))
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_87
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_88
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_89
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_8a
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_8b
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_8c
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_8d
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_8e
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(memory,wpeek(stack(0),6))+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_8f
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
return
*opcode_90
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_91
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_92
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_93
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_94
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_95
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_96
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(memory,wpeek(stack(0),6))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(memory,wpeek(stack(0),6)) ^ calculated ^ peek(memory,wpeek(stack(0),6))) & 0x10) | (((peek(memory,wpeek(stack(0),6))^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_97
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_98
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_99
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_9a
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_9b
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_9c
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_9d
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_9e
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(memory,wpeek(stack(0),6))-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(memory,wpeek(stack(0),6)) ^ calculated ^ peek(memory,wpeek(stack(0),6))) & 0x10) | (((peek(memory,wpeek(stack(0),6))^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_9f
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
return
*opcode_a0
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
return
*opcode_a1
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
return
*opcode_a2
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
return
*opcode_a3
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
return
*opcode_a4
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
return
*opcode_a5
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
return
*opcode_a6
//poke stack(0),1,peek(stack(0),1) ^ (0x01)
//poke stack(0),1,peek(stack(0),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(memory,wpeek(stack(0),6))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
return
*opcode_a7
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
return
*opcode_a8
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_a9
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_aa
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_ab
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_ac
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_ad
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_ae
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(memory,wpeek(stack(0),6))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_af
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b0
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b1
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b2
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b3
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b4
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b5
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b6
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(memory,wpeek(stack(0),6))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b7
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
return
*opcode_b8
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(0),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | ((((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
return
*opcode_b9
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(0),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | ((((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
return
*opcode_ba
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(0),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | ((((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
return
*opcode_bb
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(0),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | ((((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
return
*opcode_bc
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(0),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | ((((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
return
*opcode_bd
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(0),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | ((((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
return
*opcode_be
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(memory,wpeek(stack(0),6))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(0),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | ((((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
return
*opcode_bf
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(0),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(0),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | ((((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
return
*opcode_c0
if peek(stack(0),1) & (0x40){}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
}
return
*opcode_c1
wpoke stack(0),2,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
return
*opcode_c2
if peek(stack(0),1) & (0x40){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_c3
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
return
*opcode_c4
if peek(stack(0),1) & (0x40){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_c5
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),2)
return
*opcode_c6
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(memory,wpeek(stack(0),10))
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_c7
poke memory,wpeek(stack(0),12)-2,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-1,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0
return
*opcode_c8
if peek(stack(0),1) | (0x40){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
}
return
*opcode_c9
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
return
*opcode_ca
if peek(stack(0),1) & (0x40){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_cb
cbopcodecallid=peek(memory,wpeek(stack(0),10))
cbopcodecallidforbit=(cbopcodecallid-0x40)/8
opcodeforsubcall=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
switch opcodeforsubcall
case 0x00
changetoforrlc=3
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x01
changetoforrlc=2
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x02
changetoforrlc=5
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x03
changetoforrlc=4
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x04
changetoforrlc=7
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x05
changetoforrlc=6
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x06
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(0),6))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(0),6),resforrlc
swbreak
case 0x07
changetoforrlc=0
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x08
changetoforrlc=3
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x09
changetoforrlc=2
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0A
changetoforrlc=5
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0B
changetoforrlc=4
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0C
changetoforrlc=7
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0D
changetoforrlc=6
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0E
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(0),6))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(0),6),resforrlc
swbreak
case 0x0F
changetoforrlc=0
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x10
changetoforrlc=3
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x11
changetoforrlc=2
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x12
changetoforrlc=5
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x13
changetoforrlc=4
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x14
changetoforrlc=7
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x15
changetoforrlc=6
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x16
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(0),6))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(0),6),resforrlc
swbreak
case 0x17
changetoforrlc=0
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x18
changetoforrlc=3
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x19
changetoforrlc=2
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1A
changetoforrlc=5
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1B
changetoforrlc=4
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1C
changetoforrlc=7
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1D
changetoforrlc=6
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1E
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(0),6))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(0),6),resforrlc
swbreak
case 0x1F
changetoforrlc=0
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x20
regidforsla=3
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x21
regidforsla=2
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x22
regidforsla=5
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x23
regidforsla=4
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x24
regidforsla=7
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x25
regidforsla=6
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x26
slares=0
slares=peek(memory,wpeek(stack(0),6))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(0),6),slares
swbreak
case 0x27
regidforsla=0
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x28
regidforsla=3
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x29
regidforsla=2
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2A
regidforsla=5
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2B
regidforsla=4
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2C
regidforsla=7
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2D
regidforsla=6
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2E
slares=0
slares=peek(memory,wpeek(stack(0),6))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(0),6),slares
swbreak
case 0x2F
regidforsla=0
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x30
regidforsla=3
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x31
regidforsla=2
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x32
regidforsla=5
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x33
regidforsla=4
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x34
regidforsla=7
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x35
regidforsla=6
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x36
slares=0
slares=peek(memory,wpeek(stack(0),6))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(0),6),slares
swbreak
case 0x37
regidforsla=0
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x38
regidforsla=3
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x39
regidforsla=2
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3A
regidforsla=5
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3B
regidforsla=4
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3C
regidforsla=7
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3D
regidforsla=6
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3E
slares=0
slares=peek(memory,wpeek(stack(0),6))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(0),6),slares
swbreak
case 0x3F
regidforsla=0
slares=0
slares=peek(stack(0),regidforsla)
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
swend
if cbopcodecallid>=0x40 and cbopcodecallid<=127{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
switch regfromopcodeforbit
case 0
regforbit=3
swbreak
case 1
regforbit=2
swbreak
case 2
regforbit=5
swbreak
case 3
regforbit=4
swbreak
case 4
regforbit=7
swbreak
case 5
regforbit=6
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke stack(0),1,(peek(stack(0),1) & 0x01) | 0x10 | ((peek(memory,wpeek(stack(0),10)) & (1 << bit)) & (0x20 | 0x08)) | (peek(memory,wpeek(stack(0),10)) & (0x20 | 0x08))
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),1,(peek(stack(0),1) & 0x01) | 0x10 | ((peek(stack(0),regforbit) & (1 << bit)) & (0x20 | 0x08)) | (peek(stack(0),regforbit) & (0x20 | 0x08))
	}
}
if cbopcodecallid>=128 and cbopcodecallid<=0xBF{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
switch regfromopcodeforbit
case 0
regforbit=3
swbreak
case 1
regforbit=2
swbreak
case 2
regforbit=5
swbreak
case 3
regforbit=4
swbreak
case 4
regforbit=7
swbreak
case 5
regforbit=6
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke memory,wpeek(stack(0),10),peek(memory,wpeek(stack(0),10)) & (1<<regfromopcodeforbit)
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),regforbit,peek(stack(0),regforbit) & (1<<regfromopcodeforbit)
	}
}
if cbopcodecallid>=0xC0 and cbopcodecallid<=0xFF{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
switch opcodeidforddopcodeaddcall
case 0
regforbit=3
swbreak
case 1
regforbit=2
swbreak
case 2
regforbit=5
swbreak
case 3
regforbit=4
swbreak
case 4
regforbit=7
swbreak
case 5
regforbit=6
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke memory,wpeek(stack(0),10),peek(memory,wpeek(stack(0),10)) | (1<<regfromopcodeforbit)
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),regforbit,peek(stack(0),regforbit) | (1<<regfromopcodeforbit)
	}
}
return
*opcode_cc
if peek(stack(0),1) & (0x40){
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_cd
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
return
*opcode_ce
if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(memory,wpeek(stack(0),10))+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(0),10))) & 0x10) | (((peek(memory,wpeek(stack(0),10)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_cf
poke memory,wpeek(stack(0),12)-2,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-1,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,8
return
*opcode_d0
if peek(stack(0),1) & (0x01){}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
}
return
*opcode_d1
wpoke stack(0),4,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
return
*opcode_d2
if peek(stack(0),1) & (0x01){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_d3
poke iomemory,peek(memory,wpeek(stack(0),10)),peek(stack(0),0)
iomemorycalled=1
iomemorycalledid=peek(memory,wpeek(stack(0),10))
iomemorycalledid16=0
poke iomemorycalledid16,1,peek(memory,wpeek(stack(0),10))
poke iomemorycalledid16,0,peek(stack(0),0)
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_d4
if peek(stack(0),1) & (0x01){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_d5
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),4)
return
*opcode_d6
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(memory,wpeek(stack(0),10))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(0),10))) & 0x10) | (((peek(memory,wpeek(stack(0),10)) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_d7
poke memory,wpeek(stack(0),12)-2,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-1,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x10
return
*opcode_d8
if peek(stack(0),1) & (0x01){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
}
return
*opcode_d9
BC_bak1=0:BC_bak2=0:DE_bak1=0:DE_bak2=0:HL_bak1=0:HL_bak2=0
BC_bak1=wpeek(stack(0),2)
BC_bak2=wpeek(stack(1),2)
DE_bak1=wpeek(stack(0),4)
DE_bak2=wpeek(stack(1),4)
HL_bak1=wpeek(stack(0),6)
HL_bak2=wpeek(stack(1),6)
wpoke stack(0),2,BC_bak2
wpoke stack(1),2,BC_bak1
wpoke stack(0),4,DE_bak2
wpoke stack(1),4,DE_bak1
wpoke stack(0),6,HL_bak2
wpoke stack(1),6,HL_bak1
return
*opcode_da
if peek(stack(0),1) & (0x01){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_db
//await 100
poke stack(0),0,peek(iomemory,peek(memory,wpeek(stack(0),10)))
iomemorycalled=2
iomemorycalledid=peek(memory,wpeek(stack(0),10))
iomemorycalledid16=0
poke iomemorycalledid16,1,peek(memory,wpeek(stack(0),10))
poke iomemorycalledid16,0,peek(stack(0),0)
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_dc
if peek(stack(0),1) & (0x01){
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_dd
opcodeidforddopcode=peek(memory,wpeek(stack(0),10))
opcodeforsubcall=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
switch opcodeforsubcall
case 0x09
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=10
addfromstack=2
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(1),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(1),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak

case 0x19
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=10
addfromstack=4
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(1),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(1),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak

case 0x21
wpoke stack(1),10,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x22
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(1),10)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x23
wpoke stack(1),10,wpeek(stack(1),10)+1
swbreak
case 0x24
calculated=0
calculated=peek(stack(1),11)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(1),11,calculated
swbreak
case 0x25
calculated=0
calculated=peek(stack(1),11)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(1),11,calculated
swbreak
case 0x26
poke stack(1),11,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x29
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=10
addfromstack=11
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(1),addfromstack)
if peek(stack(1),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(1),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(1),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x2A
wpoke stack(1),10,wpeek(memory,wpeek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x2B
wpoke stack(1),10,wpeek(stack(1),10)-1
swbreak
case 0x2C
calculated=0
calculated=peek(stack(1),10)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(1),10,calculated
swbreak
case 0x2D
calculated=0
calculated=peek(stack(1),10)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(1),10,calculated
swbreak
case 0x2E
poke stack(1),10,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x34
calculated=0
calculated=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),calculated
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x35
calculated=0
calculated=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))-1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),calculated
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x36
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x39
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=10
addfromstack=12
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(1),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(1),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak

case 0x44
case 0x45
case 0x46
case 0x4c
case 0x4d
case 0x4e
case 0x54
case 0x55
case 0x56
case 0x5c
case 0x5d
case 0x5e
swbreak

case 0x60
poke stack(1),11,peek(stack(0),3)
swbreak
case 0x61
poke stack(1),11,peek(stack(0),2)
swbreak
case 0x62
poke stack(1),11,peek(stack(0),5)
swbreak
case 0x63
poke stack(1),11,peek(stack(0),4)
swbreak
case 0x64
poke stack(1),11,peek(stack(1),11)
swbreak
case 0x65
poke stack(1),11,peek(stack(1),10)
swbreak
case 0x66
poke stack(0),6,peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x67
poke stack(1),11,peek(stack(0),0)
swbreak
case 0x68
poke stack(1),10,peek(stack(0),3)
swbreak
case 0x69
poke stack(1),10,peek(stack(0),2)
swbreak
case 0x6A
poke stack(1),10,peek(stack(0),5)
swbreak
case 0x6B
poke stack(1),10,peek(stack(0),4)
swbreak
case 0x6C
poke stack(1),10,peek(stack(1),11)
swbreak
case 0x6D
poke stack(1),10,peek(stack(1),10)
swbreak
case 0x6E
poke stack(0),6,peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x6F
poke stack(1),10,peek(stack(0),0)
swbreak
case 0x70
poke memory,(wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))),peek(stack(0),3)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x71
poke memory,(wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))),peek(stack(0),2)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x72
poke memory,(wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))),peek(stack(0),5)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x73
poke memory,(wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))),peek(stack(0),4)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x74
poke memory,(wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))),peek(stack(0),7)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x75
poke memory,(wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))),peek(stack(0),6)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x77
poke memory,(wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))),peek(stack(0),0)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x7C
poke stack(0),0,peek(stack(1),11)
swbreak
case 0x7D
poke stack(0),0,peek(stack(1),10)
swbreak
case 0x7E
poke stack(0),0,peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x84
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(1),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x85
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(1),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x86
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x8C
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(1),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x8D
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(1),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x8E
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x94
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | (((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
swbreak
case 0x95
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | (((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
swbreak
case 0x96
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x9C
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | (((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
swbreak
case 0x9D
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | (((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
swbreak
case 0x9E
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0xA4
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(memory,wpeek(stack(1),addfromstack))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
swbreak
case 0xA5
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(memory,wpeek(stack(1),addfromstack))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
swbreak
case 0xA6
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0xAC
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak
case 0xAD
poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak
case 0xAE
poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak

case 0xB4
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak
case 0xB5
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak
case 0xB6
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak

case 0xBC
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=11
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(1),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | ((((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
swbreak
case 0xBD
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(1),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | ((((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
swbreak
case 0xBE
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=10
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(1),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | ((((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
swbreak

case 0xCB
cbopcodecallid=peek(memory,wpeek(stack(0),10)+1)
cbopcodecallidforbit=(cbopcodecallid-0x40)/8
opcodeforsubcall=peek(memory,wpeek(stack(0),10)+1)
switch opcodeforsubcall
case 0x00
changetoforrlc=3
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x01
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x02
changetoforrlc=5
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x03
changetoforrlc=4
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x04
changetoforrlc=7
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x05
changetoforrlc=6
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x06
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),resforrlc
swbreak
case 0x07
changetoforrlc=0
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x08
changetoforrlc=3
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x09
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0A
changetoforrlc=5
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0B
changetoforrlc=4
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0C
changetoforrlc=7
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0D
changetoforrlc=6
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0E
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),resforrlc
swbreak
case 0x0F
changetoforrlc=0
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x10
changetoforrlc=3
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x11
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x12
changetoforrlc=5
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x13
changetoforrlc=4
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x14
changetoforrlc=7
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x15
changetoforrlc=6
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x16
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),resforrlc
swbreak
case 0x17
changetoforrlc=0
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x18
changetoforrlc=3
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x19
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1A
changetoforrlc=5
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1B
changetoforrlc=4
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1C
changetoforrlc=7
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1D
changetoforrlc=6
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1E
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),resforrlc
swbreak
case 0x1F
changetoforrlc=0
resforrlc=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x20
regidforsla=3
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x21
regidforsla=2
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x22
regidforsla=5
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x23
regidforsla=4
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x24
regidforsla=7
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x25
regidforsla=6
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x26
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),slares
swbreak
case 0x27
regidforsla=0
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x28
regidforsla=3
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x29
regidforsla=2
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2A
regidforsla=5
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2B
regidforsla=4
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2C
regidforsla=7
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2D
regidforsla=6
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2E
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),slares
swbreak
case 0x2F
regidforsla=0
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x30
regidforsla=3
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x31
regidforsla=2
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x32
regidforsla=5
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x33
regidforsla=4
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x34
regidforsla=7
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x35
regidforsla=6
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x36
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),slares
swbreak
case 0x37
regidforsla=0
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x38
regidforsla=3
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x39
regidforsla=2
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3A
regidforsla=5
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3B
regidforsla=4
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3C
regidforsla=7
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3D
regidforsla=6
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3E
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)),slares
swbreak
case 0x3F
regidforsla=0
slares=0
slares=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
swend
regforbit=peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10)))
if cbopcodecallid>=0x40 and cbopcodecallid<=127{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
regforbitforssx=0
switch regfromopcodeforbit
case 6
regforbit=-1
swbreak
case 0
regforbitforssx=3
swbreak
case 1
regforbitforssx=2
swbreak
case 2
regforbitforssx=5
swbreak
case 3
regforbitforssx=4
swbreak
case 4
regforbitforssx=7
swbreak
case 5
regforbitforssx=6
swbreak
case 7
regforbitforssx=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke stack(0),1,(peek(stack(0),1) & 0x01) | 0x10 | ((peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))) & (1 << bit)) & (0x20 | 0x08)) | (peek(memory,wpeek(stack(0),10)) & (0x20 | 0x08))
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),1,(peek(stack(0),1) & 0x01) | 0x10 | ((peek(memory,regforbit) & (1 << bit)) & (0x20 | 0x08)) | (peek(stack(0),regforbitforssx) & (0x20 | 0x08))
	}
}
if cbopcodecallid>=128 and cbopcodecallid<=0xBF{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
regforbitforssx=0
switch regfromopcodeforbit
case 6
regforbit=-1
swbreak
case 0
regforbitforssx=3
swbreak
case 1
regforbitforssx=2
swbreak
case 2
regforbitforssx=5
swbreak
case 3
regforbitforssx=4
swbreak
case 4
regforbitforssx=7
swbreak
case 5
regforbitforssx=6
swbreak
case 7
regforbitforssx=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke memory,wpeek(stack(0),10),peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))) & (1<<regfromopcodeforbit)
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),regforbitforssx,peek(memory,regforbit) & (1<<regfromopcodeforbit)
	}
}
if cbopcodecallid>=0xC0 and cbopcodecallid<=0xFF{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
regforbitforssx=0
switch regfromopcodeforbit
case 6
regforbit=-1
swbreak
case 0
regforbitforssx=3
swbreak
case 1
regforbitforssx=2
swbreak
case 2
regforbitforssx=5
swbreak
case 3
regforbitforssx=4
swbreak
case 4
regforbitforssx=7
swbreak
case 5
regforbitforssx=6
swbreak
case 7
regforbitforssx=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke memory,wpeek(stack(0),10),peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))) | (1<<regfromopcodeforbit)
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),regforbitforssx,peek(memory,regforbit) | (1<<regfromopcodeforbit)
	}
}
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak

case 0xE1
wpoke stack(1),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
swbreak

case 0xE3
SP_bak=0
SP_bak=wpeek(stack(0),12)
wpoke stack(0),12,wpeek(stack(1),10)
wpoke stack(1),10,SP_bak
swbreak

case 0xE5
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(1),10)
swbreak

case 0xE9
wpoke stack(0),10,wpeek(stack(1),10)
swbreak

case 0xF9
wpoke stack(0),12,wpeek(stack(1),10)
swbreak

case 0xFF
z80class@=0
swbreak
default
opcodeidforddopcodeaddcall=((opcodeidforddopcode-0x40)/6)
opcodeidforddopcodeaddcall2=((opcodeidforddopcode-0x40)-(opcodeidforddopcodeaddcall*6))-4
opcode=peek(memory,wpeek(stack(0),10))
lpoke jumplabel,0,lpeek(opcodeaddr(opcode),0)
wpoke stack(0),10,wpeek(stack(0),10)+1
gosub jumplabel
swbreak
swend
opcodeidforddopcodeaddcall=((opcodeidforddopcode-0x40)/6)
opcodeidforddopcodeaddcall2=((opcodeidforddopcode-0x40)-(opcodeidforddopcodeaddcall*6))-4
if opcodeidforddopcode>=0x44 and opcodeidforddopcode<=0x5E{
switch opcodeidforddopcodeaddcall
case 0
regforbit=3
swbreak
case 1
regforbit=2
swbreak
case 2
regforbit=5
swbreak
case 3
regforbit=4
swbreak
case 4
regforbit=7
swbreak
case 5
regforbit=6
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
if opcodeidforddopcodeaddcall2=0 {if regforbit=-1{}else{poke stack(0),regforbit,peek(stack(1),10)}}
if opcodeidforddopcodeaddcall2=1 {if regforbit=-1{}else{poke stack(0),regforbit,peek(stack(1),11)}}
if opcodeidforddopcodeaddcall2=2 {if regforbit=-1{}else{poke stack(0),regforbit,peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))):wpoke stack(0),10,wpeek(stack(0),10)+1}}
}
return
*opcode_de
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(memory,wpeek(stack(0),10))-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(0),10))) & 0x10) | (((peek(memory,wpeek(stack(0),10)) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_df
poke memory,wpeek(stack(0),12)-2,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-1,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x18
return
*opcode_e0
if (peek(stack(0),1) & (0x04)){}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
}
return
*opcode_e1
wpoke stack(0),6,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
return
*opcode_e2
if (peek(stack(0),1) & (0x04)){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_e3
bak_sphl1=wpeek(stack(0),6)
bak_sphl2=wpeek(stack(0),12)
wpoke stack(0),12,bak_sphl1
wpoke stack(0),6,bak_sphl2
return
*opcode_e4
if (peek(stack(0),1) & (0x04)){}else{
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_e5
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),6)
return
*opcode_e6
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(memory,wpeek(stack(0),10))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
wpoke stack(0),10,wpeek(stack(0),10)+1
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16
return
*opcode_e7
poke memory,wpeek(stack(0),12)-2,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-1,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x20
return
*opcode_e8
if (peek(stack(0),1) & (0x04)){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
}
return
*opcode_e9
wpoke stack(0),10,wpeek(stack(0),6)
return
*opcode_ea
if (peek(stack(0),1) & (0x04)){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_eb
bak_sphl1=wpeek(stack(0),6)
bak_sphl2=wpeek(stack(0),4)
wpoke stack(0),4,bak_sphl1
wpoke stack(0),6,bak_sphl2
return
*opcode_ec
if (peek(stack(0),1) & (0x04)){
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return

*opcode_ed
opcodeforsubcall=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
switch opcodeforsubcall
case 0x40
//await 100
/*if peek(iomemory,peek(stack(0),2))=0{poke stack(0),1,peek(stack(0),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),2))>=128{poke stack(0),1,peek(stack(0),1) ^ (0x80)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(iomemory,peek(stack(0),2)))
poke stack(0),3,peek(iomemory,peek(stack(0),2))
iomemorycalled=2
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x41
poke iomemory,peek(stack(0),2),peek(stack(0),3)
iomemorycalled=1
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x42
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=wpeek(stack(0),addtostack)-wpeek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
calculatedcontext=0:if (calculated & 0xffff) {calculatedcontext=0}else{ calculatedcontext= 0x40}:poke stack(0),1,((((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | 0x02 | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x80 | 0x20 | 0x08)) | (calculatedcontext) | (((wpeek(stack(0),addfromstack) ^ wpeek(stack(0),addtostack)) & (wpeek(stack(0),addtostack) ^ calculated) &0x8000) >> 13))
//poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVCcall*/
swbreak
case 0x43
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(0),2)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x44
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=0-peek(stack(0),addtostack)//-peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}
swbreak
case 0x45
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
poke stack(1),14,peek(stack(1),15)
swbreak
case 0x46
z80runmode(threadidforrunthez80)=0
swbreak
case 0x47
poke stack(0),15,peek(stack(0),0)
swbreak
case 0x48
//await 100
/*if peek(iomemory,peek(stack(0),2))=0{poke stack(0),1,peek(stack(0),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),2))>=128{poke stack(0),1,peek(stack(0),1) ^ (0x80)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(iomemory,peek(stack(0),2)))
poke stack(0),2,peek(iomemory,peek(stack(0),2))
iomemorycalled=2
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x49
poke iomemory,peek(stack(0),2),peek(stack(0),2)
iomemorycalled=1
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x4A
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
calculatedcontext=0:if (calculated & 0xffff) {calculatedcontext=0}else{ calculatedcontext= 0x40}:poke stack(0),1,((((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x80 | 0x20 | 0x08)) | (calculatedcontext) | (((wpeek(stack(0),addfromstack) ^ wpeek(stack(0),addtostack) ^ 0x8000) & (wpeek(stack(0),addfromstack) ^ calculated) &0x8000) >> 13))
//poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVCcall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2*/
swbreak
case 0x4B
wpoke stack(0),2,wpeek(memory,wpeek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x4C
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=0-peek(stack(0),addtostack)//-peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}
swbreak
case 0x4D
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
poke stack(1),14,peek(stack(1),15)
swbreak
case 0x4E
if z80runmode(threadidforrunthez80)=1{z80runmode(threadidforrunthez80)=0}else{if z80runmode(threadidforrunthez80)=0{z80runmode(threadidforrunthez80)=1}}
swbreak
case 0x4F
poke stack(0),14,peek(stack(0),0)
r2forcalc(threadidforrunthez80)=peek(stack(0),0) & 0x80
swbreak
case 0x50
//await 100
/*if peek(iomemory,peek(stack(0),2))=0{poke stack(0),1,peek(stack(0),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),2))>=128{poke stack(0),1,peek(stack(0),1) ^ (0x80)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(iomemory,peek(stack(0),2)))
poke stack(0),5,peek(iomemory,peek(stack(0),2))
iomemorycalled=2
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x51
poke iomemory,peek(stack(0),2),peek(stack(0),5)
iomemorycalled=1
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x52
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=wpeek(stack(0),addtostack)-wpeek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
calculatedcontext=0:if (calculated & 0xffff) {calculatedcontext=0}else{ calculatedcontext= 0x40}:poke stack(0),1,((((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | 0x02 | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x80 | 0x20 | 0x08)) | (calculatedcontext) | (((wpeek(stack(0),addfromstack) ^ wpeek(stack(0),addtostack)) & (wpeek(stack(0),addtostack) ^ calculated) &0x8000) >> 13))
//poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVCcall*/
swbreak
case 0x53
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(0),4)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x54
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=0-peek(stack(0),addtostack)//-peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}
swbreak
case 0x55
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
poke stack(1),14,peek(stack(1),15)
swbreak
case 0x56
z80runmode(threadidforrunthez80)=1
swbreak
case 0x57
poke stack(0),0,peek(stack(0),15)
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZ(peek(stack(0),0)) | (peek(stack(1),15) << 2)
swbreak
case 0x58
//await 100
/*if peek(iomemory,peek(stack(0),2))=0{poke stack(0),1,peek(stack(0),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),2))>=128{poke stack(0),1,peek(stack(0),1) ^ (0x80)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(iomemory,peek(stack(0),2)))
poke stack(0),4,peek(iomemory,peek(stack(0),2))
iomemorycalled=2
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x59
poke iomemory,peek(stack(0),2),peek(stack(0),4)
iomemorycalled=1
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x5A
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=4
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
calculatedcontext=0:if (calculated & 0xffff) {calculatedcontext=0}else{ calculatedcontext= 0x40}:poke stack(0),1,((((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x80 | 0x20 | 0x08)) | (calculatedcontext) | (((wpeek(stack(0),addfromstack) ^ wpeek(stack(0),addtostack) ^ 0x8000) & (wpeek(stack(0),addfromstack) ^ calculated) &0x8000) >> 13))
//poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVCcall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2*/
swbreak
case 0x5B
wpoke stack(0),4,wpeek(memory,wpeek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x5C
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=0-peek(stack(0),addtostack)//-peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}
swbreak
case 0x5D
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
poke stack(1),14,peek(stack(1),15)
swbreak
case 0x5E
z80runmode(threadidforrunthez80)=2
swbreak
case 0x5F
poke stack(0),0,(peek(stack(0),14) & 0x7F) | r2forcalc(threadidforrunthez80)
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZ(peek(stack(0),0)) | (peek(stack(1),15) << 2)
swbreak
case 0x60
//await 100
/*if peek(iomemory,peek(stack(0),2))=0{poke stack(0),1,peek(stack(0),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),2))>=128{poke stack(0),1,peek(stack(0),1) ^ (0x80)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(iomemory,peek(stack(0),2)))
poke stack(0),7,peek(iomemory,peek(stack(0),2))
iomemorycalled=2
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x61
poke iomemory,peek(stack(0),2),peek(stack(0),7)
iomemorycalled=1
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x62
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=wpeek(stack(0),addtostack)-wpeek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
calculatedcontext=0:if (calculated & 0xffff) {calculatedcontext=0}else{ calculatedcontext= 0x40}:poke stack(0),1,((((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | 0x02 | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x80 | 0x20 | 0x08)) | (calculatedcontext) | (((wpeek(stack(0),addfromstack) ^ wpeek(stack(0),addtostack)) & (wpeek(stack(0),addtostack) ^ calculated) &0x8000) >> 13))
//poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVCcall*/
swbreak
case 0x63
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(0),6)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x64
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=0-peek(stack(0),addtostack)//-peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}
swbreak
case 0x65
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
poke stack(1),14,peek(stack(1),15)
swbreak
case 0x66
z80runmode(threadidforrunthez80)=0
swbreak
case 0x67
rrdn=peek(memory,wpeek(stack(0),6))
poke memory,wpeek(stack(0),6),(rrdn >> 4) | (peek(stack(0),0) << 4)
poke stack(0),0,(peek(stack(0),0) & 0xf0) | (rrdn & 0x0f)
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(stack(0),0))
swbreak
case 0x68
//await 100
/*if peek(iomemory,peek(stack(0),2))=0{poke stack(0),1,peek(stack(0),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),2))>=128{poke stack(0),1,peek(stack(0),1) ^ (0x80)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(iomemory,peek(stack(0),2)))
poke stack(0),6,peek(iomemory,peek(stack(0),2))
iomemorycalled=2
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x69
poke iomemory,peek(stack(0),2),peek(stack(0),6)
iomemorycalled=1
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x6A
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=6
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
calculatedcontext=0:if (calculated & 0xffff) {calculatedcontext=0}else{ calculatedcontext= 0x40}:poke stack(0),1,((((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x80 | 0x20 | 0x08)) | (calculatedcontext) | (((wpeek(stack(0),addfromstack) ^ wpeek(stack(0),addtostack) ^ 0x8000) & (wpeek(stack(0),addfromstack) ^ calculated) &0x8000) >> 13))
//poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVCcall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2*/
swbreak
case 0x6B
wpoke stack(0),6,wpeek(memory,wpeek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x6C
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=0-peek(stack(0),addtostack)//-peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}
swbreak
case 0x6D
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
poke stack(1),14,peek(stack(1),15)
swbreak
case 0x6E
if z80runmode(threadidforrunthez80)=1{z80runmode(threadidforrunthez80)=0}else{if z80runmode(threadidforrunthez80)=0{z80runmode(threadidforrunthez80)=1}}
swbreak
case 0x6F
rrdn=peek(memory,wpeek(stack(0),6))
poke memory,wpeek(stack(0),6),(rrdn << 4) | (peek(stack(0),0) & 0x0f)
poke stack(0),0,(peek(stack(0),0) & 0xf0) | (rrdn >> 4)
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(stack(0),0))
swbreak
case 0x70
//await 100
/*if peek(iomemory,peek(stack(0),2))=0{poke stack(0),1,peek(stack(0),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),2))>=128{poke stack(0),1,peek(stack(0),1) ^ (0x80)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(iomemory,peek(stack(0),2)))
poke stack(0),1,peek(iomemory,peek(stack(0),2))
iomemorycalled=2
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x71
poke iomemory,peek(stack(0),2),0
iomemorycalled=1
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x72
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=wpeek(stack(0),addtostack)-wpeek(stack(0),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
calculatedcontext=0:if (calculated & 0xffff) {calculatedcontext=0}else{ calculatedcontext= 0x40}:poke stack(0),1,((((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | 0x02 | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x80 | 0x20 | 0x08)) | (calculatedcontext) | (((wpeek(stack(0),addfromstack) ^ wpeek(stack(0),addtostack)) & (wpeek(stack(0),addtostack) ^ calculated) &0x8000) >> 13))
//poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVCcall*/
swbreak
case 0x73
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(0),12)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x74
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=0-peek(stack(0),addtostack)//-peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}
swbreak
case 0x75
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
poke stack(1),14,peek(stack(1),15)
swbreak
case 0x76
z80runmode(threadidforrunthez80)=1
swbreak

case 0x78
//await 100
/*if peek(iomemory,peek(stack(0),2))=0{poke stack(0),1,peek(stack(0),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),2))>=128{poke stack(0),1,peek(stack(0),1) ^ (0x80)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZP(peek(iomemory,peek(stack(0),2)))
poke stack(0),0,peek(iomemory,peek(stack(0),2))
iomemorycalled=2
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x79
poke iomemory,peek(stack(0),2),peek(stack(0),0)
iomemorycalled=1
iomemorycalledid=peek(stack(0),2)
iomemorycalledid16=wpeek(stack(0),2)
swbreak
case 0x7A
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(0),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
calculatedcontext=0:if (calculated & 0xffff) {calculatedcontext=0}else{ calculatedcontext= 0x40}:poke stack(0),1,((((wpeek(stack(0),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x80 | 0x20 | 0x08)) | (calculatedcontext) | (((wpeek(stack(0),addfromstack) ^ wpeek(stack(0),addtostack) ^ 0x8000) & (wpeek(stack(0),addfromstack) ^ calculated) &0x8000) >> 13))
//poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(0),addfromstack)) & 0x10) | (((peek(stack(0),addfromstack) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(stack(0),addfromstack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVCcall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2*/
swbreak
case 0x7B
wpoke stack(0),12,wpeek(memory,wpeek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x7C
if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=0-peek(stack(0),addtostack)//-peek(stack(0),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}
swbreak
case 0x7D
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
poke stack(1),14,peek(stack(1),15)
swbreak
case 0x7E
z80runmode(threadidforrunthez80)=2
swbreak

case 0xA0
memcpy memory,memory,wpeek(stack(0),2),wpeek(stack(0),4),wpeek(stack(0),6)
wpoke stack(0),4,wpeek(stack(0),4)+1
wpoke stack(0),6,wpeek(stack(0),6)+1
wpoke stack(0),2,wpeek(stack(0),2)-1
//wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0xA1
resforcpiis0=0
valforcpi=peek(memory,wpeek(stack(0),6))
resforcpi=wpeek(stack(0),0)-valforcpi
if resforcpi=0{resforcpiis0=1}
wpoke stack(0),2,wpeek(stack(0),2)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
poke stack(0),1,(peek(stack(0),1) & 0x01) | (SZ(peek(resforcpi,0)) & (0x20 | 0x08)) | ((peek(stack(0),0) ^ valforcpi ^ resforcpi) & 0x10) | 0x02
if (peek(stack(0),1) & 0x10) {resforcpi -= 1}
	if(resforcpi & 0x02) {poke stack(0),1,peek(stack(0),1) | 0x20}
	if(resforcpi & 0x08) {poke stack(0),1,peek(stack(0),1) | 0x08}
swbreak
case 0xA2
//await 100
poke memory,wpeek(stack(0),6),peek(iomemory,peek(stack(0),4))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
iomemorycalled=2
iomemorycalledid=peek(stack(0),4)
iomemorycalledid16=0
peek iomemorycalledid16,0,wpeek(stack(0),0)
peek iomemorycalledid16,1,iomemorycalledid
swbreak
case 0xA3
poke iomemory,peek(stack(0),4),peek(memory,wpeek(stack(0),6))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
iomemorycalled=1
iomemorycalledid=peek(stack(0),4)
iomemorycalledid16=0
peek iomemorycalledid16,0,wpeek(stack(0),0)
peek iomemorycalledid16,1,iomemorycalledid
swbreak

case 0xA8
memcpy memory,memory,wpeek(stack(0),2),wpeek(stack(0),4),wpeek(stack(0),6)
wpoke stack(0),4,wpeek(stack(0),4)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
wpoke stack(0),2,wpeek(stack(0),2)-1
//wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0xA9
resforcpiis0=0
valforcpi=peek(memory,wpeek(stack(0),6))
resforcpi=wpeek(stack(0),0)-valforcpi
if resforcpi=0{resforcpiis0=1}
wpoke stack(0),2,wpeek(stack(0),2)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
poke stack(0),1,(peek(stack(0),1) & 0x01) | (SZ(peek(resforcpi,0)) & (0x20 | 0x08)) | ((peek(stack(0),0) ^ valforcpi ^ resforcpi) & 0x10) | 0x02
if (peek(stack(0),1) & 0x10) {resforcpi -= 1}
	if(resforcpi & 0x02) {poke stack(0),1,peek(stack(0),1) | 0x20}
	if(resforcpi & 0x08) {poke stack(0),1,peek(stack(0),1) | 0x08}
swbreak
case 0xAA
//await 100
poke memory,wpeek(stack(0),6),peek(iomemory,peek(stack(0),4))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
iomemorycalled=2
iomemorycalledid=peek(stack(0),4)
iomemorycalledid16=0
peek iomemorycalledid16,0,wpeek(stack(0),0)
peek iomemorycalledid16,1,iomemorycalledid
swbreak
case 0xAB
poke iomemory,peek(stack(0),4),peek(memory,wpeek(stack(0),6))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
iomemorycalled=1
iomemorycalledid=peek(stack(0),4)
iomemorycalledid16=0
peek iomemorycalledid16,0,wpeek(stack(0),0)
peek iomemorycalledid16,1,iomemorycalledid
swbreak

case 0xB0
if wpeek(stack(0),4)+wpeek(stack(0),2)>=65536{
copyfromaddr=0
copytoaddr=0
repeat wpeek(stack(0),2)
wpoke copyfromaddr,0,wpeek(stack(0),6)+cnt
wpoke copytoaddr,0,wpeek(stack(0),4)+cnt
poke memory,copytoaddr,peek(memory,copyfromaddr)
loop
}else{
if wpeek(stack(0),6)+wpeek(stack(0),2)>=65536{
copyfromaddr=0
copytoaddr=0
repeat wpeek(stack(0),2)
wpoke copyfromaddr,0,wpeek(stack(0),6)+cnt
wpoke copytoaddr,0,wpeek(stack(0),4)+cnt
poke memory,copytoaddr,peek(memory,copyfromaddr)
loop
}else{
if wpeek(stack(0),4)+wpeek(stack(0),2)>=65536 and wpeek(stack(0),6)+wpeek(stack(0),2)>=65536{
copyfromaddr=0
copytoaddr=0
repeat wpeek(stack(0),2)
wpoke copyfromaddr,0,wpeek(stack(0),6)+cnt
wpoke copytoaddr,0,wpeek(stack(0),4)+cnt
poke memory,copytoaddr,peek(memory,copyfromaddr)
loop
}else{
memcpy memory,memory,wpeek(stack(0),2),wpeek(stack(0),4),wpeek(stack(0),6)
}
}
}
wpoke stack(0),4,wpeek(stack(0),4)+wpeek(stack(0),2)
wpoke stack(0),6,wpeek(stack(0),6)+wpeek(stack(0),2)
wpoke stack(0),2,0
//dialog
//wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0xB1
resforcpiis0=0
valforcpi=peek(memory,wpeek(stack(0),6))
resforcpi=wpeek(stack(0),0)-valforcpi
if resforcpi=0{resforcpiis0=1}
wpoke stack(0),2,wpeek(stack(0),2)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
poke stack(0),1,(peek(stack(0),1) & 0x01) | (SZ(peek(resforcpi,0)) & (0x20 | 0x08)) | ((peek(stack(0),0) ^ valforcpi ^ resforcpi) & 0x10) | 0x02
if (peek(stack(0),1) & 0x10) {resforcpi -= 1}
	if(resforcpi & 0x02) {poke stack(0),1,peek(stack(0),1) | 0x20}
	if(resforcpi & 0x08) {poke stack(0),1,peek(stack(0),1) | 0x08}
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak
case 0xB2
//await 100
poke memory,wpeek(stack(0),6),peek(iomemory,peek(stack(0),4))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
iomemorycalled=2
iomemorycalledid=peek(stack(0),4)
iomemorycalledid16=0
peek iomemorycalledid16,0,wpeek(stack(0),0)
peek iomemorycalledid16,1,iomemorycalledid
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak
case 0xB3
poke iomemory,peek(stack(0),4),peek(memory,wpeek(stack(0),6))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
iomemorycalled=1
iomemorycalledid=peek(stack(0),4)
iomemorycalledid16=0
peek iomemorycalledid16,0,wpeek(stack(0),0)
peek iomemorycalledid16,1,iomemorycalledid
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak

case 0xB8
if wpeek(stack(0),4)-wpeek(stack(0),2)<=-1{
memcpy memory,memory,65536-wpeek(stack(0),2),65536+(wpeek(stack(0),4)-wpeek(stack(0),2)),wpeek(stack(0),6)-wpeek(stack(0),2)
memcpy memory,memory,0,-(wpeek(stack(0),4)-wpeek(stack(0),2)),wpeek(stack(0),6)-wpeek(stack(0),2)
}else{
if wpeek(stack(0),6)-wpeek(stack(0),2)<=-1{
memcpy memory,memory,wpeek(stack(0),2),wpeek(stack(0),4)-wpeek(stack(0),2),65536+(wpeek(stack(0),6)-wpeek(stack(0),2))
memcpy memory,memory,wpeek(stack(0),2),wpeek(stack(0),4)-wpeek(stack(0),2),-(wpeek(stack(0),6)-wpeek(stack(0),2))
}else{
if wpeek(stack(0),4)-wpeek(stack(0),2)<=-1 and wpeek(stack(0),6)-wpeek(stack(0),2)<=-1{
memcpy memory,memory,65536-wpeek(stack(0),2),65536+(wpeek(stack(0),4)-wpeek(stack(0),2)),65536+(wpeek(stack(0),6)-wpeek(stack(0),2))
memcpy memory,memory,0,-(wpeek(stack(0),4)-wpeek(stack(0),2)),-(wpeek(stack(0),6)-wpeek(stack(0),2))
}else{
memcpy memory,memory,wpeek(stack(0),2),wpeek(stack(0),4)-wpeek(stack(0),2),wpeek(stack(0),6)-wpeek(stack(0),2)
}
}
}
wpoke stack(0),4,wpeek(stack(0),4)-wpeek(stack(0),2)
wpoke stack(0),6,wpeek(stack(0),6)-wpeek(stack(0),2)
wpoke stack(0),2,0
//wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0xB9
resforcpiis0=0
valforcpi=peek(memory,wpeek(stack(0),6))
resforcpi=wpeek(stack(0),0)-valforcpi
if resforcpi=0{resforcpiis0=1}
wpoke stack(0),2,wpeek(stack(0),2)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
poke stack(0),1,(peek(stack(0),1) & 0x01) | (SZ(peek(resforcpi,0)) & (0x20 | 0x08)) | ((peek(stack(0),0) ^ valforcpi ^ resforcpi) & 0x10) | 0x02
if (peek(stack(0),1) & 0x10) {resforcpi -= 1}
	if(resforcpi & 0x02) {poke stack(0),1,peek(stack(0),1) | 0x20}
	if(resforcpi & 0x08) {poke stack(0),1,peek(stack(0),1) | 0x08}
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak
case 0xBA
//await 100
poke memory,wpeek(stack(0),6),peek(iomemory,peek(stack(0),4))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
iomemorycalled=2
iomemorycalledid=peek(stack(0),4)
iomemorycalledid16=0
peek iomemorycalledid16,0,wpeek(stack(0),0)
peek iomemorycalledid16,1,iomemorycalledid
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak
case 0xBB
poke iomemory,peek(stack(0),4),peek(memory,wpeek(stack(0),6))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
iomemorycalled=1
iomemorycalledid=peek(stack(0),4)
iomemorycalledid16=0
peek iomemorycalledid16,0,wpeek(stack(0),0)
peek iomemorycalledid16,1,iomemorycalledid
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak
default
opcode=peek(memory,wpeek(stack(0),10))
lpoke jumplabel,0,lpeek(opcodeaddr(opcode),0)
wpoke stack(0),10,wpeek(stack(0),10)+1
gosub jumplabel
swbreak
swend
return
*opcode_ee
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(memory,wpeek(stack(0),10))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_ef
poke memory,wpeek(stack(0),12)-2,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-1,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x28
return
*opcode_f0
if (peek(stack(0),1) & (0x80)){}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
}
return
*opcode_f1
poke stack(0),0,peek(memory,wpeek(stack(0),12)+1)
poke stack(0),1,peek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
return
*opcode_f2
if (peek(stack(0),1) & (0x80)){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_f3
poke stack(1),14,0
poke stack(1),15,0
return
*opcode_f4
if (peek(stack(0),1) & (0x80)){}else{
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_f5
wpoke stack(0),12,wpeek(stack(0),12)-2
poke memory,peek(stack(0),12)+1,peek(stack(0),0)
poke memory,peek(stack(0),12),peek(stack(0),1)
return
*opcode_f6
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(memory,wpeek(stack(0),10))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_f7
poke memory,wpeek(stack(0),12)-2,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-1,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x30
return
*opcode_f8
if (peek(stack(0),1) & (0x80)){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
}
return
*opcode_f9
wpoke stack(0),12,wpeek(stack(0),6)
return
*opcode_fa
if (peek(stack(0),1) & (0x80)){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_fb
poke stack(1),14,1
poke stack(1),15,1
z80afterei=1
return
*opcode_fc
if (peek(stack(0),1) & (0x80)){
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),10)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_fd
opcodeidforddopcode=peek(memory,wpeek(stack(0),10))
opcodeforsubcall=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
switch opcodeforsubcall
case 0x09
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=12
addfromstack=2
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(1),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(1),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak

case 0x19
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=12
addfromstack=4
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(1),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(1),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak

case 0x21
wpoke stack(1),12,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x22
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(1),12)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x23
wpoke stack(1),12,wpeek(stack(1),12)+1
swbreak
case 0x24
calculated=0
calculated=peek(stack(1),13)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(1),13,calculated
swbreak
case 0x25
calculated=0
calculated=peek(stack(1),13)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(1),13,calculated
swbreak
case 0x26
poke stack(1),13,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x29
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=12
addfromstack=13
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(1),addfromstack)
if peek(stack(1),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(1),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(1),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x2A
wpoke stack(1),12,wpeek(memory,wpeek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x2B
wpoke stack(1),12,wpeek(stack(1),12)-1
swbreak
case 0x2C
calculated=0
calculated=peek(stack(1),12)+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke stack(1),12,calculated
swbreak
case 0x2D
calculated=0
calculated=peek(stack(1),12)-1
/*if calculated=-1{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=127{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke stack(1),12,calculated
swbreak
case 0x2E
poke stack(1),12,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x34
calculated=0
calculated=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))+1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_inc(peek(calculated,0))
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),calculated
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x35
calculated=0
calculated=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))-1
/*if calculated=256{poke stack(0),1,(peek(stack(0),1) & 0x01)}
if calculated=128{poke stack(0),1,(peek(stack(0),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(0),1,(peek(stack(0),1) | 0x10)}*/
poke stack(0),1,(peek(stack(0),1) & 0x01) | SZHV_dec(peek(calculated,0))
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),calculated
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x36
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
swbreak

case 0x39
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=12
addfromstack=12
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,((peek(stack(0),1) & (0x80 | 0x40 | 0x04)) | (((wpeek(stack(1),addtostack) ^ calculated ^ wpeek(stack(0),addfromstack)) >> 8) & 0x10) | ((calculated >> 16) & 0x01) | ((calculated >> 8) & (0x20 | 0x08)))
wpoke stack(1),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak

case 0x44
case 0x45
case 0x46
case 0x4c
case 0x4d
case 0x4e
case 0x54
case 0x55
case 0x56
case 0x5c
case 0x5d
case 0x5e
swbreak

case 0x60
poke stack(1),13,peek(stack(0),3)
swbreak
case 0x61
poke stack(1),13,peek(stack(0),2)
swbreak
case 0x62
poke stack(1),13,peek(stack(0),5)
swbreak
case 0x63
poke stack(1),13,peek(stack(0),4)
swbreak
case 0x64
poke stack(1),13,peek(stack(1),13)
swbreak
case 0x65
poke stack(1),13,peek(stack(1),12)
swbreak
case 0x66
poke stack(0),7,peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x67
poke stack(1),13,peek(stack(0),0)
swbreak
case 0x68
poke stack(1),12,peek(stack(0),3)
swbreak
case 0x69
poke stack(1),12,peek(stack(0),2)
swbreak
case 0x6A
poke stack(1),12,peek(stack(0),5)
swbreak
case 0x6B
poke stack(1),12,peek(stack(0),4)
swbreak
case 0x6C
poke stack(1),12,peek(stack(1),13)
swbreak
case 0x6D
poke stack(1),12,peek(stack(1),12)
swbreak
case 0x6E
poke stack(0),6,peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x6F
poke stack(1),12,peek(stack(0),0)
swbreak
case 0x70
poke memory,(wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))),peek(stack(0),3)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x71
poke memory,(wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))),peek(stack(0),2)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x72
poke memory,(wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))),peek(stack(0),5)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x73
poke memory,(wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))),peek(stack(0),4)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x74
poke memory,(wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))),peek(stack(0),7)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak
case 0x75
poke memory,(wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))),peek(stack(0),6)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x77
poke memory,(wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))),peek(stack(0),0)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x7C
poke stack(0),0,peek(stack(1),13)
swbreak
case 0x7D
poke stack(0),0,peek(stack(1),12)
swbreak
case 0x7E
poke stack(0),0,peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x84
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(1),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x85
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(1),addfromstack)
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x86
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x8C
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(1),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x8D
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+peek(stack(1),addfromstack)+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
swbreak
case 0x8E
//if (peek(stack(0),1) ^ (0x02))=0{poke stack(0),1,peek(stack(0),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)+(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))+(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack) ^ 0x80) & (peek(memory,wpeek(stack(1),addfromstack)) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC_addCall*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x94
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | (((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
swbreak
case 0x95
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | (((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
swbreak
case 0x96
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x9C
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | (((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
swbreak
case 0x9D
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | (((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
swbreak
case 0x9E
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))-(peek(stack(0),1) & (0x01))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),1,SZ(peek(calculated,0) & 0xff) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(1),addfromstack))) & 0x10) | (((peek(memory,wpeek(stack(1),addfromstack)) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated) & 0x80) >> 5)
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0xA4
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(memory,wpeek(stack(1),addfromstack))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
swbreak
case 0xA5
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&peek(memory,wpeek(stack(1),addfromstack))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
swbreak
case 0xA6
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)&(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack)) | 0x10
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZPCall
poke stack(0),1,peek(stack(0),1) & 255 ^ 2
poke stack(0),1,peek(stack(0),1) & 254
poke stack(0),1,peek(stack(0),1) | 16*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0xAC
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak
case 0xAD
poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak
case 0xAE
poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)^(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
//if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0xB4
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak
case 0xB5
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
swbreak
case 0xB6
/*poke stack(0),1,peek(stack(0),1) ^ (0x01)
poke stack(0),1,peek(stack(0),1) ^ (0x02)*/
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)|(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
poke stack(0),addtostack,calculated
/*if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if peek(stack(0),addtostack)=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if peek(stack(0),addtostack)=0 and addold!0						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if peek(stack(0),addtostack) & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if peek(stack(0),addtostack) & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
poke stack(0),1,SZP(peek(stack(0),addtostack))
/*SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
	poke stack(0),1,peek(stack(0),1) &255 ^ 2
	poke stack(0),1,peek(stack(0),1) &254
	poke stack(0),1,peek(stack(0),1) &255 ^ 16
gosub *SZPCall*/
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0xBC
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=13
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(1),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | ((((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
swbreak
case 0xBD
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(stack(1),addfromstack)
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(1),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | ((((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
swbreak
case 0xBE
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=12
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-(peek(memory,wpeek(stack(1),addfromstack))+peek(memory,wpeek(stack(0),10)))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(stack(1),addfromstack) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(stack(1),addfromstack)) & 0x10) | ((((peek(stack(1),addfromstack) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0xCB
cbopcodecallid=peek(memory,wpeek(stack(0),10)+1)
cbopcodecallidforbit=(cbopcodecallid-0x40)/8
opcodeforsubcall=peek(memory,wpeek(stack(0),10)+1)
switch opcodeforsubcall
case 0x00
changetoforrlc=3
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x01
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x02
changetoforrlc=5
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x03
changetoforrlc=4
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x04
changetoforrlc=7
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x05
changetoforrlc=6
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x06
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),resforrlc
swbreak
case 0x07
changetoforrlc=0
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x08
changetoforrlc=3
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x09
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0A
changetoforrlc=5
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0B
changetoforrlc=4
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0C
changetoforrlc=7
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0D
changetoforrlc=6
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0E
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),resforrlc
swbreak
case 0x0F
changetoforrlc=0
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x10
changetoforrlc=3
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x11
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x12
changetoforrlc=5
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x13
changetoforrlc=4
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x14
changetoforrlc=7
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x15
changetoforrlc=6
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x16
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),resforrlc
swbreak
case 0x17
changetoforrlc=0
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x80) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc << 1) | (peek(stack(0),1) & 0x01)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x18
changetoforrlc=3
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x19
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1A
changetoforrlc=5
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1B
changetoforrlc=4
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1C
changetoforrlc=7
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1D
changetoforrlc=6
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1E
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),resforrlc
swbreak
case 0x1F
changetoforrlc=0
resforrlc=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
cforrlc=1
if (resforrlc & 0x01) {cforrlc=0x01}else{cforrlc=0}
	resforrlc = ((resforrlc >> 1) | (peek(stack(0),1) << 7)) & 0xff
	/*if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	poke stack(0),1,SZP(resforrlc) | c
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x20
regidforsla=3
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x21
regidforsla=2
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x22
regidforsla=5
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x23
regidforsla=4
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x24
regidforsla=7
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x25
regidforsla=6
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x26
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),slares
swbreak
case 0x27
regidforsla=0
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = (slares << 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x28
regidforsla=3
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x29
regidforsla=2
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2A
regidforsla=5
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2B
regidforsla=4
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2C
regidforsla=7
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2D
regidforsla=6
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x2E
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),slares
swbreak
case 0x2F
regidforsla=0
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = ((slares >> 1) | (slares & 0x80)) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x30
regidforsla=3
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x31
regidforsla=2
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x32
regidforsla=5
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x33
regidforsla=4
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x34
regidforsla=7
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x35
regidforsla=6
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x36
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),slares
swbreak
case 0x37
regidforsla=0
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x80)
if (slares & 0x80) {slac=0x01}else{slac=0}
slares = ((slares << 1) | 0x01) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x38
regidforsla=3
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x39
regidforsla=2
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3A
regidforsla=5
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3B
regidforsla=4
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3C
regidforsla=7
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3D
regidforsla=6
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
case 0x3E
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)),slares
swbreak
case 0x3F
regidforsla=0
slares=0
slares=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
slac= 1//(slares & 0x01)
if (slares & 0x01) {slac=0x01}else{slac=0}
slares = (slares >> 1) & 0xff
poke stack(0),1,SZP(peek(slares,0)) | slac
poke stack(0),regidforsla,slares
swbreak
swend
regforbit=peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10)))
if cbopcodecallid>=0x40 and cbopcodecallid<=127{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
regforbitforssx=0
switch regfromopcodeforbit
case 6
regforbit=-1
swbreak
case 0
regforbitforssx=3
swbreak
case 1
regforbitforssx=2
swbreak
case 2
regforbitforssx=5
swbreak
case 3
regforbitforssx=4
swbreak
case 4
regforbitforssx=7
swbreak
case 5
regforbitforssx=6
swbreak
case 7
regforbitforssx=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke stack(0),1,(peek(stack(0),1) & 0x01) | 0x10 | ((peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))) & (1 << bit)) & (0x20 | 0x08)) | (peek(memory,wpeek(stack(0),10)) & (0x20 | 0x08))
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),1,(peek(stack(0),1) & 0x01) | 0x10 | ((peek(memory,regforbit) & (1 << bit)) & (0x20 | 0x08)) | (peek(stack(0),regforbitforssx) & (0x20 | 0x08))
	}
}
if cbopcodecallid>=128 and cbopcodecallid<=0xBF{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
regforbitforssx=0
switch regfromopcodeforbit
case 6
regforbit=-1
swbreak
case 0
regforbitforssx=3
swbreak
case 1
regforbitforssx=2
swbreak
case 2
regforbitforssx=5
swbreak
case 3
regforbitforssx=4
swbreak
case 4
regforbitforssx=7
swbreak
case 5
regforbitforssx=6
swbreak
case 7
regforbitforssx=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke memory,wpeek(stack(0),10),peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))) & (1<<regfromopcodeforbit)
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),regforbitforssx,peek(memory,regforbit) & (1<<regfromopcodeforbit)
	}
}
if cbopcodecallid>=0xC0 and cbopcodecallid<=0xFF{
regfromopcodeforbit=(cbopcodecallid-0x40)-(8*cbopcodecallidforbit)
regforbitforssx=0
switch regfromopcodeforbit
case 6
regforbit=-1
swbreak
case 0
regforbitforssx=3
swbreak
case 1
regforbitforssx=2
swbreak
case 2
regforbitforssx=5
swbreak
case 3
regforbitforssx=4
swbreak
case 4
regforbitforssx=7
swbreak
case 5
regforbitforssx=6
swbreak
case 7
regforbitforssx=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(0),1) & 0x01){}else{poke stack(0),1,peek(stack(0),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(0),1) & 0x10){poke stack(0),1,peek(stack(0),1)^0x10}
	if (peek(stack(0),1) & 0x40){poke stack(0),1,peek(stack(0),1)^0x40}
	if (peek(stack(0),1) & 0x02){poke stack(0),1,peek(stack(0),1)^0x02}*/
	if regforbit=-1{
	poke memory,wpeek(stack(0),10),peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))) | (1<<regfromopcodeforbit)
	//wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(0),regforbitforssx,peek(memory,regforbit) | (1<<regfromopcodeforbit)
	}
}
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak

case 0xE1
wpoke stack(1),12,wpeek(memory,wpeek(stack(0),12))
wpoke stack(0),12,wpeek(stack(0),12)+2
swbreak

case 0xE3
SP_bak=0
SP_bak=wpeek(stack(0),12)
wpoke stack(0),12,wpeek(stack(1),12)
wpoke stack(1),12,SP_bak
swbreak

case 0xE5
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke memory,wpeek(stack(0),12),wpeek(stack(1),12)
swbreak

case 0xE9
wpoke stack(0),10,wpeek(stack(1),12)
swbreak

case 0xF9
wpoke stack(0),12,wpeek(stack(1),12)
swbreak

default
opcodeidforddopcodeaddcall=((opcodeidforddopcode-0x40)/6)
opcodeidforddopcodeaddcall2=((opcodeidforddopcode-0x40)-(opcodeidforddopcodeaddcall*6))-4
opcode=peek(memory,wpeek(stack(0),10))
lpoke jumplabel,0,lpeek(opcodeaddr(opcode),0)
wpoke stack(0),10,wpeek(stack(0),10)+1
gosub jumplabel
swbreak
swend
opcodeidforddopcodeaddcall=((opcodeidforddopcode-0x40)/6)
opcodeidforddopcodeaddcall2=((opcodeidforddopcode-0x40)-(opcodeidforddopcodeaddcall*6))-4
if opcodeidforddopcode>=0x44 and opcodeidforddopcode<=0x5E{
switch opcodeidforddopcodeaddcall
case 0
regforbit=3
swbreak
case 1
regforbit=2
swbreak
case 2
regforbit=5
swbreak
case 3
regforbit=4
swbreak
case 4
regforbit=7
swbreak
case 5
regforbit=6
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
if opcodeidforddopcodeaddcall2=0 {if regforbit=-1{}else{poke stack(0),regforbit,peek(stack(1),12)}}
if opcodeidforddopcodeaddcall2=1 {if regforbit=-1{}else{poke stack(0),regforbit,peek(stack(1),13)}}
if opcodeidforddopcodeaddcall2=2 {if regforbit=-1{}else{poke stack(0),regforbit,peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))):wpoke stack(0),10,wpeek(stack(0),10)+1}}
}
return
*opcode_fe
//if (peek(stack(0),1) & (0x02)){poke stack(0),1,peek(stack(0),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(0),addtostack)
calculated=peek(stack(0),addtostack)-peek(memory,wpeek(stack(0),10))
//if peek(stack(0),addtostack) & 0b00001000{halfcarrychk=1}
//poke stack(0),addtostack,calculated
/*if calculated=0 and peek(stack(0),addtostack)=calculated{poke stack(0),1,peek(stack(0),1) | (0x01)}
if calculated=0 and peek(stack(0),addtostack)!calculated{poke stack(0),1,peek(stack(0),1) | (0x04)}
if calculated=0 /*and addold!0*//*						 {poke stack(0),1,peek(stack(0),1) | (0x40)}

if calculated & 0b00010000 and halfcarrychk=1{poke stack(0),1,peek(stack(0),1) | (0x10):halfcarrychk=0}
if calculated & 0x80{poke stack(0),1,peek(stack(0),1) | (0x80)}*/
SZHVC_addvar_37id=0
SZHVC_addvar_37id2=calculated
gosub *SZHVC2call
poke stack(0),1,(SZ(peek(calculated,0) & 0xff) & (0x80 | 0x40)) | (peek(memory,wpeek(stack(0),10)) & (0x20 | 0x08)) | ((calculated >> 8) & 0x01) | 0x02 | ((peek(stack(0),addtostack) ^ calculated ^ peek(memory,wpeek(stack(0),10))) & 0x10) | ((((peek(memory,wpeek(stack(0),10)) ^ peek(stack(0),addtostack)) & (peek(stack(0),addtostack) ^ calculated)) >> 5) & 0x04)
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_ff
poke memory,wpeek(stack(0),12)-2,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-1,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x38
return

//logmes "Unimplemented!"
return
*SZHVC2call
//SZHVC_addvar_37=peek(stack(SZHVC_addvar_37id),SZHVC_addvar_37id2)
SZHVC_addvar_37=SZHVC_addvar_37id2
poke SZHVC_addvar_52,0,peek(stack(0),1)
	SZHVC_addvar_52 ^= 2
	if ( SZHVC_addvar_37 < 0 ) {
		SZHVC_addvar_52 |= 1
	}
	else {
		SZHVC_addvar_52 &= 254
	}
	if ( SZHVC_addvar_37 & 4 ) {
		SZHVC_addvar_52 |= 16
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 16
	}
	if ( SZHVC_addvar_37 == 0 ) {
		SZHVC_addvar_52 |= 64
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 64
	}
	if ( (SZHVC_addvar_37 & 128) != (peek(stack(0), 0) != 128) ) {
		SZHVC_addvar_52 |= 4
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 4
	}
	if ( SZHVC_addvar_37 & 128 ) {
		SZHVC_addvar_52 |= 128
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 128
	}
poke stack(0),1,SZHVC_addvar_52
	return
*SZHVCcall
//SZHVC_addvar_37=peek(stack(SZHVC_addvar_37id),SZHVC_addvar_37id2)
SZHVC_addvar_37=SZHVC_addvar_37id2
poke SZHVC_addvar_52,0,peek(stack(0),1)
	SZHVC_addvar_52 ^= 2
	if ( SZHVC_addvar_37 < 0 ) {
		SZHVC_addvar_52 |= 1
	}
	else {
		SZHVC_addvar_52 &= 254
	}
	if ( SZHVC_addvar_37 & 4 ) {
		SZHVC_addvar_52 |= 16
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 16
	}
	if ( SZHVC_addvar_37 == 0 ) {
		SZHVC_addvar_52 |= 64
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 64
	}
	if ( (SZHVC_addvar_37 & 32768) != (wpeek(stack(0), 6) != 32768) ) {
		SZHVC_addvar_52 |= 4
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 4
	}
	if ( SZHVC_addvar_37 & 32768 ) {
		SZHVC_addvar_52 |= 128
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 128
	}
poke stack(0),1,SZHVC_addvar_52
	return
*SZPCall
//SZHVC_addvar_37=peek(stack(SZHVC_addvar_37id),SZHVC_addvar_37id2)
SZHVC_addvar_37=SZHVC_addvar_37id2
poke SZHVC_addvar_52,0,peek(stack(0),1)
	if ( SZHVC_addvar_37 & 1 ) {
		SZHVC_addvar_52 |= 4
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 4
	}
	if ( SZHVC_addvar_37 == 0 ) {
		SZHVC_addvar_52 |= 64
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 64
	}
	if ( SZHVC_addvar_37 & 128 ) {
		SZHVC_addvar_52 |= 128
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 128
	}
poke stack(0),1,SZHVC_addvar_52
	return
*SZHVCall
//SZHVC_addvar_37=peek(stack(SZHVC_addvar_37id),SZHVC_addvar_37id2)
SZHVC_addvar_37=SZHVC_addvar_37id2
poke SZHVC_addvar_52,0,peek(stack(0),1)
	if ( (SZHVC_addvar_37 & 128) != (peek(SZHVC_addvar_24, var_53) & 128) ) {
		SZHVC_addvar_52 |= 4
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 4
	}
	if ( SZHVC_addvar_37 == 0 ) {
		SZHVC_addvar_52 |= 64
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 64
	}
	if ( SZHVC_addvar_37 & 128 ) {
		SZHVC_addvar_52 |= 128
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 128
	}
poke stack(0),1,SZHVC_addvar_52
	return
	if ( SZHVC_addvar_37 & 4 ) {
		SZHVC_addvar_52 |= 16
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 16
	}
	if ( SZHVC_addvar_37 == 0 ) {
		SZHVC_addvar_52 |= 64
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 64
	}
	if ( SZHVC_addvar_37 & 1 ) {
		SZHVC_addvar_52 |= 4
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 4
	}
	if ( SZHVC_addvar_37 & 128 ) {
		SZHVC_addvar_52 |= 128
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 128
	}
poke stack(0),1,SZHVC_addvar_52
	return
*SZPCall2
//SZHVC_addvar_37=peek(stack(SZHVC_addvar_37id),SZHVC_addvar_37id2)
SZHVC_addvar_37=SZHVC_addvar_37id2
poke SZHVC_addvar_52,0,peek(stack(0),1)
	if ( SZHVC_addvar_37 == 0 ) {
		SZHVC_addvar_52 |= 64
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 64
	}
	if ( SZHVC_addvar_37 & 128 ) {
		SZHVC_addvar_52 |= 128
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 128
	}
	if ( SZHVC_addvar_37 & 1 ) {
		SZHVC_addvar_52 |= 2
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 2
	}
	SZHVC_addvar_52 &= 255 ^ 16
	SZHVC_addvar_52 &= 255 ^ 2
poke stack(0),1,SZHVC_addvar_52
	return
*SZHVC_addCall
//SZHVC_addvar_37=peek(stack(SZHVC_addvar_37id),SZHVC_addvar_37id2)
SZHVC_addvar_37=SZHVC_addvar_37id2
poke SZHVC_addvar_52,0,peek(stack(0),1)
	SZHVC_addvar_52 &= 255 ^ 2
	if ( SZHVC_addvar_37 > 255 ) {
		SZHVC_addvar_52 |= 1
	}
	else {
		SZHVC_addvar_52 &= 254
	}
	if ( (SZHVC_addvar_37 & 128) != (peek(stack(0), 0) != 128) ) {
		SZHVC_addvar_52 |= 4
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 4
	}
	if ( SZHVC_addvar_37 & 4 ) {
		SZHVC_addvar_52 |= 16
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 16
	}
	if ( SZHVC_addvar_37 == 0 ) {
		SZHVC_addvar_52 |= 64
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 64
	}
	if ( SZHVC_addvar_37 & 128 ) {
		SZHVC_addvar_52 |= 128
	}
	else {
		SZHVC_addvar_52 &= 255 ^ 128
	}
poke stack(0),1,SZHVC_addvar_52
	return
#global
gocaine_z80init
