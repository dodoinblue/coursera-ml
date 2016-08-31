function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

m = length(X);

sum_delta_sq = 0;

%for i = 1:m
%    h_theta = X(i,:) * theta;
%    delta_sq = (h_theta - y(i))^2;
%    sum_delta_sq = sum_delta_sq + delta_sq;
%end

%J = sum_delta_sq / 2 / m;

results = X * theta;
squareCosts = (results - y).^2;
J = (1/(2*m)) * sum(squareCosts);


% =========================================================================

end
