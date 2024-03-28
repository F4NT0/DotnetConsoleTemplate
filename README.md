# Exemplos de projetos console em C#

Projetos .NET do tipo console são projetos simples para podermos testar projetos.

## Criando um projeto console pelo terminal

Após instalado o .NET no seu computador, rode o seguinte comando no terminal onde você quiser:

```csharp
dotnet new console -n ConsoleTemplate
```

### Rodando o projeto

Acesse o novo diretório criado e rode o seguinte comando no terminal:

```csharp
dotnet run
```

### Limpando projeto antes de commitar

Antes de commitar qualquer alteração deve rodar o seguinte comando no terminal:

```csharp
dotnet clean
```

Esse comando  limpa todos os arquivos gerados durante a compilação.

### Compilando o projeto  sem executá-lo

Para compilar o projeto sem executa-lo utilize o seguinte comando:

```csharp
dotnet build
```

### Estrutura base  de um projeto Console

O código base de uma classe em C# é como abaixo:

```csharp

namespace ConsoleTemplate
{
    class Program
    {
        static void Main(string[] args)
        {
            // Adicione o código aqui
        }
    }
}
```

---

## Criando projeto de testes unitários

Devemos adicionar ao nosso projeto um pacote de testes unitários chamado `xunit`

```csharp
dotnet add package xunit
```

Depois devemos criar um projeto de teste no mesmo nível do nosso projeto original.

Devemos rodar o seguinte comando, não esquecendo que o nome do programa deve ser o mesmo:

```csharp
dotnet new xunit -n ConsoleTemplate.Tests
```

Devemos adicionar no nosso novo projeto de teste uma conexão com o nosso projeto console no arquivo `NomePrograma.Tests.csproj` com o caminho ao `csproj` para o nosso projeto principal:

```csharp
<ItemGroup>
   <ProjectReference Include="..\ConsoleTemplate\ConsoleTemplate.csproj" />
</ItemGroup>
```

### Criando uma classe de teste

### Rodando os testes

Primeiro devemos buildar o nosso projeto com o seguinte comando:

```csharp
dotnet build
```

No terminal rode o seguinte comando para rodar os testes:

```csharp
dotnet test ConsoleTemplate.Tests.dll
```


