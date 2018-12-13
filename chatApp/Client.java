import java.net.*;
import java.util.*;
import java.io.*;
//import java.io.InputStreamReader;
//import java.io.BufferReader;

public class Client{
	public static void main(String[] args) throws IOException
	{
		String name=args[0];
		Scanner scan = new Scanner(System.in);
		Socket s= new Socket("127.0.0.1",5000);
		DataInputStream	dIn = new DataInputStream(s.getInputStream());
          	DataOutputStream  dOut = new DataOutputStream(s.getOutputStream());


		while(true)
		{
	
			String send = scan.nextLine();
			dOut.writeUTF(name+": "+send);
			if(send.equals("STOP"))
			{
				System.out.println(name+" terminated");
				break;
			}

		}
	}
}
