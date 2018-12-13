import java.io.*;
import java.net.*;
import java.util.*;

public class ServerThread extends Thread {
	Socket socket;
	ServerThread(Socket s)
	{
		this.socket=s;
	}
	public void run()
	{
		try
		{
			String message = null;
			
			DataInputStream dIn = new DataInputStream(socket.getInputStream());
            		DataOutputStream  dOut = new DataOutputStream(socket.getOutputStream());
			System.out.println("**Welcome**");
			while(true)
			{
				message = dIn.readUTF();
				System.out.println(message);
			}
			//socket.close();
		}
		catch(Exception e)
		{
			System.out.println("Client Terminated...");
		}
	}

}
