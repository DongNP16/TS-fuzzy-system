function LMI4
%Input matrix A
A11=[-0.916 0;0.2 -0.24];A21=[-1.316 0;0.6 -0.24];
A31=[-0.404 0;0.2 -0.24];A41=[-0.804 0;0.6 -0.24];
A12=[-0.628 0;0.2 -0.24];A22=[-1.028 0;0.6 -0.24];
A32=[-0.372 0;0.2 -0.24];A42=[-0.772 0;0.6 -0.24];

%Input matrix B
B11=[0;-0.9]; B21=[0;-0.9];B31=[0;-0.1];B41=[0;-0.1];
B12=[0;-0.9];B22=[0;-0.9];B32=[0;-0.1];B42=[0;-0.1];

%Input connected matrix
ap112=[-0.144 0;0 0];ap212=[-0.144 0;0 0];
ap312=[-0.016 0;0 0];ap412=[-0.016 0;0 0];
ap121=[-1.152 0;0 0];ap221=[-1.152 0;0 0];
ap321=[-0.128 0;0 0];ap421=[-0.128 0;0 0];

%define unknown matrix which need to be determined by LMIs
setlmis([])
C1=lmivar(1,[size(A11,1) 1]);      %specify the structure and size of C
C2=lmivar(1,[size(A11,1) 1]);
%specify the structure and size of W1
W11=lmivar(2,[1 2]);      
W21=lmivar(2,[1 2]);
W31=lmivar(2,[1 2]);
W41=lmivar(2,[1 2]);
W12=lmivar(2,[1 2]);      
W22=lmivar(2,[1 2]);
W32=lmivar(2,[1 2]);
W42=lmivar(2,[1 2]);
%%specify the structure and size of U
U111=lmivar(1,[size(A11,1) 1]);
U121=lmivar(1,[size(A11,1) 1]);
U131=lmivar(1,[size(A11,1) 1]);
U141=lmivar(1,[size(A11,1) 1]);
U1112=lmivar(1,[size(A11,1) 1]);
U1212=lmivar(1,[size(A11,1) 1]);
U1312=lmivar(1,[size(A11,1) 1]);
U1412=lmivar(1,[size(A11,1) 1]);
U211=lmivar(1,[size(A11,1) 1]);
U221=lmivar(1,[size(A11,1) 1]);
U231=lmivar(1,[size(A11,1) 1]);
U241=lmivar(1,[size(A11,1) 1]);
U2112=lmivar(1,[size(A11,1) 1]);
U2212=lmivar(1,[size(A11,1) 1]);
U2312=lmivar(1,[size(A11,1) 1]);
U2412=lmivar(1,[size(A11,1) 1]);
U311=lmivar(1,[size(A11,1) 1]);
U321=lmivar(1,[size(A11,1) 1]);
U331=lmivar(1,[size(A11,1) 1]);
U341=lmivar(1,[size(A11,1) 1]);
U3112=lmivar(1,[size(A11,1) 1]);
U3212=lmivar(1,[size(A11,1) 1]);
U3312=lmivar(1,[size(A11,1) 1]);
U3412=lmivar(1,[size(A11,1) 1]);
U411=lmivar(1,[size(A11,1) 1]);
U421=lmivar(1,[size(A11,1) 1]);
U431=lmivar(1,[size(A11,1) 1]);
U441=lmivar(1,[size(A11,1) 1]);
U4112=lmivar(1,[size(A11,1) 1]);
U4212=lmivar(1,[size(A11,1) 1]);
U4312=lmivar(1,[size(A11,1) 1]);
U4412=lmivar(1,[size(A11,1) 1]);
U1121=lmivar(1,[size(A11,1) 1]);
U1221=lmivar(1,[size(A11,1) 1]);
U1321=lmivar(1,[size(A11,1) 1]);
U1421=lmivar(1,[size(A11,1) 1]);
U112=lmivar(1,[size(A11,1) 1]);
U122=lmivar(1,[size(A11,1) 1]);
U132=lmivar(1,[size(A11,1) 1]);
U142=lmivar(1,[size(A11,1) 1]);
U2121=lmivar(1,[size(A11,1) 1]);
U2221=lmivar(1,[size(A11,1) 1]);
U2321=lmivar(1,[size(A11,1) 1]);
U2421=lmivar(1,[size(A11,1) 1]);
U212=lmivar(1,[size(A11,1) 1]);
U222=lmivar(1,[size(A11,1) 1]);
U232=lmivar(1,[size(A11,1) 1]);
U242=lmivar(1,[size(A11,1) 1]);
U3121=lmivar(1,[size(A11,1) 1]);
U3221=lmivar(1,[size(A11,1) 1]);
U3321=lmivar(1,[size(A11,1) 1]);
U3421=lmivar(1,[size(A11,1) 1]);
U312=lmivar(1,[size(A11,1) 1]);
U322=lmivar(1,[size(A11,1) 1]);
U332=lmivar(1,[size(A11,1) 1]);
U342=lmivar(1,[size(A11,1) 1]);
U4121=lmivar(1,[size(A11,1) 1]);
U4221=lmivar(1,[size(A11,1) 1]);
U4321=lmivar(1,[size(A11,1) 1]);
U4421=lmivar(1,[size(A11,1) 1]);
U412=lmivar(1,[size(A11,1) 1]);
U422=lmivar(1,[size(A11,1) 1]);
U432=lmivar(1,[size(A11,1) 1]);
U442=lmivar(1,[size(A11,1) 1]);

