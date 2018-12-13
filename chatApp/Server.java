import java.io.*;
import java.net.*;
import java.util.*;

public class Server{
	//public static final int PORT = 4444;
	public static void main(String[] args) throws IOException
	{
		try{
			new Server().runServer();
   		}

		catch(Exception e)
		{
			System.out.println("Client Terminated");
		}
	}

	public void runServer()
	{
		try
		{
			ServerSocket ss=new ServerSocket(5000);

			while(true)
			{
				Socket socket=ss.accept();
				new ServerThread(socket).start();
			}
		}
		catch(Exception e)
		{
			System.out.println("Client Terminated");
		}


	}
}
