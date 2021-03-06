function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples	
J_history = zeros(num_iters, 1);

m = length(X); % number of training examples

for iter = 1:num_iters
	

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
	main = X * theta - y;
	theta(1) = theta(1) - alpha * sum(main .*X(:,1)) / m;
	theta(2) = theta(2) - alpha * sum(main .*X(:,2)) / m;
	






    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
	% fprintf("J: %f, theta(1): %f theta(2): %f\n", J_history(iter), theta(1), theta(2));

end

end
