create_pblock pblock_bsp
#add_cells_to_pblock [get_pblocks pblock_bsp] -top
resize_pblock [get_pblocks pblock_bsp] -add {CLOCKREGION_X4Y5:CLOCKREGION_X5Y8}
#remove_cells_from_pblock [get_pblocks pblock_bsp] [get_cells capi_bis/crc/FRAME_ECCE4_inst2]
#remove_cells_from_pblock [get_pblocks pblock_bsp] [get_cells capi_bis/crc/FRAME_ECCE4_inst1]
#remove_cells_from_pblock [get_pblocks pblock_bsp] [get_cells capi_bis/crc/FRAME_ECCE4_inst0]

add_cells_to_pblock [get_pblocks pblock_bsp] [get_cells -quiet [list GND IBUF_inst VCC capi_bis/GND capi_bis/STARTUPE3_inst capi_bis/VCC capi_bis/axihwicap capi_bis/crc/GND capi_bis/crc/ICAPE3_inst capi_bis/crc/VCC capi_bis/crc/dff_detectsm_q capi_bis/crc/sem_core_inst capi_bis/dff_dummy_q capi_bis/f capi_bis/pcihip0_i_137 capi_bis/pcihip0_i_138 capi_bis/pcihip0_i_139 capi_bis/pcihip0_i_140 capi_bis/pcihip0_i_141 capi_bis/pcihip0_i_183 capi_bis/pcihip0_i_184 capi_bis/pcihip0_i_185 capi_bis/pcihip0_i_186 capi_bis/pcihip0_i_187 capi_bis/pcihip0_i_188 capi_bis/pcihip0_i_189 capi_bis/pcihip0_i_190 capi_bis/pcihip0_i_191 capi_bis/pcihip0_i_192 capi_bis/pcihip0_i_193 capi_bis/pcihip0_i_194 capi_bis/pcihip0_i_195 capi_bis/pcihip0_i_196 capi_bis/v capi_fpga_reset dff_icap_clk_ce p pcihip0 pll0 refclk_ibuf]]

#Hack VSEC address
set_property PF0_SECONDARY_PCIE_CAP_NEXTPTR 12'h400 [get_cells *pcihip0/inst]
set_property PF0_PCIE_CAP_NEXTPTR 8'hb0 [get_cells *pcihip0/inst]

#Place for ports
set_property HD.PARTPIN_RANGE {SLICE_X112Y315:SLICE_X117Y524} [get_ports {ha0* a0h* d0h* hd0* gold* pci_user_reset}]