%define LMI_1
lmiterm([-1 1 1 C1],1,1);        %C1>0
lmiterm([-1 1 1 C2],1,1);        %C2>0
%LMI_2
lmiterm([2 1 1 U111],1,1);
lmiterm([2 1 2 U121],1,1);
lmiterm([2 1 3 U131],1,1);
lmiterm([2 1 4 U141],1,1);
lmiterm([2 1 5 U1112],1,1);
lmiterm([2 1 6 U1212],1,1);
lmiterm([2 1 7 U1312],1,1);
lmiterm([2 1 8 U1412],1,1);
lmiterm([2 2 1 U211],1,1);
lmiterm([2 2 2 U221],1,1);
lmiterm([2 2 3 U231],1,1);
lmiterm([2 2 4 U241],1,1);
lmiterm([2 2 5 U2112],1,1);
lmiterm([2 2 6 U2212],1,1);
lmiterm([2 2 7 U2312],1,1);
lmiterm([2 2 8 U2412],1,1);
lmiterm([2 3 1 U311],1,1);
lmiterm([2 3 2 U321],1,1);
lmiterm([2 3 3 U331],1,1);
lmiterm([2 3 4 U341],1,1);
lmiterm([2 3 5 U3112],1,1);
lmiterm([2 3 6 U3212],1,1);
lmiterm([2 3 7 U3312],1,1);
lmiterm([2 3 8 U3412],1,1);
lmiterm([2 4 1 U411],1,1);
lmiterm([2 4 2 U421],1,1);
lmiterm([2 4 3 U431],1,1);
lmiterm([2 4 4 U441],1,1);
lmiterm([2 4 5 U4112],1,1);
lmiterm([2 4 6 U4212],1,1);
lmiterm([2 4 7 U4312],1,1);
lmiterm([2 4 8 U4412],1,1);
lmiterm([2 5 1 U1121],1,1);
lmiterm([2 5 2 U1221],1,1);
lmiterm([2 5 3 U1321],1,1);
lmiterm([2 5 4 U1421],1,1);
lmiterm([2 5 5 U112],1,1);
lmiterm([2 5 6 U122],1,1);
lmiterm([2 5 7 U132],1,1);
lmiterm([2 5 8 U142],1,1);
lmiterm([2 6 1 U2121],1,1);
lmiterm([2 6 2 U2221],1,1);
lmiterm([2 6 3 U2321],1,1);
lmiterm([2 6 4 U2421],1,1);
lmiterm([2 6 5 U212],1,1);
lmiterm([2 6 6 U222],1,1);
lmiterm([2 6 7 U232],1,1);
lmiterm([2 6 8 U242],1,1);
lmiterm([2 7 1 U3121],1,1);
lmiterm([2 7 2 U3221],1,1);
lmiterm([2 7 3 U3321],1,1);
lmiterm([2 7 4 U3421],1,1);
lmiterm([2 7 5 U312],1,1);
lmiterm([2 7 6 U322],1,1);
lmiterm([2 7 7 U332],1,1);
lmiterm([2 7 8 U342],1,1);
lmiterm([2 8 1 U4121],1,1);
lmiterm([2 8 2 U4221],1,1);
lmiterm([2 8 3 U4321],1,1);
lmiterm([2 8 4 U4421],1,1);
lmiterm([2 8 5 U412],1,1);
lmiterm([2 8 6 U422],1,1);
lmiterm([2 8 7 U432],1,1);
lmiterm([2 8 8 U442],1,1);

