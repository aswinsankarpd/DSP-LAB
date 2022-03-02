clc;
clear;
//let X=[11,1,−1 ,1 , −5 ,1 , −1 ,1];
X0_conj =11; 
X4_conj = -5; 
X2_conj = -1;
X6_conj = -1;
X1_conj =1;
X5_conj =1;
X3_conj =1;
X7_conj =1; 
//Stage 1 computation
X0a = X4_conj + X0_conj;
X4b =( X4_conj - X0_conj ) *( -1) ; 
X2c = X6_conj + X2_conj ; 
X6d =( X6_conj - X2_conj ) *( -1) ; 
X1e = X5_conj + X1_conj ; 
X5f =( X5_conj - X1_conj ) *( -1) ;
X3g = X7_conj + X3_conj ; 
X7h =( X7_conj - X3_conj ) *( -1) ;
//  Stage 1 output at line 4 and line8 mul by twiddle factor
X6d’=( X6d ) *( - sqrt ( -1) ) ;
X7h’=( X7h ) *( - sqrt ( -1) ) ;

//Stage 2 computations
X0a_stageII_output = X2c + X0a ;
X4b_stageII_output = X6d’+ X4b ; 
X2c_stageII_output =( X2c - X0a ) *( -1) ;
X6d_stageII_output =( X6d’ - X4b ) *( -1) ; 
X1e_stageII_output = X3g + X1e ;
X5f_stageII_output = X7h’+ X5f ;
X3g_stageII_output =( X3g - X1e ) *( -1) ;
X7h_stageII_output =( X7h’ - X5f ) *( -1) ; 
//  stage 2 line6,7,8 mul by tw (0.707 − j 0 . 7 0 7 ) ,(− j ) and (−0.707− j 0 . 7 0 7)
 X5f_stageII_output_multiplied_by_twiddle =(X5f_stageII_output ) *(0.707 -( sqrt ( -1) ) *(0.707) ) ;
X3g_stageII_output_multiplied_by_twiddle =(X3g_stageII_output ) *( -( sqrt ( -1) ) ) ;
X7h_stageII_output_multiplied_by_twiddle =(X7h_stageII_output ) *( -0.707 -( sqrt ( -1) ) *(0.707) ) ;
x0_star =(1/8) *( X1e_stageII_output + X0a_stageII_output) ;
x1_star =(1/8) *(X5f_stageII_output_multiplied_by_twiddle +X4b_stageII_output ) ; 
x2_star =(1/8) *(X3g_stageII_output_multiplied_by_twiddle +X2c_stageII_output ) ;
x3_star =(1/8) *(X7h_stageII_output_multiplied_by_twiddle +X6d_stageII_output ) ;
x4_star =(1/8) *(( X1e_stageII_output -X0a_stageII_output ) *( -1) ) ;
x5_star =(1/8) *((X5f_stageII_output_multiplied_by_twiddle -X4b_stageII_output ) *( -1) ) ;
x6_star =(1/8) *((X3g_stageII_output_multiplied_by_twiddle -X2c_stageII_output ) *( -1) ) ;
x7_star =(1/8) *((X7h_stageII_output_multiplied_by_twiddle -X6d_stageII_output ) *( -1) ) ; 

x0_star_real = real ( x0_star ) ;
x0_star_imag_conj =( -1) *( imag ( x0_star ) ) ;
x1_star_real = real ( x1_star ) ;
x1_star_imag_conj =( -1) *( imag ( x1_star ) ) ;
 x2_star_real = real ( x2_star ) ;
x2_star_imag_conj =( -1) *( imag ( x2_star ) ) ;
x3_star_real = real ( x3_star ) ;
x3_star_imag_conj =( -1) *( imag ( x3_star ) ) ;
x4_star_real = real ( x4_star ) ;
x4_star_imag_conj =( -1) *( imag ( x4_star ) ) ;
x5_star_real = real ( x5_star ) ;
x5_star_imag_conj =( -1) *( imag ( x5_star ) ) ;
x6_star_real = real ( x6_star ) ;
x6_star_imag_conj =( -1) *( imag ( x6_star ) ) ;
x7_star_real = real ( x7_star ) ;
x7_star_imag_conj =( -1) *( imag ( x7_star ) ) ;
x0 = x0_star_real + x0_star_imag_conj ;
x1 = x1_star_real + x1_star_imag_conj ;
x2 = x2_star_real + x2_star_imag_conj ;
x3 = x3_star_real + x3_star_imag_conj ;
x4 = x4_star_real + x4_star_imag_conj ;
x5 = x5_star_real + x5_star_imag_conj ;
x6 = x6_star_real + x6_star_imag_conj ;
x7 = x7_star_real + x7_star_imag_conj ;
disp(x0,x1,x2,x3,x4,x5,x6,x7);

