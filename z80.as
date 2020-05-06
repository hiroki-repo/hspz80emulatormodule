#module
#deffunc gocaine_z80init 
sdim stack,64,2
//sdim memory,65540
jumplabel=*null
repeat 256
lpoke opcodeaddr(cnt),0,lpeek(jumplabel,0)
loop
iomemorycalledid=0
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
sdim stackformt,64,2,256
//repeat 256:wpoke stackformt(0,cnt),12,0xFF77:loop
sdim iomemory,256
return
#defcfunc isioportcalled
ioportidforreturn=iomemorycalledid
if iomemorycalled=0{ioportidforreturn=-1}
iomemorycalled=0
return ioportidforreturn
#deffunc ioportpoke int iomemoryidforz80,int iomemorydataforz80
poke iomemory,iomemoryidforz80,iomemorydataforz80
return
#defcfunc ioportpeek int iomemoryidforz80
return peek(iomemory,iomemoryidforz80)

//repeat
#defcfunc z80run_c var startaddr, var memory, int threadidforrunthez80
#deffunc z80run var startaddr, var memory, int threadidforrunthez80
memcpy stack(0),stackformt(0,threadidforrunthez80),64,0,0
memcpy stack(1),stackformt(1,threadidforrunthez80),64,0,0
wpoke stack(0),10,startaddr
opcode=peek(memory,wpeek(stack(0),10))
lpoke jumplabel,0,opcodeaddr(opcode)
wpoke stack(0),10,wpeek(stack(0),10)+1
gosub jumplabel
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
wpoke stack(stackid),2,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_02
poke memory,wpeek(stack(stackid),2),peek(stack(stackid),0)//wpeek(memory,wpeek(stack(0),10))
//wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_03
wpoke stack(stackid),2,wpeek(stack(stackid),2)+1
return
*opcode_04
calculated=0
calculated=peek(stack(stackid),2)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),2,calculated
return
*opcode_05
calculated=0
calculated=peek(stack(stackid),2)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),2,calculated
return
*opcode_06
poke stack(stackid),2,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_07
poke stack(stackid),0,(peek(stack(stackid),0) << 1) | (peek(stack(stackid),0) >> 7)
poke stack(stackid),1,(peek(stack(stackid),1) & (0x80 | 0x40 | 0x04)) | (peek(stack(stackid),0) & (0x20 | 0x08 | 0x01))
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
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=wpeek(stack(stackid),addtostack)+wpeek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_0a
poke stack(stackid),0,peek(memory,wpeek(stack(stackid),2))
return
*opcode_0b
wpoke stack(stackid),2,wpeek(stack(stackid),2)-1
return
*opcode_0c
calculated=0
calculated=peek(stack(stackid),3)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),3,calculated
return
*opcode_0d
calculated=0
calculated=peek(stack(stackid),3)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),3,calculated
return
*opcode_0e
poke stack(stackid),3,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_0f
poke stack(stackid),1,(peek(stack(stackid),1) & (0x80 | 0x40 | 0x04)) | (peek(stack(stackid),0) & 0x01)
poke stack(stackid),0,(peek(stack(stackid),0) >> 1) | (peek(stack(stackid),0) << 7)
poke stack(stackid),1,peek(stack(stackid),1) | (peek(stack(stackid),0) & (0x20 | 0x08))
return
*opcode_10
poke stack(stackid),2,peek(stack(stackid),2)-1
address=wpeek(stack(0),10)
if address>=128{address=-(256-address)}
if (peek(stack(stackid),2)) {wpoke stack(0),10,wpeek(stack(0),10)+address}else{wpoke stack(0),10,wpeek(stack(0),10)+1}
return
*opcode_11
wpoke stack(stackid),4,wpeek(memory,wpeek(stack(stackid),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_12
poke memory,wpeek(stack(stackid),4),peek(stack(stackid),0)
return
*opcode_13
wpoke stack(stackid),4,peek(stack(stackid),4)+1
return
*opcode_14
calculated=0
calculated=peek(stack(stackid),4)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),4,calculated
return
*opcode_15
calculated=0
calculated=peek(stack(stackid),4)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),4,calculated
return
*opcode_16
poke stack(stackid),4,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_17
rlac=1
rlares = (peek(stack(stackid),0) << 1) | (peek(stack(stackid),1) & 0x01)
if (peek(stack(stackid),0) & 0x80) = 0x01 {rlac = 0}
poke stack(stackid),1,(peek(stack(stackid),1) & (0x80 | 0x40 | 0x04)) | rlac | (rlares & (0x20 | 0x08))
poke stack(stackid),0,rlares
return
*opcode_18
address=wpeek(stack(0),10)
if address>=128{address=-(256-address)}
wpoke stack(0),10,wpeek(stack(0),10)+address
return
*opcode_19
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=wpeek(stack(stackid),addtostack)+wpeek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_1a
poke stack(stackid),0,peek(memory,wpeek(stack(stackid),4))
return
*opcode_1b
wpoke stack(stackid),4,wpeek(stack(stackid),4)-1
return
*opcode_1c
calculated=0
calculated=peek(stack(stackid),4)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),4,calculated
return
*opcode_1d
calculated=0
calculated=peek(stack(stackid),4)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),4,calculated
return
*opcode_1e
poke stack(stackid),4,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_1f
rlac=1
rlares = (peek(stack(stackid),0) >> 1) | (peek(stack(stackid),1) << 7)
if (peek(stack(stackid),0) & 0x01) = 0x01 {rlac = 0}
poke stack(stackid),1,(peek(stack(stackid),1) & (0x80 | 0x40 | 0x04)) | rlac | (rlares & (0x20 | 0x08))
poke stack(stackid),0,rlares
return
*opcode_20
address=wpeek(stack(0),10)
if address>=128{address=-(256-address)}
if (peek(stack(stackid),1) & 0x40) {wpoke stack(0),10,wpeek(stack(0),10)+1}else{wpoke stack(0),10,wpeek(stack(0),10)+address}
return
*opcode_21
wpoke stack(stackid),6,wpeek(memory,wpeek(stack(stackid),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_22
poke memory,wpeek(stack(stackid),10),peek(stack(stackid),6)
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_23
wpoke stack(stackid),6,peek(stack(stackid),6)+1
return
*opcode_24
calculated=0
calculated=peek(stack(stackid),6)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),6,calculated
return
*opcode_25
calculated=0
calculated=peek(stack(stackid),6)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),6,calculated
return
*opcode_26
poke stack(stackid),6,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_27
	afordaa=peek(stack(stackid),0)
	if(peek(stack(stackid),1) & 0x02) { 
		if((peek(stack(stackid),1) & 0x10) | ((peek(stack(stackid),0) & 0xf) > 9)) {afordaa -= 6}
		if((peek(stack(stackid),1) & 0x01) | (peek(stack(stackid),0) > 0x99)) {afordaa -= 0x60}
	} else { 
		if((peek(stack(stackid),1) & 0x10) | ((peek(stack(stackid),0) & 0xf) > 9)) {afordaa += 6}
		if((peek(stack(stackid),1) & 0x01) | (peek(stack(stackid),0) > 0x99)) {afordaa += 0x60}
	} 
	poke stack(stackid),1,(peek(stack(stackid),1) & (0x01 | 0x02)) | (peek(stack(stackid),0) > 0x99) | ((peek(stack(stackid),0) ^ afordaa) & 0x10) | a //| SZP[a]
