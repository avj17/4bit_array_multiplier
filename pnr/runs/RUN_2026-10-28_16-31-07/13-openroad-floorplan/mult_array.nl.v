module mult_array (clk,
    rst_n,
    a,
    b,
    p);
 input clk;
 input rst_n;
 input [3:0] a;
 input [3:0] b;
 output [7:0] p;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire \a_reg[0] ;
 wire \a_reg[1] ;
 wire \a_reg[2] ;
 wire \a_reg[3] ;
 wire \b_reg[0] ;
 wire \b_reg[1] ;
 wire \b_reg[2] ;
 wire \b_reg[3] ;
 wire \fa1_0.sum ;
 wire \fa2_0.sum ;
 wire \fa3_0.sum ;
 wire \fa3_1.sum ;
 wire \fa3_2.sum ;
 wire \fa3_3.cout ;
 wire \fa3_3.sum ;
 wire \p_comb[0] ;

 sky130_fd_sc_hd__nand2_1 _37_ (.A(\a_reg[0] ),
    .B(\b_reg[2] ),
    .Y(_00_));
 sky130_fd_sc_hd__nand2_1 _38_ (.A(\b_reg[0] ),
    .B(\a_reg[2] ),
    .Y(_01_));
 sky130_fd_sc_hd__and2_0 _39_ (.A(\a_reg[0] ),
    .B(\b_reg[0] ),
    .X(\p_comb[0] ));
 sky130_fd_sc_hd__nand2_1 _40_ (.A(\a_reg[1] ),
    .B(\b_reg[1] ),
    .Y(_02_));
 sky130_fd_sc_hd__or3_1 _41_ (.A(_01_),
    .B(\p_comb[0] ),
    .C(_02_),
    .X(_03_));
 sky130_fd_sc_hd__o21ai_0 _42_ (.A1(\p_comb[0] ),
    .A2(_02_),
    .B1(_01_),
    .Y(_04_));
 sky130_fd_sc_hd__and2_0 _43_ (.A(_03_),
    .B(_04_),
    .X(_05_));
 sky130_fd_sc_hd__nand4_1 _44_ (.A(\a_reg[0] ),
    .B(\b_reg[2] ),
    .C(_03_),
    .D(_04_),
    .Y(_06_));
 sky130_fd_sc_hd__xnor2_1 _45_ (.A(_00_),
    .B(_05_),
    .Y(\fa2_0.sum ));
 sky130_fd_sc_hd__nand2_1 _46_ (.A(\a_reg[0] ),
    .B(\b_reg[3] ),
    .Y(_07_));
 sky130_fd_sc_hd__nand2_1 _47_ (.A(\b_reg[0] ),
    .B(\a_reg[3] ),
    .Y(_08_));
 sky130_fd_sc_hd__nand2_1 _48_ (.A(\a_reg[2] ),
    .B(\b_reg[1] ),
    .Y(_09_));
 sky130_fd_sc_hd__nand4_1 _49_ (.A(\a_reg[1] ),
    .B(\b_reg[0] ),
    .C(\a_reg[2] ),
    .D(\b_reg[1] ),
    .Y(_10_));
 sky130_fd_sc_hd__nand4_1 _50_ (.A(\a_reg[0] ),
    .B(\a_reg[1] ),
    .C(\b_reg[0] ),
    .D(\b_reg[1] ),
    .Y(_11_));
 sky130_fd_sc_hd__a21boi_0 _51_ (.A1(_09_),
    .A2(_11_),
    .B1_N(_10_),
    .Y(_12_));
 sky130_fd_sc_hd__xor2_1 _52_ (.A(_08_),
    .B(_12_),
    .X(_13_));
 sky130_fd_sc_hd__nand2_1 _53_ (.A(\a_reg[1] ),
    .B(\b_reg[2] ),
    .Y(_14_));
 sky130_fd_sc_hd__xnor3_1 _54_ (.A(_06_),
    .B(_13_),
    .C(_14_),
    .X(_15_));
 sky130_fd_sc_hd__nand3_1 _55_ (.A(\a_reg[0] ),
    .B(\b_reg[3] ),
    .C(_15_),
    .Y(_16_));
 sky130_fd_sc_hd__xnor2_1 _56_ (.A(_07_),
    .B(_15_),
    .Y(\fa3_0.sum ));
 sky130_fd_sc_hd__nand2_1 _57_ (.A(\b_reg[2] ),
    .B(\a_reg[2] ),
    .Y(_17_));
 sky130_fd_sc_hd__a21oi_1 _58_ (.A1(_09_),
    .A2(_11_),
    .B1(_08_),
    .Y(_18_));
 sky130_fd_sc_hd__inv_1 _59_ (.A(_18_),
    .Y(_19_));
 sky130_fd_sc_hd__nand2_1 _60_ (.A(\a_reg[3] ),
    .B(\b_reg[1] ),
    .Y(_20_));
 sky130_fd_sc_hd__a21o_1 _61_ (.A1(_10_),
    .A2(_20_),
    .B1(_18_),
    .X(_21_));
 sky130_fd_sc_hd__xnor2_1 _62_ (.A(_17_),
    .B(_21_),
    .Y(_22_));
 sky130_fd_sc_hd__maj3_1 _63_ (.A(_06_),
    .B(_13_),
    .C(_14_),
    .X(_23_));
 sky130_fd_sc_hd__xnor2_1 _64_ (.A(_22_),
    .B(_23_),
    .Y(_24_));
 sky130_fd_sc_hd__nand2_1 _65_ (.A(\b_reg[3] ),
    .B(\a_reg[1] ),
    .Y(_25_));
 sky130_fd_sc_hd__xnor3_1 _66_ (.A(_16_),
    .B(_24_),
    .C(_25_),
    .X(\fa3_1.sum ));
 sky130_fd_sc_hd__nand2_1 _67_ (.A(\b_reg[3] ),
    .B(\a_reg[2] ),
    .Y(_26_));
 sky130_fd_sc_hd__maj3_1 _68_ (.A(_17_),
    .B(_21_),
    .C(_23_),
    .X(_27_));
 sky130_fd_sc_hd__nand2_1 _69_ (.A(\b_reg[2] ),
    .B(\a_reg[3] ),
    .Y(_28_));
 sky130_fd_sc_hd__mux2i_1 _70_ (.A0(_28_),
    .A1(\b_reg[2] ),
    .S(_18_),
    .Y(_29_));
 sky130_fd_sc_hd__xor2_1 _71_ (.A(_27_),
    .B(_29_),
    .X(_30_));
 sky130_fd_sc_hd__xor2_1 _72_ (.A(_26_),
    .B(_30_),
    .X(_31_));
 sky130_fd_sc_hd__maj3_1 _73_ (.A(_16_),
    .B(_24_),
    .C(_25_),
    .X(_32_));
 sky130_fd_sc_hd__xnor2_1 _74_ (.A(_31_),
    .B(_32_),
    .Y(\fa3_2.sum ));
 sky130_fd_sc_hd__nand2_1 _75_ (.A(\b_reg[3] ),
    .B(\a_reg[3] ),
    .Y(_33_));
 sky130_fd_sc_hd__a21o_1 _76_ (.A1(_19_),
    .A2(_27_),
    .B1(_28_),
    .X(_34_));
 sky130_fd_sc_hd__maj3_1 _77_ (.A(_26_),
    .B(_30_),
    .C(_32_),
    .X(_35_));
 sky130_fd_sc_hd__a21oi_1 _78_ (.A1(_34_),
    .A2(_35_),
    .B1(_33_),
    .Y(\fa3_3.cout ));
 sky130_fd_sc_hd__xnor3_1 _79_ (.A(_33_),
    .B(_34_),
    .C(_35_),
    .X(\fa3_3.sum ));
 sky130_fd_sc_hd__a22oi_1 _80_ (.A1(\a_reg[1] ),
    .A2(\b_reg[0] ),
    .B1(\b_reg[1] ),
    .B2(\a_reg[0] ),
    .Y(_36_));
 sky130_fd_sc_hd__a31oi_1 _81_ (.A1(\a_reg[1] ),
    .A2(\b_reg[1] ),
    .A3(\p_comb[0] ),
    .B1(_36_),
    .Y(\fa1_0.sum ));
 sky130_fd_sc_hd__dfrtp_1 _82_ (.CLK(clk),
    .D(\p_comb[0] ),
    .RESET_B(rst_n),
    .Q(p[0]));
 sky130_fd_sc_hd__dfrtp_1 _83_ (.CLK(clk),
    .D(\fa1_0.sum ),
    .RESET_B(rst_n),
    .Q(p[1]));
 sky130_fd_sc_hd__dfrtp_1 _84_ (.CLK(clk),
    .D(\fa2_0.sum ),
    .RESET_B(rst_n),
    .Q(p[2]));
 sky130_fd_sc_hd__dfrtp_1 _85_ (.CLK(clk),
    .D(\fa3_0.sum ),
    .RESET_B(rst_n),
    .Q(p[3]));
 sky130_fd_sc_hd__dfrtp_1 _86_ (.CLK(clk),
    .D(\fa3_1.sum ),
    .RESET_B(rst_n),
    .Q(p[4]));
 sky130_fd_sc_hd__dfrtp_1 _87_ (.CLK(clk),
    .D(\fa3_2.sum ),
    .RESET_B(rst_n),
    .Q(p[5]));
 sky130_fd_sc_hd__dfrtp_1 _88_ (.CLK(clk),
    .D(\fa3_3.sum ),
    .RESET_B(rst_n),
    .Q(p[6]));
 sky130_fd_sc_hd__dfrtp_1 _89_ (.CLK(clk),
    .D(\fa3_3.cout ),
    .RESET_B(rst_n),
    .Q(p[7]));
 sky130_fd_sc_hd__dfrtp_1 _90_ (.CLK(clk),
    .D(a[0]),
    .RESET_B(rst_n),
    .Q(\a_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _91_ (.CLK(clk),
    .D(a[1]),
    .RESET_B(rst_n),
    .Q(\a_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _92_ (.CLK(clk),
    .D(a[2]),
    .RESET_B(rst_n),
    .Q(\a_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _93_ (.CLK(clk),
    .D(a[3]),
    .RESET_B(rst_n),
    .Q(\a_reg[3] ));
 sky130_fd_sc_hd__dfrtp_1 _94_ (.CLK(clk),
    .D(b[0]),
    .RESET_B(rst_n),
    .Q(\b_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _95_ (.CLK(clk),
    .D(b[1]),
    .RESET_B(rst_n),
    .Q(\b_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _96_ (.CLK(clk),
    .D(b[2]),
    .RESET_B(rst_n),
    .Q(\b_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _97_ (.CLK(clk),
    .D(b[3]),
    .RESET_B(rst_n),
    .Q(\b_reg[3] ));
endmodule
