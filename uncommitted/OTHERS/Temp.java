import java.util.*;
import java.io.*;
public class Temp {
   public static void main (String [] args) throws java.io.IOException {
      int ch;
      while ((ch = System.in.read ()) != -1) {
		  if (ch == '\t')
		 	 System.out.print("\\t");
		  else if (ch == '\n')
		 	 System.out.print("\\n");
		  else if (ch == '\"')
		 	 System.out.print("\\\"");
		  else if (ch == '\'')
		 	 System.out.print("\\\'");
		  else if (ch == '\\')
		 	 System.out.print("\\\\");
		  else
          	System.out.print ((char) ch);
	  }
   
   }
}
