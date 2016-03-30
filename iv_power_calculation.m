function [voltage_p, current_p, power_p] = iv_power_calculation(voltage_m, irradiance_m)

imageFileName = '/Users/Oksana/Desktop/ECE16/solarpanel-irradianceIV-cropped-max.png';

if exist(imageFileName, 'file')
   original_image = imread(imageFileName); 
end
   
[current, voltage, numberOfColorBands] = size(original_image);
if numberOfColorBands > 1
	grayImage = original_image(:, :, 2); % Take green channel.
end

% axis on;
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0.6 0 0.4 1],'Name', 'Determining current based on current-voltage characteristics with irradiance', 'NumberTitle', 'On');
% Binarize to get rid of horrible jpeg noise
binaryImage = grayImage < 100;
% Get the current (y) and voltage (x).
[current, voltage] = find(binaryImage);
% Data point adjustment
voltage_adjusted = (voltage/300) * 40;
current_adjusted =  9 - ((current/350) * 9);

% Plot IV curve
iv_curve = plot(voltage_adjusted, current_adjusted,'c-', 'LineWidth', 2, 'MarkerSize', 3);
axis([0 40 0 9]);
grid on;

% Current Identification
current_irr = current_adjusted * (irradiance_m / 1000);
[v_closest v_ind] = min(abs(voltage_adjusted - voltage_m));
voltage_p = voltage_adjusted(v_ind);
current_p = current_irr(v_ind);
power_p = current_p * voltage_p;

% View selected volume/irradiance setting on graph
hold on;
plot(voltage_adjusted, current_irr, 'r-');

end