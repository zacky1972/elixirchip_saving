
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list rgmii1_rx_clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {u_rgmii_if_1/debug.dbg_rx_ctl[0]} {u_rgmii_if_1/debug.dbg_rx_ctl[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {u_rgmii_if_1/debug.dbg_rx_d[0]} {u_rgmii_if_1/debug.dbg_rx_d[1]} {u_rgmii_if_1/debug.dbg_rx_d[2]} {u_rgmii_if_1/debug.dbg_rx_d[3]} {u_rgmii_if_1/debug.dbg_rx_d[4]} {u_rgmii_if_1/debug.dbg_rx_d[5]} {u_rgmii_if_1/debug.dbg_rx_d[6]} {u_rgmii_if_1/debug.dbg_rx_d[7]}]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list rgmii0_rx_clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 8 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {u_rgmii_if_0/debug.dbg_rx_d[0]} {u_rgmii_if_0/debug.dbg_rx_d[1]} {u_rgmii_if_0/debug.dbg_rx_d[2]} {u_rgmii_if_0/debug.dbg_rx_d[3]} {u_rgmii_if_0/debug.dbg_rx_d[4]} {u_rgmii_if_0/debug.dbg_rx_d[5]} {u_rgmii_if_0/debug.dbg_rx_d[6]} {u_rgmii_if_0/debug.dbg_rx_d[7]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 2 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {u_rgmii_if_0/debug.dbg_rx_ctl[0]} {u_rgmii_if_0/debug.dbg_rx_ctl[1]}]]
create_debug_core u_ila_2 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_2]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_2]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_2]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_2]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_2]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_2]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_2]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_2]
set_property port_width 1 [get_debug_ports u_ila_2/clk]
connect_debug_port u_ila_2/clk [get_nets [list u_design_1/clk_wiz_0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe0]
set_property port_width 2 [get_debug_ports u_ila_2/probe0]
connect_debug_port u_ila_2/probe0 [get_nets [list {u_rgmii_if_1/debug.dbg_tx_ctl[0]} {u_rgmii_if_1/debug.dbg_tx_ctl[1]}]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe1]
set_property port_width 2 [get_debug_ports u_ila_2/probe1]
connect_debug_port u_ila_2/probe1 [get_nets [list {u_rgmii_if_0/debug.dbg_tx_ctl[0]} {u_rgmii_if_0/debug.dbg_tx_ctl[1]}]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe2]
set_property port_width 8 [get_debug_ports u_ila_2/probe2]
connect_debug_port u_ila_2/probe2 [get_nets [list {u_rgmii_if_1/debug.dbg_tx_d[0]} {u_rgmii_if_1/debug.dbg_tx_d[1]} {u_rgmii_if_1/debug.dbg_tx_d[2]} {u_rgmii_if_1/debug.dbg_tx_d[3]} {u_rgmii_if_1/debug.dbg_tx_d[4]} {u_rgmii_if_1/debug.dbg_tx_d[5]} {u_rgmii_if_1/debug.dbg_tx_d[6]} {u_rgmii_if_1/debug.dbg_tx_d[7]}]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe3]
set_property port_width 8 [get_debug_ports u_ila_2/probe3]
connect_debug_port u_ila_2/probe3 [get_nets [list {u_rgmii_if_0/debug.dbg_tx_d[0]} {u_rgmii_if_0/debug.dbg_tx_d[1]} {u_rgmii_if_0/debug.dbg_tx_d[2]} {u_rgmii_if_0/debug.dbg_tx_d[3]} {u_rgmii_if_0/debug.dbg_tx_d[4]} {u_rgmii_if_0/debug.dbg_tx_d[5]} {u_rgmii_if_0/debug.dbg_tx_d[6]} {u_rgmii_if_0/debug.dbg_tx_d[7]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets rgmii0_tx_clk]