% TODO
% Include time evaluation
%% NETWORK COMPARISON: NARX
fprintf('NETWORK COMPARISON: NARX');
data_filename = '/Users/Oksana/Desktop/ECE16/test_data_v2.xlsx';
data_original = import_data(data_filename);
data_original = data_original(:, 3:end);
data_norm = normalize_data(data_original);
target = {}; input = {};
i_size = size(data_norm, 2);
for i = 1:i_size
    target{i} = data_norm{1,i}(1);
    input{i} = data_norm{1,i}(2:end);
end
target_original = target;input_original = input;
%% Comparison 1: Training Data Set Size

fprintf('Comparison 1: Training Data Set Size\n');
fprintf('Properties: Neurons - 3, Time Delay - 1 \nTest Data: test_data_v2.xlsx \n');

fprintf('Test 1.1: Training Set Size = 1 Year\n');
narx_net_test_1_1;
perform_1_1 = [performance, trainPerformance, valPerformance]

fprintf('Test 1.2.1: Training Set Size = 6 Months (March 20 - September 20\n');
input = {}; target = {};
for i = 15055:45177
    input{i} = input_original{1,i}(:);
    target{i} = target_original{1,i}(:);
end
narx_net_test_1_1;
perform_1_2_1 = [performance, trainPerformance, valPerformance]

% fprintf('Test 1.2.2: Training Set Size = 6 Months (September 20 - March 20\n');
% for i = 1:(
%     input{i} = input_original{1,i}([1:15055, 45177:end], :);
%     target{i} = target_original{1,i}([1:15055, 45177:end], :);
% end
% narx_net_test_1_2_2 = narx_net_test_1_1;
% perform_1_2_2 = [performance, trainPerformance, valPerformance]

fprintf('Test 1.3.1: Training Set Size = 3 Months (March 20 - June 20\n');
input = {}; target = {};
for i = 15055:30078
    input{i} = input_original{1,i}(:);
    target{i} = target_original{1,i}(:);
end
narx_net_test_1_1;
perform_1_3_1 = [performance, trainPerformance, valPerformance]

fprintf('Test 1.3.2: Training Set Size = 3 Months (June 20 - September 20\n');
input = {}; target = {};
for i = 30078:45177
    input = input_original{1,i}(:);
    target = target_original{1,i}(:);
end
narx_net_test_1_1;
perform_1_3_2 = [performance, trainPerformance, valPerformance]

fprintf('Test 1.3.3: Training Set Size = 3 Months (September 20 - November 18\n');
input = {}; target = {};
for i = 45177:53165
    input = input_original{1,i}(:);
    target = target_original{1,i}(:);
end
narx_net_test_1_1;
perform_1_3_3 = [performance, trainPerformance, valPerformance]

fprintf('Test 1.3.4: Training Set Size = 3 Months (December 20 - March 20\n');
input = {}; target = {};
for i = 1:15055
    input = input_original{1,i}(:);
    target = target_original{1,i}(:);
end
narx_net_test_1_1;
perform_1_3_4 = [performance, trainPerformance, valPerformance]

cat = [1 2 3];
plot(cat, perform_1_1, cat, perform_1_2_1, cat, perform_1_2_2, cat, perform_1_3_1, cat, perform_1_3_2, cat, perform_1_3_3, cat, perform_1_3_4);
%% Comparison 2: Training Data Set - Different Params

fprintf('Comparison 2: Training Data Set - Different Params');

%% Comparison 3: Varying Hidden Layer Neurons and Time Delays

fprintf('Comparison 3: Varying Hidden Layer Neurons and Time Delays');

fprintf('Test 3.1: Training Set Size = 1 Year');