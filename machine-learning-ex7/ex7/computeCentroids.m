function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% m = number of rows
% n = number of columns

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


for k = 1:K,

    centroids(k, :) = mean(X(find(idx == k), :));

    % counter = 0;
    % new_x = inf;
    % new_y = inf;
    % for i = 1:m,
    %     if (idx(i) == k)
    %         new_x = new_x + X(i, 1);
    %         new_y = new_y + X(i, 2);
    %         counter = counter + 1;
    %     end
    % end
    
    % new_x = new_x / counter;
    % new_y = new_y / counter;

    % centroids(k, :) = [new_x, new_y];

end



% =============================================================


end

