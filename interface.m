%Fuzzy_CS.m

disp('Responda as informacoes do aluno: USE VALORES FLOAT');
porcentagem_faltas = input('Qual a porcentagem de faltas do aluno? (0-100) Obs: das faltas permitidas ');
notas = input('Qual a média de nota do aluno? (0-100)');
minutos_atrasos_medio = input('Qual o atraso médio do aluno? (0-60 minutos) ');
participacoes_em_sala = input('Participações do aluno em sala? (0-6) ');
saidas_de_sala_diario = input('aluno sai muito de sala? (0-6)');

cg = readfis('cgMatlab2.fis'); % Trocar nome do arquivo

output = evalfis(cg, [porcentagem_faltas notas minutos_atrasos_medio participacoes_em_sala saidas_de_sala_diario]);

if output < 35
  disp('Status: Não Aprovado')
elseif output > 65
  disp('Status: Aprovado')
else
  disp('Status: Exame')
end