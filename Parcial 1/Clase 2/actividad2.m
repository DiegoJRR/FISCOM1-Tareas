% Actividad 2
% Equipo "Los Chinojos"

%% a) 

N = 1000000;

tic
numbersSumForLoop(N)
toc

tic
numbersSumForLoop(N)
toc

function resulting_sum = numbersSumForLoop(N)
    temp = 0;
    for value = 1:N
        temp = temp + value;
    end

    resulting_sum = temp;
end

function resulting_sum = numbersSumVectorized(N)
    resulting_sum = sum(1:N);
end

