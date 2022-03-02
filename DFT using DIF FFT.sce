clc;clear;
x=[1 , 2 , 1 , 2 , 0 , 2 , 1 , 2];
x0=x(1);
x1=x(2);
x2=x(3);
x3=x(4);
x4=x(5);
x5=x(6);
x6=x(7);
x7=x(8);
//stage 1 computations
x0a = x4 + x0 ;
x1b = x5 + x1 ; 
x2c = x6 + x2 ;
x3d = x7 + x3 ;
x4e =( x4 - x0 ) *( -1) ;
x5f =( x5 - x1 ) *( -1) ; 
x6g =( x6 - x2 ) *( -1) ; 
x7h =( x7 - x3 ) *( -1) ;
x5f_stageI_output_multiplied_by_twiddle =( x5f )*(0.707 -( sqrt ( -1) ) *(0.707) ) ;
 x6g_stageI_output_multiplied_by_twiddle =( x6g ) *( -(sqrt ( -1) ) ) ;
 x7h_stageI_output_multiplied_by_twiddle =( x7h )*( -0.707 -( sqrt ( -1) ) *(0.707) ) ;
 
// Stage-2 computations
x0a_stageII_output = x2c + x0a ; 
x1b_stageII_output = x3d + x1b ; 
x2c_stageII_output =( x2c - x0a ) *( -1) ; 
x3d_stageII_output =( x3d - x1b ) *( -1) ;
x4e_stageII_output = x6g + x4e ;
x5f_stageII_output =x7h_stageI_output_multiplied_by_twiddle +x5f_stageI_output_multiplied_by_twiddle ; 
x6g_stageII_output =(x6g_stageI_output_multiplied_by_twiddle - x4e )*( -1);
x7h_stageII_output =( x7h - x5f ) *( -1) ; 
x3d_stageII_output_multiplied_by_twiddle =(x3d_stageII_output ) *( (sqrt ( -1) ) ) ;
x7h_stageII_output_multiplied_by_twiddle =(x7h_stageII_output ) *( -( sqrt ( -1) ) ) ;

//stage 3computations
X0 = x1b_stageII_output + x0a_stageII_output ;
X4 =( x1b_stageII_output - x0a_stageII_output ) *( -1) ;
X2 = x3d_stageII_output_multiplied_by_twiddle +x2c_stageII_output ;
X6 =( x3d_stageII_output_multiplied_by_twiddle -x2c_stageII_output ) *( -1) ; 
X1 =( x5f_stageII_output + x4e_stageII_output ) ; 
X5 =( x5f_stageII_output - x4e_stageII_output ) *( -1) ;
X3 = x7h_stageII_output_multiplied_by_twiddle +x6g_stageII_output ; 
X7 =( x7h_stageII_output_multiplied_by_twiddle -x6g_stageII_output ) *( -1) ; 
disp(X0,X1,X2,X3,X4,X5,X6,X7);