return
*opcode_28
address=wpeek(stack(0),10)
if address>=128{address=-(256-address)}
if (peek(stack(stackid),1) & 0x40) {wpoke stack(0),10,wpeek(stack(0),10)+address}else{wpoke stack(0),10,wpeek(stack(0),10)+1}
return
*opcode_29
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=wpeek(stack(stackid),addtostack)+wpeek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_2a
wpoke stack(stackid),6,wpeek(memory,wpeek(stack(stackid),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_2b
wpoke stack(stackid),6,wpeek(stack(stackid),6)-1
return
*opcode_2c
calculated=0
calculated=peek(stack(stackid),7)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),7,calculated
return
*opcode_2d
calculated=0
calculated=peek(stack(stackid),7)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),7,calculated
return
*opcode_2e
poke stack(stackid),7,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_2f
cpla=peek(stack(stackid),0)
cpla ^=0xFF
poke stack(stackid),1,(peek(stack(stackid),1) & (0x80 | 0x40 | 0x04 | 0x01)) | 0x10 | 0x02 | (peek(stack(stackid),0) & (0x20 | 0x08))
poke stack(stackid),0,cpla
return
*opcode_30
address=wpeek(stack(0),10)
if address>=128{address=-(256-address)}
if (peek(stack(stackid),1) & 0x01) {wpoke stack(0),10,wpeek(stack(0),10)+1}else{wpoke stack(0),10,wpeek(stack(0),10)+address}
return
*opcode_31
wpoke stack(stackid),6,wpeek(memory,wpeek(stack(stackid),12))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_32
poke memory,wpeek(stack(stackid),10),peek(stack(stackid),0)
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_33
wpoke stack(stackid),12,peek(stack(stackid),12)+1
return
*opcode_34
calculated=0
calculated=wpeek(memory,wpeek(stack(stackid),6))+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke memory,wpeek(stack(stackid),6),calculated
return
*opcode_35
calculated=0
calculated=wpeek(memory,wpeek(stack(stackid),6))-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke memory,wpeek(stack(stackid),6),calculated
return
*opcode_36
poke memory,wpeek(stack(stackid),6),peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_37
poke stack(stackid),1,(peek(stack(stackid),1) & (0x80 | 0x40 | 0x20 | 0x08 | 0x04)) | 0x01 | (peek(stack(stackid),0) & (0x20 | 0x08))
return
*opcode_38
address=wpeek(stack(0),10)
if address>=128{address=-(256-address)}
if (peek(stack(stackid),1) & 0x01) {wpoke stack(0),10,wpeek(stack(0),10)+address}else{wpoke stack(0),10,wpeek(stack(0),10)+1}
return
*opcode_39
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=12
addold=peek(stack(stackid),addtostack)
calculated=wpeek(stack(stackid),addtostack)+wpeek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_3a
poke stack(stackid),0,peek(memory,wpeek(stack(stackid),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
return
*opcode_3b
wpoke stack(stackid),12,peek(stack(stackid),12)-1
return
*opcode_3c
calculated=0
calculated=peek(stack(stackid),0)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),0,calculated
return
*opcode_3d
calculated=0
calculated=peek(stack(stackid),0)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(stackid),0,calculated
return
*opcode_3e
poke stack(stackid),0,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_3f
poke stack(stackid),1,((peek(stack(stackid),1) & (0x80 | 0x40 | 0x20 | 0x08 | 0x04 | 0x01)) | ((peek(stack(stackid),1) & 0x01) << 4) | (peek(stack(stackid),0) & (0x20 | 0x08))) ^ 0x01
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_40
poke stack(stackid),2,peek(stack(stackid),2)
return
*opcode_41
poke stack(stackid),2,peek(stack(stackid),3)
return
*opcode_42
poke stack(stackid),2,peek(stack(stackid),4)
return
*opcode_43
poke stack(stackid),2,peek(stack(stackid),5)
return
*opcode_44
poke stack(stackid),2,peek(stack(stackid),6)
return
*opcode_45
poke stack(stackid),2,peek(stack(stackid),7)
return
*opcode_46
poke stack(stackid),2,peek(memory,wpeek(stack(stackid),6))
return
*opcode_47
poke stack(stackid),2,peek(stack(stackid),0)
return
*opcode_48
poke stack(stackid),3,peek(stack(stackid),2)
return
*opcode_49
poke stack(stackid),3,peek(stack(stackid),3)
return
*opcode_4a
poke stack(stackid),3,peek(stack(stackid),4)
return
*opcode_4b
poke stack(stackid),3,peek(stack(stackid),5)
return
*opcode_4c
poke stack(stackid),3,peek(stack(stackid),6)
return
*opcode_4d
poke stack(stackid),3,peek(stack(stackid),7)
return
*opcode_4e
poke stack(stackid),3,peek(memory,wpeek(stack(stackid),6))
return
*opcode_4f
poke stack(stackid),3,peek(stack(stackid),0)
return
*opcode_50
poke stack(stackid),4,peek(stack(stackid),2)
return
*opcode_51
poke stack(stackid),4,peek(stack(stackid),3)
return
*opcode_52
poke stack(stackid),4,peek(stack(stackid),4)
return
*opcode_53
poke stack(stackid),4,peek(stack(stackid),5)
return
*opcode_54
poke stack(stackid),4,peek(stack(stackid),6)
return
*opcode_55
poke stack(stackid),4,peek(stack(stackid),7)
return
*opcode_56
poke stack(stackid),4,peek(memory,wpeek(stack(stackid),6))
return
*opcode_57
poke stack(stackid),4,peek(stack(stackid),0)
return
*opcode_58
poke stack(stackid),5,peek(stack(stackid),2)
return
*opcode_59
poke stack(stackid),5,peek(stack(stackid),3)
return
*opcode_5a
poke stack(stackid),5,peek(stack(stackid),4)
return
*opcode_5b
poke stack(stackid),5,peek(stack(stackid),5)
return
*opcode_5c
poke stack(stackid),5,peek(stack(stackid),6)
return
*opcode_5d
poke stack(stackid),5,peek(stack(stackid),7)
return
*opcode_5e
poke stack(stackid),5,peek(memory,wpeek(stack(stackid),6))
return
*opcode_5f
poke stack(stackid),5,peek(stack(stackid),0)
return
*opcode_60
poke stack(stackid),6,peek(stack(stackid),2)
return
*opcode_61
poke stack(stackid),6,peek(stack(stackid),3)
return
*opcode_62
poke stack(stackid),6,peek(stack(stackid),4)
return
*opcode_63
poke stack(stackid),6,peek(stack(stackid),5)
return
*opcode_64
poke stack(stackid),6,peek(stack(stackid),6)
return
*opcode_65
poke stack(stackid),6,peek(stack(stackid),7)
return
*opcode_66
poke stack(stackid),6,peek(memory,wpeek(stack(stackid),6))
return
*opcode_67
poke stack(stackid),6,peek(stack(stackid),0)
return
*opcode_68
poke stack(stackid),7,peek(stack(stackid),2)
return
*opcode_69
poke stack(stackid),7,peek(stack(stackid),3)
return
*opcode_6a
poke stack(stackid),7,peek(stack(stackid),4)
return
*opcode_6b
poke stack(stackid),7,peek(stack(stackid),5)
return
*opcode_6c
poke stack(stackid),7,peek(stack(stackid),6)
return
*opcode_6d
poke stack(stackid),7,peek(stack(stackid),7)
return
*opcode_6e
poke stack(stackid),7,peek(memory,wpeek(stack(stackid),6))
return
*opcode_6f
poke stack(stackid),7,peek(stack(stackid),0)
return
*opcode_70
poke memory,wpeek(stack(stackid),6),peek(stack(stackid),2)
return
*opcode_71
poke memory,wpeek(stack(stackid),6),peek(stack(stackid),3)
return
*opcode_72
poke memory,wpeek(stack(stackid),6),peek(stack(stackid),4)
return
*opcode_73
poke memory,wpeek(stack(stackid),6),peek(stack(stackid),5)
return
*opcode_74
poke memory,wpeek(stack(stackid),6),peek(stack(stackid),6)
return
*opcode_75
poke memory,wpeek(stack(stackid),6),peek(stack(stackid),7)
return
*opcode_76
end
return
*opcode_77
poke memory,wpeek(stack(stackid),6),peek(stack(stackid),0)
return
*opcode_78
poke stack(stackid),0,peek(stack(stackid),2)
return
*opcode_79
poke stack(stackid),0,peek(stack(stackid),3)
return
*opcode_7a
poke stack(stackid),0,peek(stack(stackid),4)
return
*opcode_7b
poke stack(stackid),0,peek(stack(stackid),5)
return
*opcode_7c
poke stack(stackid),0,peek(stack(stackid),6)
return
*opcode_7d
poke stack(stackid),0,peek(stack(stackid),7)
return
*opcode_7e
poke stack(stackid),0,peek(memory,wpeek(stack(stackid),6))
return
*opcode_7f
poke stack(stackid),0,peek(stack(stackid),0)
return
*opcode_80
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_81
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_82
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_83
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_84
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_85
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_86
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(memory,wpeek(stack(stackid),6))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_87
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_88
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_89
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_8a
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_8b
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_8c
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_8d
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_8e
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(memory,wpeek(stack(stackid),6))+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_8f
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_90
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_91
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_92
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_93
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_94
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_95
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_96
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(memory,wpeek(stack(stackid),6))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_97
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_98
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_99
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_9a
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_9b
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_9c
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_9d
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_9e
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(memory,wpeek(stack(stackid),6))-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_9f
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a0
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a1
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a2
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a3
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a4
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a5
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a6
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(memory,wpeek(stack(stackid),6))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a7
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a8
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_a9
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_aa
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_ab
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_ac
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_ad
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_ae
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(memory,wpeek(stack(stackid),6))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_af
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b0
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b1
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b2
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b3
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b4
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b5
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b6
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(memory,wpeek(stack(stackid),6))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b7
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b8
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_b9
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=3
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_ba
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_bb
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=5
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_bc
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=6
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_bd
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_be
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=7
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(memory,wpeek(stack(stackid),6))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_bf
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
return
*opcode_c0
if peek(stack(stackid),1) | (0x40){}else{
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
}
return
*opcode_c1
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),2,wpeek(stack(0),12)
return
*opcode_c2
if peek(stack(stackid),1) | (0x40){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_c3
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
return
*opcode_c4
if peek(stack(stackid),1) | (0x40){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_c5
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),2)
wpoke stack(0),12,wpeek(stack(0),12)-2
return
*opcode_c6
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(memory,wpeek(stack(0),10))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_c7
poke memory,wpeek(stack(0),12)-1,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-2,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0
return
*opcode_c8
if peek(stack(stackid),1) | (0x40){
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
}
return
*opcode_c9
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
return
*opcode_ca
if peek(stack(stackid),1) | (0x40){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_cb
cbopcodecallid=peek(memory,wpeek(stack(0),10))
cbopcodecallidforbit=(cbopcodecallid-40)/8
opcodeforsubcall=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
switch opcodeforsubcall
case 0x00
changetoforrlc=2
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x01
changetoforrlc=3
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x02
changetoforrlc=4
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x03
changetoforrlc=5
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x04
changetoforrlc=6
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x05
changetoforrlc=7
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x06
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(0),6))
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke memory,wpeek(stack(0),6),resforrlc
swbreak
case 0x07
changetoforrlc=0
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (resforrlc >> 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x08
changetoforrlc=2
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x09
changetoforrlc=3
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0A
changetoforrlc=4
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0B
changetoforrlc=5
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0C
changetoforrlc=6
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0D
changetoforrlc=7
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x0E
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(0),6))
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke memory,wpeek(stack(0),6),resforrlc
swbreak
case 0x0F
changetoforrlc=0
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (resforrlc << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x10
changetoforrlc=2
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (peek(stack(stackid),1) & 0x01)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x11
changetoforrlc=3
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (peek(stack(stackid),1) & 0x01)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x12
changetoforrlc=4
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (peek(stack(stackid),1) & 0x01)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x13
changetoforrlc=5
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (peek(stack(stackid),1) & 0x01)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x14
changetoforrlc=6
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (peek(stack(stackid),1) & 0x01)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x15
changetoforrlc=7
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (peek(stack(stackid),1) & 0x01)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x16
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(0),6))
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (peek(stack(stackid),1) & 0x01)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke memory,wpeek(stack(0),6),resforrlc
swbreak
case 0x17
changetoforrlc=0
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x80) {cforrlc=1}
	resforrlc = ((resforrlc << 1) | (peek(stack(stackid),1) & 0x01)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x18
changetoforrlc=2
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (peek(stack(stackid),1) << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x19
changetoforrlc=3
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (peek(stack(stackid),1) << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1A
changetoforrlc=4
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (peek(stack(stackid),1) << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1B
changetoforrlc=5
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (peek(stack(stackid),1) << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1C
changetoforrlc=6
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (peek(stack(stackid),1) << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1D
changetoforrlc=7
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (peek(stack(stackid),1) << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
case 0x1E
changetoforrlc=2
resforrlc=peek(memory,wpeek(stack(0),6))
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (peek(stack(stackid),1) << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke memory,wpeek(stack(0),6),resforrlc
swbreak
case 0x1F
changetoforrlc=0
resforrlc=peek(stack(0),changetoforrlc)
cforrlc=0
if (resforrlc & 0x01) {cforrlc=1}
	resforrlc = ((resforrlc >> 1) | (peek(stack(stackid),1) << 7)) & 0xff
	if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}
poke stack(0),changetoforrlc,resforrlc
swbreak
swend
if cbopcodecallid>=40 and cbopcodecallid<=127{
regfromopcodeforbit=(cbopcodecallid-40)-(8*cbopcodecallidforbit)
switch regfromopcodeforbit
case 0
regforbit=2
swbreak
case 1
regforbit=3
swbreak
case 2
regforbit=4
swbreak
case 3
regforbit=5
swbreak
case 4
regforbit=6
swbreak
case 5
regforbit=7
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x40){poke stack(stackid),1,peek(stack(stackid),1)^0x40}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}*/
	if regforbit=-1{
	poke stack(stackid),1,(peek(stack(stackid),1) & 0x01) | 0x10 | ((peek(memory,wpeek(stack(0),10)) & (1 << bit)) & (0x20 | 0x08)) | (peek(memory,wpeek(stack(0),10)) & (0x20 | 0x08))
	wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(stackid),1,(peek(stack(stackid),1) & 0x01) | 0x10 | ((peek(stack(stackid),regforbit) & (1 << bit)) & (0x20 | 0x08)) | (peek(stack(stackid),regforbit) & (0x20 | 0x08))
	}
}
if cbopcodecallid>=128 and cbopcodecallid<=0xBF{
regfromopcodeforbit=(cbopcodecallid-40)-(8*cbopcodecallidforbit)
switch regfromopcodeforbit
case 0
regforbit=2
swbreak
case 1
regforbit=3
swbreak
case 2
regforbit=4
swbreak
case 3
regforbit=5
swbreak
case 4
regforbit=6
swbreak
case 5
regforbit=7
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x40){poke stack(stackid),1,peek(stack(stackid),1)^0x40}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}*/
	if regforbit=-1{
	poke memory,wpeek(stack(0),10),peek(memory,wpeek(stack(0),10)) & (1<<regfromopcodeforbit)
	wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(stackid),regforbit,peek(stack(stackid),regforbit) & (1<<regfromopcodeforbit)
	}
}
if cbopcodecallid>=0xC0 and cbopcodecallid<=0xFF{
regfromopcodeforbit=(cbopcodecallid-40)-(8*cbopcodecallidforbit)
switch regfromopcodeforbit
case 0
regforbit=2
swbreak
case 1
regforbit=3
swbreak
case 2
regforbit=4
swbreak
case 3
regforbit=5
swbreak
case 4
regforbit=6
swbreak
case 5
regforbit=7
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
/*if regforbit=-1{}else{}*/
	//if (peek(stack(stackid),1) & 0x01){}else{poke stack(stackid),1,peek(stack(stackid),1)^cforrlc}
	/*if peek(stack(0),regforbit) & (1<<regfromopcodeforbit){
	}
	if (peek(stack(stackid),1) & 0x10){poke stack(stackid),1,peek(stack(stackid),1)^0x10}
	if (peek(stack(stackid),1) & 0x40){poke stack(stackid),1,peek(stack(stackid),1)^0x40}
	if (peek(stack(stackid),1) & 0x02){poke stack(stackid),1,peek(stack(stackid),1)^0x02}*/
	if regforbit=-1{
	poke memory,wpeek(stack(0),10),peek(memory,wpeek(stack(0),10)) | (1<<regfromopcodeforbit)
	wpoke stack(0),10,wpeek(stack(0),10)+2
	}else{
	poke stack(stackid),regforbit,peek(stack(stackid),regforbit) | (1<<regfromopcodeforbit)
	}
}
return
*opcode_cc
if peek(stack(stackid),1) | (0x40){
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_cd
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
return
*opcode_ce
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(memory,wpeek(stack(0),10))+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_cf
poke memory,wpeek(stack(0),12)-1,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-2,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,8
return
*opcode_d0
if peek(stack(stackid),1) | (0x01){}else{
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
}
return
*opcode_d1
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),4,wpeek(stack(0),12)
return
*opcode_d2
if peek(stack(stackid),1) | (0x01){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_d3
poke iomemory,peek(memory,wpeek(stack(0),10)),peek(stack(0),0)
iomemorycalled=1
iomemorycalledid=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_d4
if peek(stack(stackid),1) | (0x01){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_d5
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),4)
wpoke stack(0),12,wpeek(stack(0),12)-2
return
*opcode_d6
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(memory,wpeek(stack(0),10))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_d7
poke memory,wpeek(stack(0),12)-1,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-2,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x10
return
*opcode_d8
if peek(stack(stackid),1) | (0x01){
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
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
if peek(stack(stackid),1) | (0x01){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_db
await 100
poke stack(0),0,peek(iomemory,peek(memory,wpeek(stack(0),10)))
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_dc
if peek(stack(stackid),1) | (0x01){
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_dd
opcodeidforddopcode=peek(memory,wpeek(stack(0),10))
opcodeforsubcall=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
switch opcodeforsubcall
case 0x09
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=10
addfromstack=2
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(1),addtostack,calculated
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(1),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(1),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(1),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak

case 0x19
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=10
addfromstack=4
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(1),addtostack,calculated
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(1),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(1),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(1),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak

case 0x21
wpoke stack(1),10,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x22
wpoke memory,wpeek(stack(0),10),wpeek(stack(1),10)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x23
wpoke stack(1),10,wpeek(stack(1),10)+1
swbreak
case 0x24
calculated=0
calculated=peek(stack(1),10)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(1),10,calculated
swbreak
case 0x25
calculated=0
calculated=peek(stack(1),10)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(1),10,calculated
swbreak
case 0x26
poke stack(1),10,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x29
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=10
addfromstack=11
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(1),addfromstack)
if peek(stack(1),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(1),addtostack,calculated
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(1),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(1),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(1),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak
case 0x2A
wpoke stack(1),10,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x2B
wpoke stack(1),10,wpeek(stack(1),10)-1
swbreak
case 0x2C
calculated=0
calculated=peek(stack(1),11)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(1),11,calculated
swbreak
case 0x2D
calculated=0
calculated=peek(stack(1),11)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(1),11,calculated
swbreak
case 0x2E
poke stack(1),11,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x39
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=10
addfromstack=12
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(1),addtostack,calculated
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(1),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(1),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(1),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak

case 0xFF
z80class@=0
swbreak
default
opcodeidforddopcodeaddcall=((opcodeidforddopcode-40)/6)
opcodeidforddopcodeaddcall2=((opcodeidforddopcode-40)-(opcodeidforddopcodeaddcall*6))-4
if opcodeidforddopcode>=0x44 and opcodeidforddopcode<=0x5E{}else{
opcode=peek(memory,wpeek(stack(0),10))
lpoke jumplabel,0,opcodeaddr(opcode)
wpoke stack(0),10,wpeek(stack(0),10)+1
gosub jumplabel
}
swbreak
swend
opcodeidforddopcodeaddcall=((opcodeidforddopcode-40)/6)
opcodeidforddopcodeaddcall2=((opcodeidforddopcode-40)-(opcodeidforddopcodeaddcall*6))-4
if opcodeidforddopcode>=0x44 and opcodeidforddopcode<=0x5E{
switch opcodeidforddopcodeaddcall
case 0
regforbit=2
swbreak
case 1
regforbit=3
swbreak
case 2
regforbit=4
swbreak
case 3
regforbit=5
swbreak
case 4
regforbit=6
swbreak
case 5
regforbit=7
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
if opcodeidforddopcodeaddcall2=0 and regforbit=-1{}else{poke stack(stackid),regforbit,peek(stack(1),10)}
if opcodeidforddopcodeaddcall2=1 and regforbit=-1{}else{poke stack(stackid),regforbit,peek(stack(1),11)}
if opcodeidforddopcodeaddcall2=2 and regforbit=-1{}else{poke stack(stackid),regforbit,peek(memory,wpeek(stack(1),10)+peek(memory,wpeek(stack(0),10))):wpoke stack(0),10,wpeek(stack(0),10)+1}
}
return
*opcode_de
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(memory,wpeek(stack(0),10))-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_df
poke memory,wpeek(stack(0),12)-1,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-2,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x18
return
*opcode_e0
if (peek(stack(stackid),1) | (0x04)){}else{
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
}
return
*opcode_e1
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),6,wpeek(stack(0),12)
return
*opcode_e2
if (peek(stack(stackid),1) | (0x04)){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_e3
bak_sphl1=wpeek(stack(stackid),6)
bak_sphl2=wpeek(stack(stackid),12)
wpoke stack(stackid),12,bak_sphl1
wpoke stack(stackid),6,bak_sphl2
return
*opcode_e4
if (peek(stack(stackid),1) | (0x04)){}else{
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_e5
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),6)
wpoke stack(0),12,wpeek(stack(0),12)-2
return
*opcode_e6
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)&peek(memory,wpeek(stack(0),10))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_e7
poke memory,wpeek(stack(0),12)-1,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-2,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x20
return
*opcode_e8
if (peek(stack(stackid),1) | (0x04)){
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
}
return
*opcode_e9
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),6))
return
*opcode_ea
if (peek(stack(stackid),1) | (0x04)){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_eb
bak_sphl1=wpeek(stack(stackid),6)
bak_sphl2=wpeek(stack(stackid),12)
wpoke stack(stackid),12,bak_sphl1
wpoke stack(stackid),6,bak_sphl2
return
*opcode_ec
if (peek(stack(stackid),1) | (0x04)){
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return

*opcode_ed
opcodeforsubcall=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
switch opcodeforsubcall
case 0x40
await 100
if peek(iomemory,peek(stack(0),3))=0{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),3))>=128{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x80)}
poke stack(0),2,peek(iomemory,peek(stack(0),3))
swbreak
case 0x41
poke iomemory,peek(stack(0),3),peek(stack(0),2)
iomemorycalled=1
iomemorycalledid=peek(stack(0),3)
swbreak
case 0x42
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=wpeek(stack(stackid),addtostack)-wpeek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak
case 0x43
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(0),2)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x44
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(stack(stackid),addfromstack)
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak
case 0x45
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
poke stack(1),14,0,peek(stack(1),15)
swbreak
case 0x46
z80runmode=0
swbreak
case 0x47
poke stack(0),14,peek(stack(0),0)
swbreak
case 0x48
await 100
if peek(iomemory,peek(stack(0),3))=0{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),3))>=128{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x80)}
poke stack(0),3,peek(iomemory,peek(stack(0),3))
swbreak
case 0x49
poke iomemory,peek(stack(0),3),peek(stack(0),3)
iomemorycalled=1
iomemorycalledid=peek(stack(0),3)
swbreak
case 0x4A
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak
case 0x4B
wpoke stack(0),2,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak

