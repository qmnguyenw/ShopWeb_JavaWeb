/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Helper;

import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author admin
 */
public class SendMail {
    //Gui mail nhan thong bao thong tin san pham 
    // dang code do
    //neu hom nay ko cham thi toi nay lam
    //con moi lam jap thoi xong controller va ca thu roi. Neu ong can thi t
    //am 2-3 h toi gui cho
            //thoi ko can gap the dau 
            //ma lam the nao de vao quyen cuar admin kieu add account, management 
            //
           // account admin pass admin
    public static void send(String rep, String email) throws Exception{ 
        System.out.println("Prepare to send");
        //create an instance of Properties Class   
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        String myAccountGmail = "Your account gmail";
        String myPasswordGmail = "Your Passsword";
        //Quen ko xoa nhieu 
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(myAccountGmail, myPasswordGmail);
            }    
        });
        Message message = prepareMessage(session, myAccountGmail, rep, email);
        Transport.send(message);
        System.out.println("Message sent successfully!");
    }
    
    private static Message prepareMessage(Session session, String myAccountGmail, String rep, String email) throws MessagingException{
        
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountGmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(rep));
            message.setContent("<h1>Hi</h1>"
                    + email + "<p>! You subcribed Phong Vu</p>"
                    +"<p>You can get a free delivery on your first order!</p>"
                    + "<p>Beside, you will get newest product's informations from Phong Vu. Thank you! </p>"
                    + "<p>http://localhost:8080/HienNNHE130005</p>"
                    + "<img src=\"https://img-cdn1.phongvu.vn/media/catalog/product/cache/23/small_image/"
                    + "300x/9df78eab33525d08d6e5fb8d27136e95/storage/laptop/1809180/86b3c30c9cfb4b722f3e4b49451aa81e_1809180.jpg\" "
                    + "alt=\"\" width=\"150\" height=\"150\">"
                    + "<br><p>Note: This mail is automatic, please do not re-sent it!</p>"
                    , "text/html; charset=utf-8");
            return message;
        } catch (AddressException ex) {
            Logger.getLogger(SendMail.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
