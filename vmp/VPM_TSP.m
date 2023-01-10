%Intruduzir matriz de dados
m=[ 0 3 0 5 6 0 8;
    3 0 5 6 7 0 9;
    0 5 0 7 0 9 0;
    5 6 7 0 9 0 11;
    6 7 0 9 0 0 12;
    8 9 0 11 12 13 0;
    1 2 3 4 5 6 0];

%Implementar a heuristica
d=1;
existeCiclo=true;
i = 0;
c = [];
[numLinhas, numColunas] = size(m);

if (numLinhas ~= numColunas)
    fprintf('A Matriz não é quadrada: Reintruduza');
end

i=d;
rota=zeros(numColunas-1, 1);
cidadesPorVisitar=ones(numColunas, 1); % Rota em construção
cidadesPorVisitar(i)=0; % aqueles que ainda nao foram incluidos

%Construir a rota
count=1;
while (sum(cidadesPorVisitar) > 0 && existeCiclo)
    custoMin = 0;
    mJ = 0;
    for j=1 : numColunas
        if (m(i,j)<custoMin && m(i, j) ~= 0 && cidadesPorVisitar(j) == 1)
            custoMin = m(i, j);
            mJ = j;
        end
    end
    %cidadesPorVisitar(i) = mJ;
    if(mJ==0)
        fprintf('Não existe circuito');
        existeCiclo = false;
    end
    disp(mJ);
    cidadesPorVisitar(mJ) = 0;
    rota(count)=mJ;
    count = count + 1;
    i=mJ;
end

fprintf(rota);


 




