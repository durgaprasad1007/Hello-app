package com.college;
import java.net.InetAddress;
    import java.util.ArrayList;
    import java.util.Collections;
    import java.util.Properties;
    import java.util.Date;
    import javax.mail.*;
    import javax.mail.internet.*;
    import javax.activation.*;

 public class Mail {

        public static void mail(String semail,String s,String sname ) {

            System.out.println(semail);
            String host = "smtp.gmail.com";
            String from = "kishoreuk712@gmail.com";
            Properties props = System.getProperties();
            props.put("mail.smtp.starttls.enable", "true");
            props.setProperty("mail.transport.protocol", "smtp");
            props.setProperty("mail.host", host);
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "587");    //port is 587 for TLS  if you use SSL then port is 465
            props.put("mail.debug", "true");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.fallback", "false");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            boolean debug = true;
            javax.mail.Session session1 = javax.mail.Session.getInstance(props,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication("kishoreuk712@gmail.com", "kishore@au");
                        }
                    });
            session1.setDebug(debug);
            try {
                Message msg = new MimeMessage(session1);
                msg.setFrom(new InternetAddress(from));
                InternetAddress[] address = {new InternetAddress(semail)};
                msg.setRecipients(Message.RecipientType.TO, address);
               
                msg.setSubject("College Login Credentials");
                msg.setSentDate(new Date());
                msg.setContent("Your Login Details are : username="+sname+ "/npassword="+s+"","text/html");
                Transport transport = session1.getTransport("smtp");
                transport.send(msg);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }