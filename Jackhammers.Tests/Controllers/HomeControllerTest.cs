using Jackhammers.Controllers;
using Xunit;

namespace Jackhammers.Tests.Controllers
{
    public class HomeControllerTest
    {
        [Fact]
        public void Index()
        {
            // Arrange
            var controller = new HomeController();

            // Act
            var result = controller.Index();

            // Assert
            Assert.NotNull(result);
        }
    }
}