case 0x4D
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
poke stack(1),14,0,peek(stack(1),15)
swbreak

case 0x4F
poke stack(0),15,peek(stack(0),0)
swbreak
case 0x50
await 100
if peek(iomemory,peek(stack(0),3))=0{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),3))>=128{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x80)}
poke stack(0),4,peek(iomemory,peek(stack(0),3))
swbreak
case 0x51
poke iomemory,peek(stack(0),3),peek(stack(0),4)
iomemorycalled=1
iomemorycalledid=peek(stack(0),3)
swbreak
case 0x52
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=wpeek(stack(stackid),addtostack)-wpeek(stack(stackid),addfromstack)-(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak
case 0x53
wpoke memory,wpeek(memory,wpeek(stack(0),10)),wpeek(stack(0),4)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak

case 0x56
z80runmode=1
swbreak
case 0x57
poke stack(0),0,peek(stack(0),14)
swbreak
case 0x58
await 100
if peek(iomemory,peek(stack(0),3))=0{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),3))>=128{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x80)}
poke stack(0),5,peek(iomemory,peek(stack(0),3))
swbreak
case 0x59
poke iomemory,peek(stack(0),3),peek(stack(0),5)
iomemorycalled=1
iomemorycalledid=peek(stack(0),3)
swbreak
case 0x5A
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=6
addfromstack=4
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)+peek(stack(stackid),addfromstack)+(peek(stack(stackid),1) & (0x01))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak
case 0x5B
wpoke stack(0),4,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak

