# Semptian F37X I/O constraints

#Flash
#Flash uses default dedicated IO

#========================================================
# PCIE BANK 227/226/225/224 (SLR1 X1Y2)
#========================================================
# PCIE hard IP's external dedicated reset pin
set_property IOSTANDARD LVCMOS18 [get_ports {pcie_rst_n}]
set_property PACKAGE_PIN C19 [get_ports {pcie_rst_n}]

# PCIE hard IP's refclk(100M)
set_property PACKAGE_PIN AR15 [get_ports {pcie_clkp}]
set_property PACKAGE_PIN AR14 [get_ports {pcie_clkn}]

set_property PACKAGE_PIN AL10 [get_ports {pcie_txn[0]}]
set_property PACKAGE_PIN AM8  [get_ports {pcie_txn[1]}]
set_property PACKAGE_PIN AN10 [get_ports {pcie_txn[2]}]
set_property PACKAGE_PIN AP8  [get_ports {pcie_txn[3]}]
set_property PACKAGE_PIN AR10 [get_ports {pcie_txn[4]}]
set_property PACKAGE_PIN AR6  [get_ports {pcie_txn[5]}]
set_property PACKAGE_PIN AT8  [get_ports {pcie_txn[6]}]
set_property PACKAGE_PIN AU10 [get_ports {pcie_txn[7]}]

set_property PACKAGE_PIN AU6  [get_ports {pcie_txn[8]}]
set_property PACKAGE_PIN AV8  [get_ports {pcie_txn[9]}]
set_property PACKAGE_PIN AW10 [get_ports {pcie_txn[10]}]
set_property PACKAGE_PIN AY8  [get_ports {pcie_txn[11]}]
set_property PACKAGE_PIN BA10 [get_ports {pcie_txn[12]}]
set_property PACKAGE_PIN BB8  [get_ports {pcie_txn[13]}]
set_property PACKAGE_PIN BC10 [get_ports {pcie_txn[14]}]
set_property PACKAGE_PIN BC6  [get_ports {pcie_txn[15]}]


