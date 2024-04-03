# Criando um projeto console com testes

## Criando o projeto console

1. Crie uma solution pelo console com o seguinte comando:

```csharp
dotnet new sln --name ConsoleTemplate
```

1. Agora crie um aplicativo de console onde se encontra a Solution com o seguinte comando:

```csharp
dotnet new console -o ProjectConsole
```

2. Adicione o projeto console criado no solution:

```csharp
dotnet sln add ProjectConsole/ProjectConsole.csproj
```

3. Antes de rodar rode o seguinte comando para limpar qualquer lixo:

```csharp
dotnet clean
```

4. Depois de rodado o comando acima, rode o seguinte comando para buildar o projeto:

```csharp
dotnet build
```

5. Agora podemos rodar o nosso projeto:

```csharp
dotnet run --project ProjectConsole/ProjectConsole.csproj
```

## Criando o projeto de console1. No mesmo local onde se encontra o projeto e a biblioteca criado rode o seguinte comando:


```csharp
dotnet new mstest -o ProjectConsoleTest
```

1. Agora devemos adicionar a referência do projeto de teste criado em nosso Solution:

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