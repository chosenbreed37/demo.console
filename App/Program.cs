using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Topshelf;

namespace App
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Running App 0.1...");
            HostFactory.Run(x =>
            {
                x.Service<DemoService>(s =>
                {
                    s.ConstructUsing(name => new DemoService());
                    s.WhenStarted(tc => tc.Start());
                    s.WhenStopped(tc => tc.Stop());
                });
                x.RunAsLocalSystem();

                x.SetDescription("Sample Topshelf Host");
                x.SetDisplayName("Demo Service App");
                x.SetServiceName("DemoServiceApp");
            });
        }
    }
}
