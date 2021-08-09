unit ufuncoes; //NOME DA UNIT 
interface 
uses // CLASSES NECESSÁRIAS ÁS FUNÇÕES ABAIXO, NAS SUAS TALVEZ PRECISE DE OUTRAS
SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,Dialogs, StdCtrls, Grids, DBGrids; 
function data(vdata:string):boolean; // DECLARAÇÃO DAS FUNÇÕES OU PROCEDURES
 procedure cor(grade:tdbgrid;color:tcolor); // PARA PODEREM SER ENXERGADAS POR OUTRAS UNITS.
// COLOQUE OS MESMOS CABEÇALHOS DA SUA FUNÇÀO 
implementation // AQUI QUE VOCÊ VAI CRIAR AS SUAS FUNÇÕES, NÃO SE ESQUEÇA O QUE CRIAR AQUI, TERÁ QUE DECLARAR EM CIMA SENÃO NENHUMA OUTRA UNIT AS ENXERGARÁ. 
function data(vdata:string):boolean;
begin
      try
         StrToDate(vdata);
         data:=true;
      except
      MessageDlg('Data Inválida !!' , mtInformation, [mbOk], 0);
      data:=false;
      end;
end; 
procedure cor(grade:tdbgrid;color:tcolor);
// muda a cor para preto para todas as colunas de qualquer dbgrid
var
   i:integer;
   numcampos:integer;
begin
      numcampos:=grade.FieldCount;
      {subtraio -1 aqui embaixo porque as colunas começam de zero}
      for I := 0 to numcampos-1 do // COLOCA AS 23 COLUNAS COM COR PRETA
      grade.columns[i].font.color:=color;
end;
end.