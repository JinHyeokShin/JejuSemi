package web.mail;
 
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
 
public class MailAuth extends Authenticator{
    
    PasswordAuthentication pa;
    
    // 입력 전에 구글 보안 상태 변경  : 보안 수준 낮은앱 허용(사용안함 -> 사용으로 변경)
    public MailAuth() {
        String mail_id = "sangyoon2ya";
        String mail_pw = "12Rjwlfua!";
        
        pa = new PasswordAuthentication(mail_id, mail_pw);
    }
    
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
}

