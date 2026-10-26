module mult_array (clk,
    rst_n,
    a,
    b,
    p,
    VPWR,
    VGND);
 input clk;
 input rst_n;
 input [3:0] a;
 input [3:0] b;
 output [7:0] p;
 inout VPWR;
 inout VGND;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
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

 sg13g2_nand2_1 _056_ (.Y(_000_),
    .A(\a_reg[0] ),
    .B(\b_reg[2] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _057_ (.Y(_001_),
    .A(\b_reg[0] ),
    .B(\a_reg[2] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _058_ (.Y(_002_),
    .A(\a_reg[0] ),
    .B(\b_reg[0] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_inv_1 _059_ (.VDD(VPWR),
    .Y(\p_comb[0] ),
    .A(_002_),
    .VSS(VGND));
 sg13g2_and2_1 _060_ (.A(\a_reg[1] ),
    .B(\b_reg[1] ),
    .X(_003_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _061_ (.Y(_004_),
    .A(\a_reg[1] ),
    .B(\b_reg[1] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _062_ (.A(_001_),
    .B(\p_comb[0] ),
    .C(_004_),
    .Y(_005_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a22oi_1 _063_ (.Y(_006_),
    .B1(_002_),
    .B2(_003_),
    .A2(\a_reg[2] ),
    .A1(\b_reg[0] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _064_ (.A(_000_),
    .B(_005_),
    .C(_006_),
    .Y(_007_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _065_ (.B1(_000_),
    .VDD(VPWR),
    .Y(_008_),
    .VSS(VGND),
    .A1(_005_),
    .A2(_006_));
 sg13g2_nor2b_1 _066_ (.A(_007_),
    .B_N(_008_),
    .Y(\fa2_0.sum ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _067_ (.Y(_009_),
    .A(\a_reg[0] ),
    .B(\b_reg[3] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _068_ (.A(\a_reg[1] ),
    .B(\b_reg[2] ),
    .X(_010_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _069_ (.Y(_011_),
    .A(\b_reg[0] ),
    .B(\a_reg[3] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _070_ (.Y(_012_),
    .A(\a_reg[2] ),
    .B(\b_reg[1] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _071_ (.A(\a_reg[1] ),
    .B(\b_reg[0] ),
    .X(_013_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand4_1 _072_ (.B(\a_reg[1] ),
    .C(\b_reg[0] ),
    .A(\a_reg[0] ),
    .Y(_014_),
    .VDD(VPWR),
    .VSS(VGND),
    .D(\b_reg[1] ));
 sg13g2_mux2_1 _073_ (.A0(_013_),
    .A1(_014_),
    .S(_012_),
    .X(_015_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xor2_1 _074_ (.B(_015_),
    .A(_011_),
    .X(_016_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor2_1 _075_ (.A(_010_),
    .B(_016_),
    .Y(_017_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _076_ (.Y(_018_),
    .A(_010_),
    .B(_016_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xnor2_1 _077_ (.Y(_019_),
    .A(_010_),
    .B(_016_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xnor2_1 _078_ (.Y(_020_),
    .A(_007_),
    .B(_019_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2b_1 _079_ (.Y(_021_),
    .B(_020_),
    .A_N(_009_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xnor2_1 _080_ (.Y(\fa3_0.sum ),
    .A(_009_),
    .B(_020_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _081_ (.A(\b_reg[3] ),
    .B(\a_reg[1] ),
    .X(_022_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _082_ (.Y(_023_),
    .A(\b_reg[2] ),
    .B(\a_reg[2] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21oi_1 _083_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_012_),
    .A2(_014_),
    .Y(_024_),
    .B1(_011_));
 sg13g2_nand2_1 _084_ (.Y(_025_),
    .A(\a_reg[3] ),
    .B(\b_reg[1] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _085_ (.B1(_025_),
    .VDD(VPWR),
    .Y(_026_),
    .VSS(VGND),
    .A1(_001_),
    .A2(_004_));
 sg13g2_nand2b_1 _086_ (.Y(_027_),
    .B(_026_),
    .A_N(_024_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_and2_1 _087_ (.A(_023_),
    .B(_027_),
    .X(_028_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_inv_1 _088_ (.VDD(VPWR),
    .Y(_029_),
    .A(_028_),
    .VSS(VGND));
 sg13g2_xor2_1 _089_ (.B(_027_),
    .A(_023_),
    .X(_030_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _090_ (.B1(_007_),
    .VDD(VPWR),
    .Y(_031_),
    .VSS(VGND),
    .A1(_010_),
    .A2(_016_));
 sg13g2_a21oi_1 _091_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_010_),
    .A2(_016_),
    .Y(_032_),
    .B1(_007_));
 sg13g2_and3_1 _092_ (.X(_033_),
    .A(_018_),
    .B(_030_),
    .C(_031_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _093_ (.B1(_030_),
    .VDD(VPWR),
    .Y(_034_),
    .VSS(VGND),
    .A1(_017_),
    .A2(_032_));
 sg13g2_nor3_1 _094_ (.A(_017_),
    .B(_030_),
    .C(_032_),
    .Y(_035_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _095_ (.B1(_022_),
    .VDD(VPWR),
    .Y(_036_),
    .VSS(VGND),
    .A1(_033_),
    .A2(_035_));
 sg13g2_nor3_1 _096_ (.A(_022_),
    .B(_033_),
    .C(_035_),
    .Y(_037_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_or3_1 _097_ (.A(_022_),
    .B(_033_),
    .C(_035_),
    .X(_038_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _098_ (.Y(_039_),
    .A(_036_),
    .B(_038_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xor2_1 _099_ (.B(_039_),
    .A(_021_),
    .X(\fa3_1.sum ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _100_ (.Y(_040_),
    .A(\b_reg[3] ),
    .B(\a_reg[2] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _101_ (.Y(_041_),
    .A(\b_reg[2] ),
    .B(\a_reg[3] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_mux2_1 _102_ (.A0(_041_),
    .A1(\b_reg[2] ),
    .S(_024_),
    .X(_042_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_inv_1 _103_ (.VDD(VPWR),
    .Y(_043_),
    .A(_042_),
    .VSS(VGND));
 sg13g2_a21oi_1 _104_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_029_),
    .A2(_034_),
    .Y(_044_),
    .B1(_043_));
 sg13g2_nor3_1 _105_ (.A(_028_),
    .B(_033_),
    .C(_042_),
    .Y(_045_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nor3_1 _106_ (.A(_040_),
    .B(_044_),
    .C(_045_),
    .Y(_046_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _107_ (.B1(_040_),
    .VDD(VPWR),
    .Y(_047_),
    .VSS(VGND),
    .A1(_044_),
    .A2(_045_));
 sg13g2_nor2b_1 _108_ (.A(_046_),
    .B_N(_047_),
    .Y(_048_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_o21ai_1 _109_ (.B1(_036_),
    .VDD(VPWR),
    .Y(_049_),
    .VSS(VGND),
    .A1(_021_),
    .A2(_037_));
 sg13g2_xor2_1 _110_ (.B(_049_),
    .A(_048_),
    .X(\fa3_2.sum ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_nand2_1 _111_ (.Y(_050_),
    .A(\b_reg[3] ),
    .B(\a_reg[3] ),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21oi_1 _112_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_029_),
    .A2(_034_),
    .Y(_051_),
    .B1(_024_));
 sg13g2_or2_1 _113_ (.VSS(VGND),
    .VDD(VPWR),
    .X(_052_),
    .B(_051_),
    .A(_041_));
 sg13g2_a21oi_1 _114_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_047_),
    .A2(_049_),
    .Y(_053_),
    .B1(_046_));
 sg13g2_a21oi_1 _115_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(_052_),
    .A2(_053_),
    .Y(\fa3_3.cout ),
    .B1(_050_));
 sg13g2_xor2_1 _116_ (.B(_053_),
    .A(_052_),
    .X(_054_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_xnor2_1 _117_ (.Y(\fa3_3.sum ),
    .A(_050_),
    .B(_054_),
    .VDD(VPWR),
    .VSS(VGND));
 sg13g2_a21oi_1 _118_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(\a_reg[0] ),
    .A2(\b_reg[1] ),
    .Y(_055_),
    .B1(_013_));
 sg13g2_a21oi_1 _119_ (.VSS(VGND),
    .VDD(VPWR),
    .A1(\p_comb[0] ),
    .A2(_003_),
    .Y(\fa1_0.sum ),
    .B1(_055_));
 sg13g2_dfrbpq_1 _120_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\p_comb[0] ),
    .Q(p[0]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _121_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\fa1_0.sum ),
    .Q(p[1]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _122_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\fa2_0.sum ),
    .Q(p[2]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _123_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\fa3_0.sum ),
    .Q(p[3]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _124_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\fa3_1.sum ),
    .Q(p[4]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _125_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\fa3_2.sum ),
    .Q(p[5]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _126_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\fa3_3.sum ),
    .Q(p[6]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _127_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(\fa3_3.cout ),
    .Q(p[7]),
    .CLK(clk));
 sg13g2_dfrbpq_1 _128_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(a[0]),
    .Q(\a_reg[0] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _129_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(a[1]),
    .Q(\a_reg[1] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _130_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(a[2]),
    .Q(\a_reg[2] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _131_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(a[3]),
    .Q(\a_reg[3] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _132_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(b[0]),
    .Q(\b_reg[0] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _133_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(b[1]),
    .Q(\b_reg[1] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _134_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(b[2]),
    .Q(\b_reg[2] ),
    .CLK(clk));
 sg13g2_dfrbpq_1 _135_ (.RESET_B(rst_n),
    .VSS(VGND),
    .VDD(VPWR),
    .D(b[3]),
    .Q(\b_reg[3] ),
    .CLK(clk));
endmodule
