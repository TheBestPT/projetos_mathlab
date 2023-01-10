function [d0, p0, s0, matriz_distancias_res, path] = getCaminho(matriz)
    matriz_distancias = matriz;
    matriz_distancias_res = matriz_distancias;
    matriz_distancias_with_zero = matriz_distancias;
    %Mudar a matriz de 0 para Inf
    matriz_distancias = convert0InInf(matriz_distancias, false);
    %Passo 1
    d0 = getVizinhanca(1, matriz_distancias);
    %disp(d0)
    p0 = setBin(d0);
    %disp(p0)
    s0 = setBin(d0);
    %disp(s0)
    [col, Z] = size(matriz_distancias_with_zero);
    %return
    %j = 0;
    A = 1;
    j = 0;
    
    while (j ~= Z)
        %Passo 2
        %disp(d0)
        %disp(s0)
        j = step2GetMinOfD(d0, s0);
        %disp(j);
        s0(j) = 0;
        %Passo 3
        vizinhancaDeJ = getVizinhanca(j, matriz_distancias_with_zero);
        vizinhanca = getIndexOfVizinhaca(vizinhancaDeJ);
        %disp(vizinhanca)
        [d0, p0, s0] = checkAllPositions(vizinhanca, d0, p0, s0, matriz_distancias_with_zero, j);
        
        
    end 
    
    
    caminho = [];
    i = Z;
    while(i ~= A)
        caminho = [i caminho];
        if (i > Z) 
            break;
        end
        i = p0(i);
    end
    caminho = [A caminho];
    disp(caminho)
    
    path = caminho;

end







%disp(caminho)

function res = setBin(arr)
    [col, row] = size(arr);
    for i = 2:row
        if(arr(i) ~= Inf)
            arr(i) = 1;
        else 
            arr(i) = 0;
        end
    end
    res = arr;
end

%disp(matriz_distancias)

function res = step2GetMinOfD (d, s)
    min = 0;
    index = 0;
    [col, row] = size(d);
    for i = 1:row
        if(s(i) == 0) 
            continue;
        end
        if(d(i) ~= 0 && min == 0)
            min = d(i);
            index = i;
        end
        if(d(i) < min && d(i) ~= 0)
            min = d(i);
            index = i;
        end    
    end
    %disp(index);
    res = index;
end

function res = convert0InInf(matriz, isZero)
    [col, row] = size(matriz);
    for i = 1:col
        for j = 1:row
            if(matriz(i, j) == 0)
                if(isZero == false)
                   matriz(i, j) = Inf;
                else 
                    matriz(i, j) = 0;
                end
               
            end
        end
    end
    res = matriz;
end

function res = getVizinhanca(row, matriz_distancias)
    if(row ~= 1) res = matriz_distancias(row, 1:50);
    else
        res = matriz_distancias(row, 1:50);
        res(1,1) = 0;
    end
end

function res = getIndexOfVizinhaca(arr)
    [col, row] = size(arr);
    indexVizinhanca = [];
    for i = 1:row
        if(arr(i) ~= 0)
            indexVizinhanca(end+1) = i;
        end    
    end
    res = indexVizinhanca;
end

function [resd0, resp0, ress0] = checkAllPositions(arr, d, p, s, matriz_distancias, j)
    [col, row] = size(arr);
    %disp(j);
    for i = 1:row
        if((d(j)+matriz_distancias(j, arr(i))) < d(arr(i))) %(d(j)+matriz_distancias(j, arr(i))) < d(arr(i))
            %guardar informaçoes nos arrays
            p(arr(i)) = j;
            d(arr(i)) = d(j)+matriz_distancias(j, arr(i));
            s(arr(i)) = 1;
        end
    end
    resd0 = d;
    resp0 = p;
    ress0 = s;
end
