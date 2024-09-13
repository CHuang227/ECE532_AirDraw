// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:camera_capture:1.0
// IP Revision: 1

(* X_CORE_INFO = "camera_capture,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "vga_camera_capture_1_3,camera_capture,{}" *)
(* CORE_GENERATION_INFO = "vga_camera_capture_1_3,camera_capture,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=camera_capture,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ADDR_WIDTH=19,PIX_WIDTH=12,DATA_IN_WIDTH=8}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module vga_camera_capture_1_3 (
  resetn,
  pclk,
  camera_v_sync,
  camera_h_ref,
  din,
  addr,
  dout,
  wr_en,
  dth,
  latced_data,
  mb_addr,
  x_sum_o,
  y_sum_o,
  num_pixel,
  microblaze_enable,
  x_coor,
  y_coor,
  frame_counter,
  reset
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;
input wire pclk;
input wire camera_v_sync;
input wire camera_h_ref;
input wire [7 : 0] din;
output wire [18 : 0] addr;
output wire [11 : 0] dout;
output wire wr_en;
input wire [3 : 0] dth;
output wire [15 : 0] latced_data;
output wire [31 : 0] mb_addr;
output wire [31 : 0] x_sum_o;
output wire [31 : 0] y_sum_o;
output wire [31 : 0] num_pixel;
output wire microblaze_enable;
output wire [9 : 0] x_coor;
output wire [8 : 0] y_coor;
output wire [31 : 0] frame_counter;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
output wire reset;

  camera_capture #(
    .ADDR_WIDTH(19),
    .PIX_WIDTH(12),
    .DATA_IN_WIDTH(8)
  ) inst (
    .resetn(resetn),
    .pclk(pclk),
    .camera_v_sync(camera_v_sync),
    .camera_h_ref(camera_h_ref),
    .din(din),
    .addr(addr),
    .dout(dout),
    .wr_en(wr_en),
    .dth(dth),
    .latced_data(latced_data),
    .mb_addr(mb_addr),
    .x_sum_o(x_sum_o),
    .y_sum_o(y_sum_o),
    .num_pixel(num_pixel),
    .microblaze_enable(microblaze_enable),
    .x_coor(x_coor),
    .y_coor(y_coor),
    .frame_counter(frame_counter),
    .reset(reset)
  );
endmodule