%LMI_3 to 34 
lmiterm([3 1 1 C1],A11,1,'s'); %a11
lmiterm([3 1 1 W11],B11,1,'s');
lmiterm([-3 1 1 U111],1,1);
lmiterm([4 1 1 C1],A21,1,'s'); %a22
lmiterm([4 1 1 W21],B21,1,'s');
lmiterm([-4 1 1 U221],1,1);
lmiterm([5 1 1 C1],A31,1,'s'); %a33
lmiterm([5 1 1 W31],B31,1,'s');
lmiterm([-5 1 1 U331],1,1);
lmiterm([6 1 1 C1],A41,1,'s'); %a44
lmiterm([6 1 1 W41],B41,1,'s');
lmiterm([-6 1 1 U441],1,1);
lmiterm([7 1 1 C2],A12,1,'s'); %a55
lmiterm([7 1 1 W12],B12,1,'s');
lmiterm([-7 1 1 U112],1,1);
lmiterm([8 1 1 C2],A22,1,'s'); %a66
lmiterm([8 1 1 W22],B22,1,'s');
lmiterm([-8 1 1 U222],1,1);
lmiterm([9 1 1 C2],A32,1,'s'); %a77
lmiterm([9 1 1 W32],B32,1,'s');
lmiterm([-9 1 1 U332],1,1);
lmiterm([10 1 1 C2],A42,1,'s'); %a88
lmiterm([10 1 1 W42],B42,1,'s');
lmiterm([-10 1 1 U442],1,1);
lmiterm([11 1 1 C1],A11,1,'s'); %a12
lmiterm([11 1 1 W21],B11,1,'s');
lmiterm([-11 1 1 U121],1,1);
lmiterm([12 1 1 C1],A11,1,'s'); %a21
lmiterm([12 1 1 W21],B11,1,'s');
lmiterm([-12 1 1 U211],1,1);
lmiterm([13 1 1 C1],A11,1,'s'); %a13
lmiterm([13 1 1 W31],B11,1,'s');
lmiterm([-13 1 1 U131],1,1);
lmiterm([14 1 1 C1],A11,1,'s'); %a31
lmiterm([14 1 1 W31],B11,1,'s');
lmiterm([-14 1 1 U311],1,1);
lmiterm([15 1 1 C1],A11,1,'s'); %a14
lmiterm([15 1 1 W41],B11,1,'s');
lmiterm([-15 1 1 U141],1,1);
lmiterm([16 1 1 C1],A11,1,'s'); %a41
lmiterm([16 1 1 W41],B11,1,'s');
lmiterm([-16 1 1 U411],1,1);
lmiterm([17 1 1 C1],A21,1,'s'); %a23
lmiterm([17 1 1 W31],B21,1,'s');
lmiterm([-17 1 1 U231],1,1);
lmiterm([18 1 1 C1],A21,1,'s'); %a32
lmiterm([18 1 1 W31],B21,1,'s');
lmiterm([-18 1 1 U321],1,1);
lmiterm([19 1 1 C1],A21,1,'s'); %a24
lmiterm([19 1 1 W41],B21,1,'s');
lmiterm([-19 1 1 U241],1,1);
lmiterm([20 1 1 C1],A21,1,'s'); %a42
lmiterm([20 1 1 W41],B21,1,'s');
lmiterm([-20 1 1 U421],1,1);
lmiterm([21 1 1 C1],A31,1,'s'); %a34
lmiterm([21 1 1 W41],B31,1,'s');
lmiterm([-21 1 1 U341],1,1);
lmiterm([22 1 1 C1],A31,1,'s'); %a43
lmiterm([22 1 1 W41],B31,1,'s');
lmiterm([-22 1 1 U431],1,1);
%Khoi 2
lmiterm([23 1 1 C2],A12,1,'s'); %a56
lmiterm([23 1 1 W22],B12,1,'s');
lmiterm([-23 1 1 U122],1,1);
lmiterm([24 1 1 C2],A12,1,'s'); %a65
lmiterm([24 1 1 W22],B12,1,'s');
lmiterm([-24 1 1 U212],1,1);
lmiterm([25 1 1 C2],A12,1,'s'); %a57
lmiterm([25 1 1 W32],B12,1,'s');
lmiterm([-25 1 1 U132],1,1);
lmiterm([26 1 1 C2],A12,1,'s'); %a75
lmiterm([26 1 1 W32],B12,1,'s');
lmiterm([-26 1 1 U312],1,1);
lmiterm([27 1 1 C2],A12,1,'s'); %a58
lmiterm([27 1 1 W42],B12,1,'s');
lmiterm([-27 1 1 U142],1,1);
lmiterm([28 1 1 C2],A12,1,'s'); %a85
lmiterm([28 1 1 W42],B12,1,'s');
lmiterm([-28 1 1 U412],1,1);
lmiterm([29 1 1 C2],A22,1,'s'); %a67
lmiterm([29 1 1 W32],B22,1,'s');
lmiterm([-29 1 1 U232],1,1);
lmiterm([30 1 1 C2],A22,1,'s'); %a76
lmiterm([30 1 1 W32],B22,1,'s');
lmiterm([-30 1 1 U322],1,1);
lmiterm([31 1 1 C2],A22,1,'s'); %a68
lmiterm([31 1 1 W42],B22,1,'s');
lmiterm([-31 1 1 U242],1,1);
lmiterm([32 1 1 C2],A22,1,'s'); %a86
lmiterm([32 1 1 W42],B22,1,'s');
lmiterm([-32 1 1 U422],1,1);
lmiterm([33 1 1 C2],A32,1,'s'); %a78
lmiterm([33 1 1 W42],B32,1,'s');
lmiterm([-33 1 1 U342],1,1);
lmiterm([34 1 1 C2],A32,1,'s'); %a87
lmiterm([34 1 1 W42],B32,1,'s');
lmiterm([-34 1 1 U432],1,1);

