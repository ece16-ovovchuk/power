function [data_norm] = normalize_data(data_original)
% NORMALIZE DATA

fprintf('Normalizing data...\n');

data_range = max(data_original) - min(data_original);
norm = repmat(data_range, [length(data_original) 1]);
data_norm = data_original./norm;
data_norm = con2seq(data_norm');

fprintf('Data has been normalized.\n');

end

