<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

<%

   

    String result;

    

    final String to = session.getAttribute("mail").toString();

    final String from = "carstopbatch20@gmail.com";

    final String pass = "Carstop@2021";


    String host = "smtp.gmail.com";

 

    Properties props = new Properties();
    

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "587");

 //443
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {


        MimeMessage message = new MimeMessage(mailSession);

   
        message.setFrom(new InternetAddress(from));



        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));


        message.setText("We have recieved you payment for your car!!! Thankyou for shopping with us");

        // Send message

        Transport.send(message);

       // result = "Your mail sent successfully....";
       response.sendRedirect("index.html");

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

%>
