using System;
using System.Collections.Generic;
using System.Text;

namespace tersinecevirmek
{
    class ters
    {
        public string Hello;

        public ters(string hello)
        {
            Hello = hello;            
        }

        public StringBuilder Cevir(string hello)
        {
            StringBuilder sb = new StringBuilder();
            for(int i = hello.Length - 1; i>= 0; i--)
            {
                Console.WriteLine(sb[i]);
            }
            return sb;
        }
    }

    
            
   
}
