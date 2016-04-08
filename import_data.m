function [data_num] = import_data(filename)
% IMPORT DATA

if exist(filename, 'file')
    fprintf('Found the file: %s\n' , filename);
    fprintf('Importing data from file...\n');
    
    [data_num] = xlsread(filename);
   
    % Options
    % xlsread(filename,sheet,xlRange)
    % [num, text, raw] = xlsread(filename)
    
    fprintf('Data has been imported from the file.\n');
else
    fprintf('Could not find the file: %s\n' , filename);
end

end