set SynModuleInfo {
  {SRCNAME matrix_mult MODELNAME matrix_mult RTLNAME matrix_mult IS_TOP 1
    SUBMODULES {
      {MODELNAME matrix_mult_mac_muladd_8s_8s_16ns_16_4_1 RTLNAME matrix_mult_mac_muladd_8s_8s_16ns_16_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mult_flow_control_loop_pipe RTLNAME matrix_mult_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrix_mult_flow_control_loop_pipe_U}
    }
  }
}
