unit bl11;  
interface 
uses  CRT, SysUtils; 

procedure procedure_1_1_tipology; 

implementation 

		procedure procedure_1_1_tipology;

		  type rec0 =
		         record
		         s_0: integer;
		         tpo: string;
		         BASE_1o_v2:array[0..1,0..4] of string; 
		         end;

		   

		var cadastro_0: rec0;
		      CAD0 : FILE of rec0;     
		      esc: integer;
		      BASE_1o_v1:array[0..1,0..4] of string;    
		      cont: integer;

		begin

        BASE_1o_v1[0][0] := 'NOME';
        BASE_1o_v1[0][1] := 'PRECO';
        BASE_1o_v1[0][2] := 'ESTRELAS';
        BASE_1o_v1[0][3] := 'ID';

        BASE_1o_v1[0][4] := 'id-arv';
        BASE_1o_v1[1][4] := '1';
        

        cont := 0;

        assign(CAD0, '../db-pascal/PRODUTO'+BASE_1o_v1[1][4]+'-BASE.DAT');
        rewrite(CAD0); 
        
        repeat
	          cadastro_0.BASE_1o_v2[0][cont]:=BASE_1o_v1[0][cont];
	          cont := cont + 1;
        until cont=5;
        
        cont:= 0; 

        repeat

	          writeln;
	          writeln('Digite o '+BASE_1o_v1[0][cont]+' do produto:');
	          write('Resposta:');
	          readln(BASE_1o_v1[1][cont]);
	          cadastro_0.BASE_1o_v2[1][cont]:=BASE_1o_v1[1][cont];

	          cont := cont + 1;

        until cont=5;

        cont:= 0;

        {cadastro_0.BASE_1o_v2[1][5] := cadastro_0.BASE_1o_v2[1][5] + 1;}
        write(CAD0, cadastro_0);
        close(CAD0);
        end;
end.