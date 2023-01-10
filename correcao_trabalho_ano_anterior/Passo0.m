% Verifica a consistencia dos dados
% Os dados s�o inconsistentes se:
% - a matriz n�o � sim�trica;
% - a diagonal principal n�o � nula
% - existir uma linha/coluna nula 

function haSolucao=Passo0 (M)

        haSolucao=true;
        [numLinhas,numColunas] = size(M);
        
        for i=1:numLinhas
            if M(i,i)~=0 
                disp('A matriz nao tem a diagonal a zeros');
                haSolucao=false;
                return
            end
            contador=0;
            for j=1:numColunas
                if M(i,j)~=M(j,i)
                    disp('A matriz nao � sim�trica');
                    disp(i);
                    disp(j);
                   return
                end
                contador=contador+M(i,j);
            end
            if contador ==0 
                haSolucao=false;
                disp('h� uma coluna de zeros');
                disp(i);
                return
            end
        end
end
            