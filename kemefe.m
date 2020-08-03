function [ke]=kemefe(E,nu,sc)
%% element sStiffness
a = [6 -3 3 -6 -6 -10 -3 4 3 6 -8 32 -4 -8];
b = [0 0 0 0 24 12 12 0 -12 -24 12 -48 12 0];
k = E*(a + nu*b)/(144*(1+nu)*(1-2*nu));

i1 = [12 1 1 14 5 5; 1 12 1 10 8 3; 1 1 12 10 3 8;
    14 10 10 12 4 4; 5 8 3 4 12 1; 5 3 8 4 1 12];
i2 = [6 4 7 8 10 3; 4 6 7 5 14 5; 9 9 13 3 10 8;
    8 5 2 6 1 9; 10 14 5 1 6 7; 2 10 8 7 9 13];
i3 = [8 3 10 6 7 4; 3 8 10 9 13 9; 5 5 14 4 7 6;
    6 9 1 8 2 5; 7 13 9 2 8 10; 1 7 6 10 5 14];
i4 = [11 2 2 13 9 9; 2 11 2 7 6 4; 2 2 11 7 4 6;
    13 7 7 11 3 3; 9 6 4 3 11 2; 9 4 6 3 2 11];
i5 = [12 1 4 14 5 10; 1 12 4 10 8 2; 4 4 12 5 2 8;
    14 10 5 12 4 1; 5 8 2 4 12 4; 10 2 8 1 4 12];
i6 = [11 2 3 13 9 7; 2 11 3 7 6 1; 3 3 11 9 1 6;
    13 7 9 11 3 2; 9 6 1 3 11 3; 7 1 6 2 3 11];

ke = k([i1  i2  i3  i4;
    i2' i5  i6  i3';
    i3' i6  i5  i2';
    i4  i3  i2  i1])/sc;
end

