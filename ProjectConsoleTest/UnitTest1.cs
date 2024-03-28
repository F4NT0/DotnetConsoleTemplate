using Microsoft.VisualStudio.TestTools.UnitTesting;
using ProjectConsole;

namespace ProjectConsoleTest;

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