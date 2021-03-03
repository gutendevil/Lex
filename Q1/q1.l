
%{ 

%} 

%% 

("while"|"if"|"for"|"int"|"float"|"char"|"main"|"printf"|"scanf"|"break"|"do"|"typedef"|"static")  {
                
                                                                                                      printf("%s is a Keyword\n",yytext);}
("||"|"&&"|"!") {
                    printf("%s is a Logical operator\n",yytext);
                }
(_|[a-z])[a-z0-9]* {
                    printf("%s is an Identifier\n",yytext);
                   }
("+"|"-"|"/"|"*") {
                    printf("%s is an Arithematic operator\n",yytext);
                  }
("++"|"--"|"*")   {
                    printf("%s is a Unary operator\n",yytext);
                  }
[\+-]?[0-9]+\.?[0-9]* {
                       printf("%s is a Constant\n",yytext); 
                      }

(">"|"<"|"<="|">="|"!=") {
                         printf("Relational operator\n");
                         }
.	 {printf("%s is Invalid\n", yytext);} 
\n {return 0;} 
%% 

int yywrap(){} 
int main(){ 


yylex(); 


return 0; 
} 
