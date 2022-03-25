package co.micol.prj.jobOpening.command;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.micol.prj.common.Command;

public class Sample implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String accessKey = "7oN8sSZPawK9qKuaLW8ezrOWVre6u6aIR2YneqiU88N2eFUYVY"; // 발급받은 accessKey";

        try {
            String text = URLEncoder.encode("", "UTF-8");
            String apiURL = "https://oapi.saramin.co.kr/job-search?access-key="+accessKey+"&keyword="+ text;

            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("Accept", "application/json");

            int responseCode = con.getResponseCode();
            BufferedReader br;

            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }

            String inputLine;
            StringBuffer response1 = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response1.append(inputLine);
            }
            br.close();           
            Gson gson = new GsonBuilder().create();
            request.setAttribute("text", gson.toJson(response1.toString()));
            System.out.println(gson.toJson(response1.toString()));
            response.getWriter().print(gson.toJson(response1.toString()));           
        } catch (Exception e) {
            System.out.println(e);
        }
		return "home/home.tiles";
	}

}
