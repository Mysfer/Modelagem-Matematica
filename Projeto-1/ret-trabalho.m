## Come�a o c�digo limpando as variaveisclear## Variavel quantidade de �rvoress = input(" Digite a quantidade total de �rvores: ");## Variavel pre�o (come�a como 0 porque muda n�o tem pre�o)p = [0];## Variavel de crescimentog = [];## Variavel contendo o valor m�ximo de cada classeret = [0];## Variavel referente a quantidade de classesn = input("Digite a quantidade de classes: ");## Variavel para auxiliaraux = [];## Variavel com valor m�ximomax = [0];## Variavel para auxiliar na somatoriasum = [0]; ## Variavel com a classe com maior retorno sustentavlk = 0;## Algoritmo para calcular RT ## Estrutura de repeti��o para ler os valores de pfor i = 2:n  fprintf("Digite o valor de p%d: ", i);  aux = input("");  p = [p; aux];endfor## Estrutura de repeti��o para ler os valores de gfor i = 1:(n-1)  fprintf("Digite o valor de g%d: ", i);  aux = input("");  g = [g; aux];endforf = [g; 0];## Estrutura de repeti��o para fazer o calculo do valorfor i = 2:n  sum = 0;  ## Estrtutura de repeti��o dentro de outra estrutura de repeti��o para calcular a somatoria  for j = 1:(i-1)    sum = sum + 1/(g(j,1));  endfor    ##calculando o valor otimo sustentavel da classe i
  aux = p(i, 1)/sum;    ret = [ret; aux*s];    ## Estrutura de decis�o para descobrir qual o maior n�mero  if(aux > max)    max = aux;    k = i;   endifendfor  ## Comando para mostrar o resultadofprintf("A maior valor  � de %.2f e � da classe %d\n", max*s, k);## Algoritmo para calcular quantas arvores v�o ser retiradas## Somatoria dos inversos de gsum = 0;for i = 1:(k-1)  sum += 1/g(i,1);endfory = s/sum;## Retorna quantas arvores ser�o retiradas por ciclo  fprintf("Ser�o retiradas %.2f �rvores por ciclo.\n", y);## Algoritmo para calcular configura��o inicial em fun��o de s## Para retorno m�ximo sustent�vel, s� havera arvores at� k-1x = [];for i = 1:(k-1)  aux = (s/g(i,1)) * (1/sum);  x = [x; aux];endfor  for i = 1:(n-(k-1))  x = [x;0];endfor## Retorna a configura��o inicial fprintf("A configura��o inicial ser�: \n");disp(x);## Mostrando o valor sustentavel otimo de cada classe em um grafico de barrasbar(x);title("Quantidade de �rvores por classe");xlabel("Classe");ylabel('�rvores'); 