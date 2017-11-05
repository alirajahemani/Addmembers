using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MembersAddition.Startup))]
namespace MembersAddition
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
