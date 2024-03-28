# Criando um projeto console com testes

## Criando o projeto console

1. Crie uma solution pelo console com o seguinte comando:

```csharp
dotnet new sln --name ConsoleTemplate
```

2. Crie uma Biblioteca de classe (Class Library) dentro da Solution:

```csharp
dotnet new classlib -o OfficialProject
```

3. Devemos adicionar a biblioteca à nossa solution:

```csharp
dotnet sln add OfficialProject/OfficialProject.csproj
```

4. Após adicionar o projeto na Solution, rode o comando de build:

```csharp
dotnet build
```

5. Agora crie um aplicativo de console onde se encontra a Solution com o seguinte comando:

```csharp
dotnet new console -o ProjectConsole
```

6. Adicione o projeto console criado no solution:

```csharp
dotnet sln add ProjectConsole/ProjectConsole.csproj
```

7. Agora devemos conectar a referencia da biblioteca no nosso projeto console:

```csharp
dotnet add  ProjectConsole/ProjectConsole.csproj reference OfficialProject/OfficialProject.csproj
```

8. Agora podemos rodar o nosso projeto, colocando código na biblioteca e código no projeto:

```csharp
dotnet run --project ProjectConsole/ProjectConsole.csproj
```

## Criando o projeto de console

1. No mesmo local onde se encontra o projeto e a biblioteca criado rode o seguinte comando:

```csharp
dotnet new mstest -o ProjectConsoleTest
```

2. Agora devemos adicionar a referência do projeto de teste criado em nosso Solution:

```csharp
dotnet sln add ProjectConsoleTest/ProjectConsoleTest.csproj
```

3. Agora devemos criar a conexão do nosso projeto de teste com o projeto oficial que criamos:

```csharp
dotnet add ProjectConsoleTest/ProjectConsoleTest.csproj reference ProjectConsole/ProjectConsole.csproj
```

4. Crie os testes que deseja e os códigos que deseja.

5. Para rodar os testes rode o seguinte comando:

```csharp
dotnet test ProjectConsoleTest/ProjectConsoleTest.csproj
```