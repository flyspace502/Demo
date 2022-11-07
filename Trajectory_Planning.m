Coi_t =[0.0241   -0.9980   -0.0577
   -0.1239    0.0543   -0.9908
    0.9920    0.0311   -0.1224];

     Kd2r=pi/180;
     alpha=30*Kd2r;
     beta=60*Kd2r;
     gama0=10*Kd2r;
     gama=20*Kd2r;
     
     C_3_alpha=[cos(alpha)   sin(alpha)  0;
               -sin(alpha)   cos(alpha)  0;
                  0              0         1];
    C_1_beta=[1         0         0;
               0     cos(beta)   sin(beta);
               0    -sin(beta)   cos(beta)];   
    C_3_gama0=[cos(gama0)   sin(gama0)  0;
               -sin(gama0)   cos(gama0)  0;
                  0              0         1]; 
              
    C_2_gama=[cos(gama)  0  -sin(gama);
              0      1      0;
              sin(gama)  0   cos(gama) ];
              
    CFI=C_3_gama0*C_1_beta*C_3_alpha; 
    CFI_1=C_1_beta*C_2_gama*C_3_alpha;
    
    

    Coi_t*CFI'*[55 -55 20]'
    
    CFI*Coi_t'*[-5 28 72]'
    
    CFI*Coi_t'*[-15 35 60]'
    
    CFI*Coi_t'*[-65 -40 10]'
    
    [Yaw,Pitch,Roll]= dcm2angle(CFI, 'ZYX'); %俯仰绕Y轴(pitch) 滚动绕X轴(row) 偏航绕Z轴(yaw)  输出的是弧度
    [Yaw,Pitch,Roll]*180/pi
    
    