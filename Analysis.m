raw_data='Test_Data_v2.xlsx';
MAT = xlsread(raw_data);
A=MAT(15056:30253,3:7);% from 3/20 to 6/20 of 2014
% principal component analysis

%2nd Month
[cofficient, space, eigen]=pca(A); 
fprintf('%9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', eigen);
% Variance
Variance=var(A); 
fprintf('%9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
% Corelation
covarience=cov(A); 
Corelation=corrcoef(covarience);





