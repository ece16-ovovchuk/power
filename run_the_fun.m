% Import data from local file
data_filename = '/Users/Oksana/Desktop/ECE16/test_data_v2.xlsx';
data_original = import_data(data_filename);
% Remove time data
data_original = data_original(:, 3:end);
% Normalize imported data
data_norm = normalize_data(data_original);
% Extract data
target = {};
input = {};
for i = 1:size(data_norm, 2)
    target{i} = data_norm{1,i}(1);
    input{i} = data_norm{1,i}(1:end);
end
% Generate data plot

% Network

% Generate performance result 

% Generate results
