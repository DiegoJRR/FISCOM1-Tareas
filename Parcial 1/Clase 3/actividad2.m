% make x vector
x = -1:.01:1;
% make a figure and plot 10 random lines, labeling each one
for n=1:1
    plot(x, polyval(rand(3, 1), x), 'color', rand(1, 3));
    hold on;
    legendNames(n, :) = ['Line', num2str(n)];
end

% label the graph
xlabel('X');
ylabel('Y');
title('Ten Line Plot');
legend(legendNames);