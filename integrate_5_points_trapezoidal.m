% General Function for integrate function given 5 points in plane using the trapezoidal rule
% Input: 
%     X, Y - coordinates
% Output: answer - aproximate value of defined integeral inside the given points
function [ answer ] = integrate_5_points_trapezoidal( X, Y )

for i = 1:4
    if X(i) > X(i+1)
        error('X must be in ascending order');
    end
end
% Calculate the area of the trapezoids
area = zeros(1,4);
for i = 1:4
    area(i) = (X(i+1) - X(i)) * (Y(i+1) + Y(i)) / 2;
end

% Calculate the area of the whole polygon
answer = sum(area);

endfunction
