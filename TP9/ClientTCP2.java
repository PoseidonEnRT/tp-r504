import java.io.* ;
import java.net.* ;

public class ClientTCP2
{
    public static void main(String[] args) throws IOException
    {
        Socket socket = new Socket( "localhost", 2016);
        DataOutputStream dOut = new DataOutputStream(socket.getOutputStream() );
        dOut.writeUTF("message test");
        socket.close();
    }
}