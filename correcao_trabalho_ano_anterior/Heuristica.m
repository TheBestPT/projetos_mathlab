% - Op��o B - Devolve a solu��o

%Verificar a consist�ncia dos dados

haSolucao=Passo0(M); % Chama uma fun��o que devolve haSolucao 
                     % face a M



if haSolucao== false
    disp('Os dados n�o s�o consistentes - o problema n�o tem solu��o.');
    return
end
                                          
%Determina��o das colunas onde instalar os servi�os

%solucao=Passo1(M,numLinhas,numColunas);