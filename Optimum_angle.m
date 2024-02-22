% Define constants
l1 = 0.1;  % replace with your constant value
l2 = 0.1;  % replace with your constant value

% Generate a range of heights for the plot
h_values = linspace(0.1, 0.2, 100);  % adjust the range and number of points as needed

% Calculate corresponding alfa values
alfa = calculate_alfa(l1, l2, h_values);


h = 0.15;
alfaDesired = calculate_alfa(l1, l2, h);
display(alfaDesired);

% Plot the graph
plot(h_values, alfa, 'LineWidth', 2);
xlabel('Height from shoulder to foot(m)');
ylabel('The angle between leg and ground \alpha (degrees)');
title('Angle \alpha as a function of Height');
grid on;


function alfa = calculate_alfa(l1, l2, h)
    % Ensure that the input values are numeric
    if ~isnumeric(l1) || ~isnumeric(l2) || ~isnumeric(h)
        error('Input values must be numeric.');
    end
    
    % Calculate alfa using the given formula
    alfa = 90 - acos((l2^2 + h.^2 - l1^2) ./ (2 * l2 * h)) * (180 / pi);
end