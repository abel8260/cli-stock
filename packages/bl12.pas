 unit bl12;  
interface 
uses  CRT, SysUtils,bl14; 

procedure procedure_1_2_tipology; 

implementation 

      procedure procedure_1_2_tipology;

      var   esc: integer;

      begin

          writeln('Deseja alguma destas opcoes:');
          writeln('4: alterar um produto em especifico;');
          writeln('5: completar tiragem;');
          writeln('6: fazer backup;');
          writeln('7: ver um produto em especifico;');
          write('Resposta:');
          readln(esc);

          if(esc = 4) then begin {4-2': alterar um produto em especifico;}
               procedure_1_4_tipology;
          end;

          if(esc = 5) then begin {5-2': completar tiragem;}

          end;

          if(esc = 6) then begin {6-2': fazer backup;}

          end;

          if(esc = 7) then begin {7-2': ver um produto em especifico;}

          end;
     end;
     
end.