case 0x5E
z80runmode=2
swbreak
case 0x5F
poke stack(0),0,peek(stack(0),15)
swbreak
case 0x60
await 100
if peek(iomemory,peek(stack(0),3))=0{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),3))>=128{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x80)}
poke stack(0),6,peek(iomemory,peek(stack(0),3))
swbreak
case 0x61
poke iomemory,peek(stack(0),3),peek(stack(0),6)
iomemorycalled=1
iomemorycalledid=peek(stack(0),3)
swbreak

case 0x68
await 100
if peek(iomemory,peek(stack(0),3))=0{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x40)}
if peek(iomemory,peek(stack(0),3))>=128{poke stack(stackid),1,peek(stack(stackid),1) ^ (0x80)}
poke stack(0),7,peek(iomemory,peek(stack(0),3))
swbreak
case 0x69
poke iomemory,peek(stack(0),3),peek(stack(0),7)
iomemorycalled=1
iomemorycalledid=peek(stack(0),3)
swbreak

case 0x7B
wpoke stack(0),12,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
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
poke stack(0),1,(peek(stack(0),1) & 0x01) | (resforcpiis0 & (0x20 | 0x08)) | ((peek(stack(0),0) ^ valforcpi ^ resforcpi) & 0x10) | 0x02
if (peek(stack(0),1) & 0x10) {resforcpi -= 1}
	if(resforcpi & 0x02) {poke stack(0),1,peek(stack(0),1) | 0x20}
	if(resforcpi & 0x08) {poke stack(0),1,peek(stack(0),1) | 0x08}
