% General Function for derivate function given 5 points in plane using lagrange polynomial for 5 points
% Input: 
%     X, Y - coordinates
%     x_eval - point to evaluate
% Output: answer - value of derivative at x_eval


function [ answer ] = derivate_5_points( X, Y, x_eval )

    for i = 1:4
        if X(i) > X(i+1)
            error('X must be in ascending order');
        end
    end

    % Calculate the coefficients of lagrange 
    l = zeros(1,5);
    for i = 1:5
        % Removing i-esim element from X
        x = X;
        x(i) = [];
        l(i) = ( (2*x_eval - x(1) - x(2)) / ((X(i) - x(1))*(X(i) - x(2))) ) * ( ((x_eval - x(3))*(x_eval - x(4))) / ((X(i) - x(3))*(X(i) - x(4))) );
        l(i) += ( (2*x_eval - x(3) - x(4)) / ((X(i) - x(3))*(X(i) - x(4))) ) * ( ((x_eval - x(1))*(x_eval - x(2))) / ((X(i) - x(1))*(X(i) - x(2))) );
    end

    answer = sum( Y .* l );

endfunction
