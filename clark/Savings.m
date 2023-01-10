% Dados
M=[0 3 0 5 6 0 8;
    3 0 5 6 7 0 9;
    0 5 0 7 0 9 0;
    5 6 7 0 9 0 11;
    6 7 0 9 0 0 12;
    8 9 0 11 12 13 0;
    1 2 3 4 5 6 0;
];% matriz distancias/incidencias

%M = [1 2 3; 1 4 5; 1 5 6; 1 7 8;] para fazer o ponto [1,2] = 3 ou seja 1 é
%a linha 2 é o coluna e o 3 a distancia
MatrizSemZeros = [1 2 3;
    1 4 5;
    1 5 6;
    1 7 8;
    2 1 3;
    2 4 6;
    2 5 7;
    2 7 9;
    3 2 5;
    3 4 7;
    3 6 9;
    ];

% nVer = { max{MatrizSemZeros(*, 1)}, max(MatrizSemZeros[*, 2])}; calcular
% o numero de verticas - a prof nao deu a sintaxe
nVer = 7;

rota = zeros(nVer-1, 1);
% rota = [0, 0, 0, 0, 0, 0, 0]

Rascunho = zeros(nVer-1, nVer-1);

RascunhoOutraVez= [3, 4, 5, 0, 0, 0, 0;
                    1, 2, 0, 0, 0, 0, 0;
                    0, 0, 0, 0, 0, 0, 0;];

RascunhoOutraVez(2, 1: 2) = zeros;
% translacao
RascunhoOutraVez(1,1:dimensaoComponente) = RascunhoOutraVez(1,dimensaoComponente:dimensaoComponente + dimensaoComponente);

%inserir a esquerda basicamente passas tudo para a direita conforme aquilo
%que queres inserir depois preenches
vetor=[1, 0, 1, 0, 0, 0, 0];
ins=5;
vetor=[5, 1, 0, 1, 0, 0, 0, 0];
ins=[5, 2];
vetor=[5, 2, 1, 0, 1, 0, 0, 0, 0];

% ins = 5
Vetor(1, dim(ins)+1:dim(ins)+dim(doquehavia))=vetor(1, 1:dim(doquhavia));
vetor=[0, 1, 0, 1, 0, 0, 0, 0];

vetor(1, 1:dim(ins)) = ins;
vetor=[5, 1, 0]

% ins=[5, 2];
Vetor(1, dim(ins)+1:dim(ins)+dim(doquehavia))=vetor(1, 1:dim(doquhavia));
vetor=[0 , , 1, 0, ];

vetor(1, 1:dim(ins)) = ins;
vetor=[5, 1, 0]

% ins=[];
Vetor(1, dim(ins)+1:dim(ins)+dim(doquehavia))=vetor(1, 1:dim(doquhavia));
vetor=[ , , , 1, 0, 1];

vetor(1, 1:dim(ins)) = ins;
vetor=[5, 1, 0]


% inserir a direita so inserir depois do ultimo

vetor=[1, 0, 1, 0, 0, 0, 0];
ins = 5;

vetor(1, dim(quehavia)+1:dim(quehavia)+dim(ins)) = ins;

% inserir valores do 3 ao 8
vetor(1, 3:8) = ins;

for j=3:8
    vetor(1, j) = ind(j);
end

%por coisas dentro de uma matriz

matriz(2,5:8) -> matriz(2,6:9);

matriz(2,6:9) = matriz(2,5:8);

% 5 = primeira posicao ocupada + numero de valores - 1
% 8 = primari posicao ocupada + numero de valores - 1
% novo = primeira posicao = primeira posicao do velho + dim(ins) 


m = (1, 4:6)
m =[0, 0, 0, 3, 5, 7, 0, 0, 0, 0, 0];

%meter a partir da posicao 4 [5, 6] andando os valores que ja estavam para
%a direita

m=[0, 0, 0, 5, 6, 3, 5, 7, 0, 0, 0];

m(1, posicaoAntiga+dim(ins)):1.posicaoAntiga+dim(ins)+dim(doquehavia)-1);

m =[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

vetor(1,dim(ins)+1);

[nlin, nCol] = size(M);

disp([nlin, nCol]);


