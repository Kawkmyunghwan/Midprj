package co.micol.prj.member.command;

import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.SecureRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;

public class NaverLogin implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      try {
      String clientId = "4cr1ksyxrzcdlqxCuhUq";//애플리케이션 클라이언트 아이디값";
       String redirectURI = URLEncoder.encode("http://Midprj/api/naver/callback", "UTF-8");
      
       SecureRandom random = new SecureRandom();
       String state = new BigInteger(130, random).toString();
       String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
       apiURL += "&client_id=" + clientId;
       apiURL += "&redirect_uri=" + redirectURI;
       apiURL += "&state=" + state;
       
       response.sendRedirect(apiURL);
      } catch (Exception e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      return null;
   }

}