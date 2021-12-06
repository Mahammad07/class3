using System;
using System.Collections.Generic;
using System.Text;

namespace ters1
{
    class ters11
    {
        public string Name;
        

        public ters11(string name)

        {
            Name = name;
           

        }

        public string Cevir(string name,string result)
        {
            
           
            for(int i = name.Length - 1; i == 0; i--)
            {
               result += name[i];
                
            }
            return result;

        }



    }
}
