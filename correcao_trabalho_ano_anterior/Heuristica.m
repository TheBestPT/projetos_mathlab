% - Opção B - Devolve a solução

%Verificar a consistência dos dados

haSolucao=Passo0(M); % Chama uma função que devolve haSolucao 
                     % face a M



if haSolucao== false
    disp('Os dados não são consistentes - o problema não tem solução.');
    return
end
                                          
%Determinação das colunas onde instalar os serviços

%solucao=Passo1(M,numLinhas,numColunas);