function [out] = savings (DistMatrix, max_distance) 

% initialization 
num_cities = size(DistMatrix, 1); 
visited_cities = zeros(1, num_cities); 
total_distance = 0; 

% starting city must be the first one 
current_city = 1; 
visited_cities(1) = current_city; 

for ii = 1:num_cities-1 

    % calculate the distances between the current city and all unvisited
    % cities 

    distances = DistMatrix(current_city, :); 
    distances(visited_cities == 1) = Inf; 

    % find the city with the shortest distance 

    [min_dist, min_index] = min(distances); 

    % check if the distance is smaller than the maximum distance 

    if min_dist <= max_distance 

        % if yes, add the distance to the total distance 
        total_distance = total_distance + min_dist;

        % set the current city to the new city 
        current_city = min_index; 

        % add the new city to the visited cities list 
        visited_cities(min_index) = 1; 
    end 
end 

% calculate the last leg of the trip 
total_distance = total_distance + DistMatrix(1, current_city); 

% output the total distance 
out = total_distance; 

end