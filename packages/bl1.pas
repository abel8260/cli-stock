unit bl1;  
interface 
uses  CRT, SysUtils,
      bl11,bl12,bl13; {4 up}
      {3 down}
      {only bl1's}

procedure back_tipology; 

implementation 

      procedure back_tipology;
      var   esc: integer;
      begin

            writeln('Deseja alguma destas opcoes:');
            writeln('1: primeira tiragem na cli;');
            writeln('2: segunda vez ou mais;');
            writeln('3: ver tiragem;');
            write('Resposta:');
            readln(esc);
            
            if(esc = 1) then begin {1-1': primeira tiragem na cli;}
                  procedure_1_1_tipology;
            end;
            

            if(esc = 2) then begin  {2-a': segunda vez ou mais;}
                  procedure_1_2_tipology;    
            end;

            
            if(esc = 3) then begin {3-1': ver tiragem;}
                  procedure_1_3_tipology;
            end;

      end; 

end.