%LMI_35 TO 66
lmiterm([35 1 1 C2],1,ap121,'s'); %a51
lmiterm([35 1 1 C1],1,ap112,'s');
lmiterm([-35 1 1 U1121],2,1);
lmiterm([36 1 1 C2],1,ap121,'s'); %a52
lmiterm([36 1 1 C1],1,ap212,'s');
lmiterm([-36 1 1 U1221],2,1);
lmiterm([37 1 1 C2],1,ap121,'s'); %a53
lmiterm([37 1 1 C1],1,ap312,'s');
lmiterm([-37 1 1 U1321],2,1);
lmiterm([38 1 1 C2],1,ap121,'s'); %a54
lmiterm([38 1 1 C1],1,ap412,'s');
lmiterm([-38 1 1 U1421],2,1);
lmiterm([39 1 1 C2],1,ap221,'s'); %a61
lmiterm([39 1 1 C1],1,ap112,'s');
lmiterm([-39 1 1 U2121],2,1);
lmiterm([40 1 1 C2],1,ap221,'s'); %a62
lmiterm([40 1 1 C1],1,ap212,'s');
lmiterm([-40 1 1 U2221],2,1);
lmiterm([41 1 1 C2],1,ap221,'s'); %a63
lmiterm([41 1 1 C1],1,ap312,'s');
lmiterm([-41 1 1 U2321],2,1);
lmiterm([42 1 1 C2],1,ap221,'s'); %a64
lmiterm([42 1 1 C1],1,ap412,'s');
lmiterm([-42 1 1 U2421],2,1);
lmiterm([43 1 1 C2],1,ap321,'s'); %a71
lmiterm([43 1 1 C1],1,ap112,'s');
lmiterm([-43 1 1 U3121],2,1);
lmiterm([44 1 1 C2],1,ap321,'s'); %a72
lmiterm([44 1 1 C1],1,ap212,'s');
lmiterm([-44 1 1 U3221],2,1);
lmiterm([45 1 1 C2],1,ap321,'s'); %a73
lmiterm([45 1 1 C1],1,ap312,'s');
lmiterm([-45 1 1 U3321],2,1);
lmiterm([46 1 1 C2],1,ap321,'s'); %a74
lmiterm([46 1 1 C1],1,ap412,'s');
lmiterm([-46 1 1 U3421],2,1);
lmiterm([47 1 1 C2],1,ap421,'s'); %a81
lmiterm([47 1 1 C1],1,ap112,'s');
lmiterm([-47 1 1 U4121],2,1);
lmiterm([48 1 1 C2],1,ap421,'s'); %a82
lmiterm([48 1 1 C1],1,ap212,'s');
lmiterm([-48 1 1 U4221],2,1);
lmiterm([49 1 1 C2],1,ap421,'s'); %a83
lmiterm([49 1 1 C1],1,ap312,'s');
lmiterm([-49 1 1 U4321],2,1);
lmiterm([50 1 1 C2],1,ap421,'s'); %a84
lmiterm([50 1 1 C1],1,ap412,'s');
lmiterm([-50 1 1 U4421],2,1);
lmiterm([51 1 1 C1],1,ap112,'s'); %a15
lmiterm([51 1 1 C2],1,ap121,'s');
lmiterm([-51 1 1 U1112],2,1);
lmiterm([52 1 1 C1],1,ap112,'s'); %a16
lmiterm([52 1 1 C2],1,ap221,'s');
lmiterm([-52 1 1 U1212],2,1);
lmiterm([53 1 1 C1],1,ap112,'s'); %a17
lmiterm([53 1 1 C2],1,ap321,'s');
lmiterm([-53 1 1 U1312],2,1);
lmiterm([54 1 1 C1],1,ap112,'s'); %a18
lmiterm([54 1 1 C2],1,ap421,'s');
lmiterm([-54 1 1 U1412],2,1);
lmiterm([55 1 1 C1],1,ap212,'s'); %a25
lmiterm([55 1 1 C2],1,ap121,'s');
lmiterm([-55 1 1 U2112],2,1);
lmiterm([56 1 1 C1],1,ap212,'s'); %a26
lmiterm([56 1 1 C2],1,ap221,'s');
lmiterm([-56 1 1 U2212],2,1);
lmiterm([57 1 1 C1],1,ap212,'s'); %a27
lmiterm([57 1 1 C2],1,ap321,'s');
lmiterm([-57 1 1 U2312],2,1);
lmiterm([58 1 1 C1],1,ap212,'s'); %a28
lmiterm([58 1 1 C2],1,ap421,'s');
lmiterm([-58 1 1 U2412],2,1);
lmiterm([59 1 1 C1],1,ap312,'s'); %a35
lmiterm([59 1 1 C2],1,ap121,'s');
lmiterm([-59 1 1 U3112],2,1);
lmiterm([60 1 1 C1],1,ap312,'s'); %a36
lmiterm([60 1 1 C2],1,ap221,'s');
lmiterm([-60 1 1 U3212],2,1);
lmiterm([61 1 1 C1],1,ap312,'s'); %a37
lmiterm([61 1 1 C2],1,ap321,'s');
lmiterm([-61 1 1 U3312],2,1);
lmiterm([62 1 1 C1],1,ap312,'s'); %a38
lmiterm([62 1 1 C2],1,ap421,'s');
lmiterm([-62 1 1 U3412],2,1);
lmiterm([63 1 1 C1],1,ap412,'s'); %a45
lmiterm([63 1 1 C2],1,ap121,'s');
lmiterm([-63 1 1 U4112],2,1);
lmiterm([64 1 1 C1],1,ap412,'s'); %a46
lmiterm([64 1 1 C2],1,ap221,'s');
lmiterm([-64 1 1 U4212],2,1);
lmiterm([65 1 1 C1],1,ap412,'s'); %a47
lmiterm([65 1 1 C2],1,ap321,'s');
lmiterm([-65 1 1 U4312],2,1);
lmiterm([66 1 1 C1],1,ap412,'s'); %a48
lmiterm([66 1 1 C2],1,ap421,'s');
lmiterm([-66 1 1 U4412],2,1);
%SOLVE
lmisys=getlmis;

[tmin,Psol]=feasp(lmisys);
%results
C1=dec2mat(lmisys,Psol,C1)
C2=dec2mat(lmisys,Psol,C2)
W11=dec2mat(lmisys,Psol,W11)
W21=dec2mat(lmisys,Psol,W21)
W31=dec2mat(lmisys,Psol,W31)
W41=dec2mat(lmisys,Psol,W41)
W12=dec2mat(lmisys,Psol,W12)
W22=dec2mat(lmisys,Psol,W22)
W32=dec2mat(lmisys,Psol,W32)
W42=dec2mat(lmisys,Psol,W42)
C1iv=inv(C1)
C2iv=inv(C2)
K11=W11*C1iv
K21=W21*C1iv
K31=W31*C1iv
K41=W41*C1iv
K12=W12*C2iv
K22=W22*C2iv
K32=W32*C2iv
K43=W42*C2iv