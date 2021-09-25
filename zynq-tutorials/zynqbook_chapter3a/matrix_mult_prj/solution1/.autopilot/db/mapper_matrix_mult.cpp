#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void matrix_mult(char*, char*, short*);
extern "C" void apatb_matrix_mult_hw(volatile void * __xlx_apatb_param_a, volatile void * __xlx_apatb_param_b, volatile void * __xlx_apatb_param_prod) {
  // Collect __xlx_a__tmp_vec
  vector<sc_bv<8> >__xlx_a__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_a__tmp_vec.push_back(((char*)__xlx_apatb_param_a)[j]);
  }
  int __xlx_size_param_a = 25;
  int __xlx_offset_param_a = 0;
  int __xlx_offset_byte_param_a = 0*1;
  char* __xlx_a__input_buffer= new char[__xlx_a__tmp_vec.size()];
  for (int i = 0; i < __xlx_a__tmp_vec.size(); ++i) {
    __xlx_a__input_buffer[i] = __xlx_a__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_b__tmp_vec
  vector<sc_bv<8> >__xlx_b__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    __xlx_b__tmp_vec.push_back(((char*)__xlx_apatb_param_b)[j]);
  }
  int __xlx_size_param_b = 25;
  int __xlx_offset_param_b = 0;
  int __xlx_offset_byte_param_b = 0*1;
  char* __xlx_b__input_buffer= new char[__xlx_b__tmp_vec.size()];
  for (int i = 0; i < __xlx_b__tmp_vec.size(); ++i) {
    __xlx_b__input_buffer[i] = __xlx_b__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_prod__tmp_vec
  vector<sc_bv<16> >__xlx_prod__tmp_vec;
  for (int j = 0, e = 25; j != e; ++j) {
    sc_bv<16> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_prod)[j*2+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_prod)[j*2+1];
    __xlx_prod__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_prod = 25;
  int __xlx_offset_param_prod = 0;
  int __xlx_offset_byte_param_prod = 0*2;
  short* __xlx_prod__input_buffer= new short[__xlx_prod__tmp_vec.size()];
  for (int i = 0; i < __xlx_prod__tmp_vec.size(); ++i) {
    __xlx_prod__input_buffer[i] = __xlx_prod__tmp_vec[i].range(15, 0).to_uint64();
  }
  // DUT call
  matrix_mult(__xlx_a__input_buffer, __xlx_b__input_buffer, __xlx_prod__input_buffer);
// print __xlx_apatb_param_a
  sc_bv<8>*__xlx_a_output_buffer = new sc_bv<8>[__xlx_size_param_a];
  for (int i = 0; i < __xlx_size_param_a; ++i) {
    __xlx_a_output_buffer[i] = __xlx_a__input_buffer[i+__xlx_offset_param_a];
  }
  for (int i = 0; i < __xlx_size_param_a; ++i) {
    ((char*)__xlx_apatb_param_a)[i] = __xlx_a_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_b
  sc_bv<8>*__xlx_b_output_buffer = new sc_bv<8>[__xlx_size_param_b];
  for (int i = 0; i < __xlx_size_param_b; ++i) {
    __xlx_b_output_buffer[i] = __xlx_b__input_buffer[i+__xlx_offset_param_b];
  }
  for (int i = 0; i < __xlx_size_param_b; ++i) {
    ((char*)__xlx_apatb_param_b)[i] = __xlx_b_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_prod
  sc_bv<16>*__xlx_prod_output_buffer = new sc_bv<16>[__xlx_size_param_prod];
  for (int i = 0; i < __xlx_size_param_prod; ++i) {
    __xlx_prod_output_buffer[i] = __xlx_prod__input_buffer[i+__xlx_offset_param_prod];
  }
  for (int i = 0; i < __xlx_size_param_prod; ++i) {
    ((char*)__xlx_apatb_param_prod)[i*2+0] = __xlx_prod_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_prod)[i*2+1] = __xlx_prod_output_buffer[i].range(15, 8).to_uint();
  }
}
