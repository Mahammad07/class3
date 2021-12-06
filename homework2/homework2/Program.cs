using System;

namespace homework2
{
    class Program
    {
        static void Main(string[] args)
        {
            student kamran = new student("i am studying");
            Console.WriteLine(kamran.Name);

            teacher kamuran=new teacher("i am explaining");
            Console.WriteLine(kamuran.Name);

            person Greeet = new person("hamiya salam");
            Console.WriteLine(Greeet.Name);

            person Age = new person($"{10}");
                Console.WriteLine(Age.Name);

            student AgeStudent = new student("my age is:x years od");
                Console.WriteLine(AgeStudent.Name);
        }
    }
}
