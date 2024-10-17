import java.io.* ;
import java.net.* ;

public class ClientUDP
{
    public static void main(String[] args) throws IOException
    {
        String s="Hello World";

        InetAddress addr = InetAddress.getLocalHost();
        System.out.println("adresse=" +addr.getHostName() );
        byte[] data = s.getBytes();
        DatagramPacket packet = new DatagramPacket (data, data.length, addr , 1234 );
        DatagramSocket sock = new DatagramSocket();
        String strrecep = new String(packet.getData());
        System.out.println("str=" + strrecep);
        sock.send(packet);
        sock.close();
    }
}