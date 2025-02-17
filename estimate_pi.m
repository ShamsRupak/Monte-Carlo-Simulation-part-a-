function pi_estimate = estimate_pi(n)
    % Generate n random points in the unit square [0,1] x [0,1]
    x = rand(n, 1);
    y = rand(n, 1);
    
    % Calculate the distance from the origin for each point
    distances = sqrt(x.^2 + y.^2);
    
    % Determine if each point is inside the unit circle
    inside_circle = distances <= 1;
    
    % Estimate pi
    pi_estimate = 4 * sum(inside_circle) / n;
end