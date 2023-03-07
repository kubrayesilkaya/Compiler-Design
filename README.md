# Compiler Design
## Compiler Design Project

The first step of the compiler is lexical analysis, the second step is parse.

I used flex to compile my lexical analyzer, and I used Bison to compile my parser.

I compiled my Lexical analysis file with the flex KY.l command, and created my lex.yy.c file.

![lexical derleme cmd](https://user-images.githubusercontent.com/93487264/223560515-c2f21a8c-d34a-49f7-b013-8fbc5a150469.png)
![Screenshot_5](https://user-images.githubusercontent.com/93487264/223560674-c8dd5c10-731c-4e75-b010-0d625c9e6673.png)

I compiled my Parser file with the bison -d KY.y command, and created my KY.tab.c and KY.tab.h files.

![bison derleme cmd](https://user-images.githubusercontent.com/93487264/223560873-c48fac14-29cb-481a-96f3-ef26a71c6aa1.png)
![parser derleme dosya oluşumu](https://user-images.githubusercontent.com/93487264/223560970-e5c807c3-54ed-4619-8a7b-2df6163e42d7.png)

I rename my files:
•	KY.tab.c -> y.tab.c
•	KY.tab.h -> y.tab.h

![Resim1](https://user-images.githubusercontent.com/93487264/223561367-6b0db594-ea6a-4c59-83a7-dea9c528874a.png)

I compile with the C compiler by typing the command "gcc -o KY.exe y.tab.c", and created my KY.exe file.The KY.exe file is my language.

![C derleyici ile derle  exe](https://user-images.githubusercontent.com/93487264/223561721-83e988b9-cfc6-41e2-8836-d34df1e4fad7.png)
![exe](https://user-images.githubusercontent.com/93487264/223561830-eff29990-399f-44e2-96a6-7ae3a7634ede.png)

I run it with the "KY.exe" command to use the KY language.

![ky çalıştr](https://user-images.githubusercontent.com/93487264/223561963-48e0f298-9b25-44f8-8d3d-9ad2ce607455.png)

Writing an error-free sample code in KY language:

![great job](https://user-images.githubusercontent.com/93487264/223562100-de07d181-da16-4476-95d4-efb82c13d6fc.png)

Writing a sample code with syntax error in KY language:

![faiulure](https://user-images.githubusercontent.com/93487264/223562186-129c2342-9599-409b-afc7-339781be308f.png)

