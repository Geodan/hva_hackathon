using System;

namespace tourniquette
{
    public class LineParser
    {
        public static TourniquetteEvent Parse(string s)
        {
            var items = s.Split(';');
            var t = new TourniquetteEvent();

            t.Ingang = GetIngang(items[0]);
            t.DateTime= GetDate(items[1],items[2]);

            return t;
        }

        private static DateTime GetDate(string date, string time)
        {
            // 20171224; 110737
            var h = Int32.Parse(time.Substring(0, 2));
            var m = Int32.Parse(time.Substring(2, 2));
            var s = Int32.Parse(time.Substring(4, 2));
            var d = new DateTime(2017,12,24,h,m,s);
            return d;
        }

        private static char GetIngang(string s)
        {
            var ingang = s[0];
            if(ingang== 'S')
            {
                ingang = s[1];
            }
            return ingang;
        }
    }
}