swbreak
case 0xA2
await 100
poke memory,wpeek(stack(0),6),peek(iomemory,peek(stack(0),4))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
swbreak
case 0xA3
poke iomemory,peek(stack(0),4),peek(memory,wpeek(stack(0),6))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
iomemorycalled=1
iomemorycalledid=peek(stack(0),4)
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
poke stack(0),1,(peek(stack(0),1) & 0x01) | (resforcpiis0 & (0x20 | 0x08)) | ((peek(stack(0),0) ^ valforcpi ^ resforcpi) & 0x10) | 0x02
if (peek(stack(0),1) & 0x10) {resforcpi -= 1}
	if(resforcpi & 0x02) {poke stack(0),1,peek(stack(0),1) | 0x20}
	if(resforcpi & 0x08) {poke stack(0),1,peek(stack(0),1) | 0x08}
swbreak
case 0xAA
await 100
poke memory,wpeek(stack(0),6),peek(iomemory,peek(stack(0),4))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
swbreak
case 0xAB
poke iomemory,peek(stack(0),4),peek(memory,wpeek(stack(0),6))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
iomemorycalled=1
iomemorycalledid=peek(stack(0),4)
swbreak

case 0xB0
memcpy memory,memory,wpeek(stack(0),2),wpeek(stack(0),4),wpeek(stack(0),6)
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
poke stack(0),1,(peek(stack(0),1) & 0x01) | (resforcpiis0 & (0x20 | 0x08)) | ((peek(stack(0),0) ^ valforcpi ^ resforcpi) & 0x10) | 0x02
if (peek(stack(0),1) & 0x10) {resforcpi -= 1}
	if(resforcpi & 0x02) {poke stack(0),1,peek(stack(0),1) | 0x20}
	if(resforcpi & 0x08) {poke stack(0),1,peek(stack(0),1) | 0x08}
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak
case 0xB2
await 100
poke memory,wpeek(stack(0),6),peek(iomemory,peek(stack(0),4))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)+1
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
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak

