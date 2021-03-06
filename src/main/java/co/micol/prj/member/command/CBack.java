package co.micol.prj.member.command;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.prj.common.Command;

public class CBack implements Command {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      try {
         String clientId = "4cr1ksyxrzcdlqxCuhUq";// 애플리케이션 클라이언트 아이디값";
         String clientSecret = "64vJKNjyna";// 애플리케이션 클라이언트 시크릿값";
         String code = request.getParameter("code");
         String state = request.getParameter("state");
         String redirectURI = URLEncoder.encode("http://Midprj/api/naver/callback", "UTF-8");
         String apiURL;
         apiURL = "https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&";
         apiURL += "client_id=" + clientId;
         apiURL += "&client_secret=" + clientSecret;
         apiURL += "&redirect_uri=" + redirectURI;
         apiURL += "&code=" + code;
         apiURL += "&state=" + state;
         String access_token = "";
         String refresh_token = "";
         System.out.println("apiURL=" + apiURL);

         URL url = new URL(apiURL);
         HttpURLConnection con = (HttpURLConnection) url.openConnection();
         con.setRequestMethod("GET");
         int responseCode = con.getResponseCode();
         BufferedReader br;
         System.out.print("responseCode=" + responseCode);
         if (responseCode == 200) { // 정상 호출
            br = new BufferedReader(new InputStreamReader(con.getInputStream()));
         } else { // 에러 발생
            br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
         }
         String inputLine;
         StringBuffer res = new StringBuffer();
         while ((inputLine = br.readLine()) != null) {
            res.append(inputLine);
         }
         br.close();
         if (responseCode == 200) {
            System.out.println(res.toString());
         }
      } catch (Exception e) {
         System.out.println(e);
      }
      return null;
   }

}