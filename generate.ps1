# ------------------------
# .NET PROJECT GENERATION
# ------------------------

# Define the solution
$solutionName = Read-Host 'Enter the Solution name: '
dotnet new sln --name $solutionName

# create a console project
$projectName = Read-Host 'Enter the Project name: '
dotnet new console -o $projectName

# Add the project to the solution
dotnet sln add $projectName/$projectName.csproj

# Create a test project
$testProjectName = $projectName + '-test'
dotnet new mstest -o $testProjectName

# Add the test project to the solution
dotnet sln add $testProjectName/$testProjectName.csproj

# Add a reference to the test project
dotnet add $testProjectName/$testProjectName.csproj reference $projectName/$projectName.csproj

# ----------------------------------------
# ADD SIMPLE HELLO WORLD INTO THE PROJECT
# ----------------------------------------

$code = @"
namespace $projectName
{
    public class Program
    {
        static void Main(string[] args)
        {
            string test = GetHelloWorld();
            Console.WriteLine(test);
        }

        public static string GetHelloWorld()
        {
            return `"Hello World!`";
        }
    }
}
"@

$code | Out-File -FilePath $projectName/Program.cs

# --------------------------------
# ADD TESTS INTO THE TEST PROJECT
# --------------------------------

$testCode = @"
using Microsoft.VisualStudio.TestTools.UnitTesting;
using $projectName;

namespace $testProjectName;

[TestClass]
public class UnitTest1
{
    [TestMethod]
    public void TestHelloWorld()
    {
        // Arrange
        //Program program = new Program();
        
        // Act
        string result = Program.GetHelloWorld();

        // Assert
        Assert.AreEqual("Hello World!", result);
    }
}
"@

$testCode | Out-File -FilePath $testProjectName/UnitTest1.cs

# ------------
# RUN PROJECT
# ------------

dotnet run --project $projectName/$projectName + '.csproj'

# -------------
# RUN THE TESTS
# --------------

dotnet test $testProjectName/$testProjectName + '.csproj'