case 0xB8
memcpy memory,memory,wpeek(stack(0),2),wpeek(stack(0),4)-wpeek(stack(0),2),wpeek(stack(0),6)-wpeek(stack(0),2)
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
poke stack(0),1,(peek(stack(0),1) & 0x01) | (resforcpiis0 & (0x20 | 0x08)) | ((peek(stack(0),0) ^ valforcpi ^ resforcpi) & 0x10) | 0x02
if (peek(stack(0),1) & 0x10) {resforcpi -= 1}
	if(resforcpi & 0x02) {poke stack(0),1,peek(stack(0),1) | 0x20}
	if(resforcpi & 0x08) {poke stack(0),1,peek(stack(0),1) | 0x08}
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak
case 0xBA
await 100
poke memory,wpeek(stack(0),6),peek(iomemory,peek(stack(0),4))
poke stack(0),3,peek(stack(0),3)-1
wpoke stack(0),6,wpeek(stack(0),6)-1
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
if peek(stack(0),3)=0{}else{
wpoke stack(0),10,wpeek(stack(0),10)-2
}
swbreak
default
opcode=peek(memory,wpeek(stack(0),10))
lpoke jumplabel,0,opcodeaddr(opcode)
wpoke stack(0),10,wpeek(stack(0),10)+1
gosub jumplabel
swbreak
swend
return
*opcode_ee
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)^peek(memory,wpeek(stack(0),10))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
//if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_ef
poke memory,wpeek(stack(0),12)-1,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-2,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x28
return
*opcode_f0
if (peek(stack(stackid),1) | (0x80)){}else{
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
}
return
*opcode_f1
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),0,wpeek(stack(0),12)
return
*opcode_f2
if (peek(stack(stackid),1) | (0x80)){wpoke stack(0),10,wpeek(stack(0),10)+2}else{
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}
return
*opcode_f3
poke stack(1),14,0
poke stack(1),15,0
return
*opcode_f4
if (peek(stack(stackid),1) | (0x80)){}else{
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_f5
wpoke memory,wpeek(stack(0),12),wpeek(stack(0),0)
wpoke stack(0),12,wpeek(stack(0),12)-2
return
*opcode_f6
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x01)
poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=0
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)|peek(memory,wpeek(stack(0),10))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
poke stack(stackid),addtostack,calculated
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(stackid),addtostack)=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(stackid),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(stackid),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(stackid),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_f7
poke memory,wpeek(stack(0),12)-1,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-2,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x30
return
*opcode_f8
if (peek(stack(stackid),1) | (0x80)){
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),12))
}
return
*opcode_f9
wpoke stack(0),12,wpeek(stack(0),6)
return
*opcode_fa
if (peek(stack(stackid),1) | (0x80)){
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_fb
poke stack(1),14,1
poke stack(1),15,1
z80afterei=1
return
*opcode_fc
if (peek(stack(stackid),1) | (0x80)){
wpoke memory,wpeek(stack(0),12),wpeek(memory,wpeek(stack(0),10))+2
wpoke stack(0),12,wpeek(stack(0),12)+2
wpoke stack(0),10,wpeek(memory,wpeek(stack(0),10))
}else{wpoke stack(0),10,wpeek(stack(0),10)+2}
return
*opcode_fd
opcodeidforddopcode=peek(memory,wpeek(stack(0),10))
opcodeforsubcall=peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
switch opcodeforsubcall
case 0x09
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=12
addfromstack=2
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(1),addtostack,calculated
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(1),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(1),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(1),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak

case 0x19
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=12
addfromstack=4
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(1),addtostack,calculated
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(1),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(1),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(1),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak

case 0x21
wpoke stack(1),12,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x22
wpoke memory,wpeek(stack(0),10),wpeek(stack(1),12)
wpoke stack(0),10,wpeek(stack(0),10)+2
swbreak
case 0x23
wpoke stack(1),12,wpeek(stack(1),12)+1
swbreak
case 0x24
calculated=0
calculated=peek(stack(1),12)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(1),12,calculated
swbreak
case 0x25
calculated=0
calculated=peek(stack(1),12)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(1),12,calculated
swbreak
case 0x26
poke stack(1),12,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x29
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=12
addfromstack=11
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(1),addfromstack)
if peek(stack(1),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(1),addtostack,calculated
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(1),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(1),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(1),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak
case 0x2A
wpoke stack(1),12,wpeek(memory,wpeek(stack(0),10))
wpoke stack(0),12,wpeek(stack(0),10)+2
swbreak
case 0x2B
wpoke stack(1),12,wpeek(stack(1),12)-1
swbreak
case 0x2C
calculated=0
calculated=peek(stack(1),13)+1
if calculated=256{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=128{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x00{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(1),13,calculated
swbreak
case 0x2D
calculated=0
calculated=peek(stack(1),13)-1
if calculated=-1{poke stack(stackid),1,(peek(stack(stackid),1) & 0x01)}
if calculated=127{poke stack(stackid),1,(peek(stack(stackid),1) | 0x04)}
if (calculated & 0x0F) = 0x0F{poke stack(stackid),1,(peek(stack(stackid),1) | 0x10)}
poke stack(1),13,calculated
swbreak
case 0x2E
poke stack(1),13,peek(memory,wpeek(stack(0),10))
wpoke stack(0),10,wpeek(stack(0),10)+1
swbreak

case 0x39
if (peek(stack(stackid),1) ^ (0x02))=0{poke stack(stackid),1,peek(stack(stackid),1) | (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=12
addfromstack=12
addold=peek(stack(1),addtostack)
calculated=wpeek(stack(1),addtostack)+wpeek(stack(0),addfromstack)
if peek(stack(1),addtostack) | 0b00001000{halfcarrychk=1}
wpoke stack(1),addtostack,calculated
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if peek(stack(1),addtostack)=0 and peek(stack(1),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if peek(stack(1),addtostack)=0 and addold!0						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if peek(stack(1),addtostack) | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if peek(stack(1),addtostack) | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
swbreak
default
opcodeidforddopcodeaddcall=((opcodeidforddopcode-40)/6)
opcodeidforddopcodeaddcall2=((opcodeidforddopcode-40)-(opcodeidforddopcodeaddcall*6))-4
if opcodeidforddopcode>=0x44 and opcodeidforddopcode<=0x5E{}else{
opcode=peek(memory,wpeek(stack(0),10))
lpoke jumplabel,0,opcodeaddr(opcode)
wpoke stack(0),10,wpeek(stack(0),10)+1
gosub jumplabel
}
swbreak
swend
opcodeidforddopcodeaddcall=((opcodeidforddopcode-40)/6)
opcodeidforddopcodeaddcall2=((opcodeidforddopcode-40)-(opcodeidforddopcodeaddcall*6))-4
if opcodeidforddopcode>=0x44 and opcodeidforddopcode<=0x5E{
switch opcodeidforddopcodeaddcall
case 0
regforbit=2
swbreak
case 1
regforbit=3
swbreak
case 2
regforbit=4
swbreak
case 3
regforbit=5
swbreak
case 4
regforbit=6
swbreak
case 5
regforbit=7
swbreak
case 6
regforbit=-1
swbreak
case 7
regforbit=0
swbreak
swend
if opcodeidforddopcodeaddcall2=0 and regforbit=-1{}else{poke stack(stackid),regforbit,peek(stack(1),12)}
if opcodeidforddopcodeaddcall2=1 and regforbit=-1{}else{poke stack(stackid),regforbit,peek(stack(1),13)}
if opcodeidforddopcodeaddcall2=2 and regforbit=-1{}else{poke stack(stackid),regforbit,peek(memory,wpeek(stack(1),12)+peek(memory,wpeek(stack(0),10))):wpoke stack(0),10,wpeek(stack(0),10)+1}
}
return
*opcode_fe
if (peek(stack(stackid),1) & (0x02)){poke stack(stackid),1,peek(stack(stackid),1) ^ (0x02)}
addold=0
calculated=0
halfcarrychk=0
addtostack=0
addfromstack=2
addold=peek(stack(stackid),addtostack)
calculated=peek(stack(stackid),addtostack)-peek(memory,wpeek(stack(0),10))
if peek(stack(stackid),addtostack) | 0b00001000{halfcarrychk=1}
//poke stack(stackid),addtostack,calculated
if calculated=0 and peek(stack(stackid),addtostack)=calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x01)}
if calculated=0 and peek(stack(stackid),addtostack)!calculated{poke stack(stackid),1,peek(stack(stackid),1) | (0x04)}
if calculated=0 /*and addold!0*/						 {poke stack(stackid),1,peek(stack(stackid),1) | (0x40)}

if calculated | 0b00010000 and halfcarrychk=1{poke stack(stackid),1,peek(stack(stackid),1) | (0x10):halfcarrychk=0}
if calculated | 0x80{poke stack(stackid),1,peek(stack(stackid),1) | (0x80)}
wpoke stack(0),10,wpeek(stack(0),10)+1
return
*opcode_ff
poke memory,wpeek(stack(0),12)-1,peek(stack(0),10)
poke memory,wpeek(stack(0),12)-2,peek(stack(0),11)
wpoke stack(0),12,wpeek(stack(0),12)-2
wpoke stack(0),10,0x38
return

//logmes "Unimplemented!"
return
#global
gocaine_z80init
