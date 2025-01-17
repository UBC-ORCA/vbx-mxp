# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
	set FXP_BITS [ipgui::add_param $IPINST -parent $Page0 -name FXP_BITS]
	set VCI_LANES [ipgui::add_param $IPINST -parent $Page0 -name VCI_LANES]
}

proc update_PARAM_VALUE.FXP_BITS { PARAM_VALUE.FXP_BITS } {
	# Procedure called to update FXP_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FXP_BITS { PARAM_VALUE.FXP_BITS } {
	# Procedure called to validate FXP_BITS
	return true
}

proc update_PARAM_VALUE.VCI_LANES { PARAM_VALUE.VCI_LANES } {
	# Procedure called to update VCI_LANES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VCI_LANES { PARAM_VALUE.VCI_LANES } {
	# Procedure called to validate VCI_LANES
	return true
}


proc update_MODELPARAM_VALUE.VCI_LANES { MODELPARAM_VALUE.VCI_LANES PARAM_VALUE.VCI_LANES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VCI_LANES}] ${MODELPARAM_VALUE.VCI_LANES}
}

proc update_MODELPARAM_VALUE.FXP_BITS { MODELPARAM_VALUE.FXP_BITS PARAM_VALUE.FXP_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FXP_BITS}] ${MODELPARAM_VALUE.FXP_BITS}
}

