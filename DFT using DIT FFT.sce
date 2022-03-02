clc;
clear;
clf;
x =[1 , 2 , 1 , 2 , 0 , 2 , 1 , 2 ];
x0 =x(1);
x4 =x(2);
x2 =x(3);
x6 =x(4);
x1 =x(5);
x5 =x(6);
x3 =x(7);
x7 =x(8);
//stage 1 computations
x0a = x4 + x0;
x4b =(x4 - x0) *(-1);
x2c = x6 + x2;
x6d =( x6 - x2 ) *( -1) ; 
x1e = x5 + x1;
x5f =( x5 - x1 ) *( -1);
x3g = x7 + x3;
x7h =(x7 - x3 ) *(-1);
x6d1 =( x6d ) *( - sqrt ( -1) );
x7h1 =( x7h ) *( - sqrt ( -1) );

//stage 2 computation
x0a_stageII_output = x2c + x0a;
x4b_stageII_output = x6d1 + x4b ;
x2c_stageII_output =( x2c - x0a ) *( -1) ; 
x6d_stageII_output =( x6d1 - x4b ) *( -1) ;
x1e_stageII_output = x3g + x1e ;
x5f_stageII_output = x7h1 + x5f ;
x3g_stageII_output =( x3g - x1e ) *( -1) ;
x7h_stageII_output =( x7h1 - x5f ) *( -1) ;
x5f_stgII_op_multi_by_tw =( x5f_stageII_output )*(0.707 -( sqrt ( -1) ) *(0.707) );
x3g_stgII_op_multi_by_tw =( x3g_stageII_output ) *( -(sqrt ( -1) ) ) ;
x7h_stgII_op_multi_by_tw =( x7h_stageII_output )*( -0.707 -( sqrt ( -1) ) *(0.707) ) ;
//stage 3 computations
X0 = x1e_stageII_output + x0a_stageII_output ; 
X1 = x5f_stgII_op_multi_by_tw + x4b_stageII_output ; 
X2 = x3g_stgII_op_multi_by_tw + x2c_stageII_output ;
X3 = x7h_stgII_op_multi_by_tw + x6d_stageII_output ; 
X4 =( x1e_stageII_output - x0a_stageII_output ) *( -1) ;
X5 =( x5f_stgII_op_multi_by_tw - x4b_stageII_output)*( -1) ; 
X6 =( x3g_stgII_op_multi_by_tw - x2c_stageII_output )*( -1) ;
X7 =( x7h_stgII_op_multi_by_tw - x6d_stageII_output )*( -1) ;
disp(X0,X1,X2,X3,X4,X5,X6,X7);
