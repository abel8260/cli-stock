	unit bl13;  
	interface 
	uses  CRT, SysUtils, bl11; 

	procedure procedure_1_3_tipology; 
	
	implementation 
		{ajeitar o var;}
		procedure procedure_1_3_tipology;
		
       

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
		      cont_base: integer;
		      gui:integer; 
		      

		begin

	        BASE_1o_v1[0][0] := 'NOME';
	        BASE_1o_v1[0][1] := 'PRECO';
	        BASE_1o_v1[0][2] := 'ESTRELAS';
	        BASE_1o_v1[0][3] := 'ID';

	        BASE_1o_v1[0][4] := 'id-arv';
	        BASE_1o_v1[1][4] :=  '1';

	        cont := 0;

	        writeln('Digite o numero final de produtos:');
	        writeln('O.B.S.:DIGITE UM NUMERO APENAS.');
	        readln(gui);

			cont_base := 0;

            while (cont_base < gui) do begin
	            
	            cont_base := cont_base + 1;
                BASE_1o_v1[1][4] := IntToStr(cont_base);
				assign(CAD0, '../db-pascal/PRODUTO'+BASE_1o_v1[1][4]+'-BASE.DAT');
	            if (IOResult <> 0) Then Begin
					rewrite(CAD0);
		            close(CAD0);

		        End  

			    Else Begin
		          Writeln ('../db-pascal/PRODUTO'+BASE_1o_v1[1][4]+'-BASE.DAT n existe');
		            
		            
					reset(CAD0);
					read(CAD0,cadastro_0);
					
			        
			        cont:= 0;

			        repeat
						
				        write(cadastro_0.BASE_1o_v2[0][cont]+' do produto:');
				        writeln(cadastro_0.BASE_1o_v2[1][cont]);
				        cont := cont + 1;

			        until cont=5;

			        close(CAD0);  
		            
		        End;
 
	        end;
		 

        end;
    end.