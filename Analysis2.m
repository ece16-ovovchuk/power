
raw_data='Test_Data_v2.xlsx';
MAT = xlsread(raw_data);
%A=MAT(15056:30253,3:7);% from 3/20 to 6/20 of 2014
% principal component analysis

MAT(:,1)=[];
MAT(:,1)=[];
%  A = cell(length(MAT(:,1)),1);
n=4410;
for i=1:length(MAT(:,1))
    
    
    A1=MAT(1:n,:);
    A2=MAT(1:2*n,:);
    A3=MAT(1:3*n,:);
    A4=MAT(1:4*n,:);
    A5=MAT(1:5*n,:);
    A6=MAT(1:6*n,:);
    A7=MAT(1:7*n,:);
    A8=MAT(1:8*n,:);
    A9=MAT(1:9*n,:);
    A10=MAT(1:10*n,:);
    A11=MAT(1:11*n,:);
    A12=MAT(1:12*n,:);
    

end
%1st month 
[cofficient, space, eigen]=pca(A1); 
first_month_cofficient= cofficient
Variance=var(A1);
covarience=cov(A1);
first_month_covarience=covarience
first_month_Corelation=corrcoef(covarience)
fprintf('1st month\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',... 
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st two months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A2); 
cofficient
Variance=var(A2);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A2) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st three months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A3); 
cofficient
Variance=var(A3);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A3) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st four months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A4); 
cofficient
Variance=var(A4);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A4) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st five months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A5); 
cofficient
Variance=var(A5);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A5) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st six months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A6); 
cofficient
Variance=var(A6);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A6) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st sevens months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A7); 
cofficient
Variance=var(A7);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A7) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st eight months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A8); 
cofficient
Variance=var(A8);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A8) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st nine months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A9); 
cofficient
Variance=var(A9);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A9) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st ten months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A10); 
cofficient
Variance=var(A10);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A10) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st eleven months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A11); 
cofficient
Variance=var(A11);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A11) 
Corelation=corrcoef(covarience)
fprintf('\n');
fprintf('=============================================================\n');
fprintf('1st 12 months\n');
fprintf('=============================================================\n');
[cofficient, space, eigen]=pca(A12); 
cofficient
Variance=var(A12);
fprintf('\n Eigen Value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n',...
eigen);
fprintf('variance value= %9.3f, %9.3f, %9.3f, %9.3f, %9.3f\n', Variance);
covarience=cov(A12) 
Corelation=corrcoef(covarience)





