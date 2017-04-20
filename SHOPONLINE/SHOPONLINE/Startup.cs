using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SHOPONLINE.Startup))]
namespace SHOPONLINE
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
