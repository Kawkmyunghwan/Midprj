package co.micol.prj.jobOpening.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.micol.prj.common.Command;
import co.micol.prj.jobOpening.service.JobOpeningService;
import co.micol.prj.jobOpening.service.JobOpeningVO;
import co.micol.prj.jobOpening.serviceImpl.JobOpeningServiceImpl;

public class AjaxLocationSelect implements Command {
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<JobOpeningVO> list = new ArrayList<>();
		JobOpeningService dao = new JobOpeningServiceImpl();
		String str = request.getParameter("selectBox");
		String[] strArr = str.split("-");

		for(int i=0; i<strArr.length; i++) {		
			list.addAll(dao.selectLocationList(strArr[i]));
		}
		
		Gson gson = new GsonBuilder().create();
		String data = gson.toJson(list);	
		
		System.out.println(data);
		
		return "ajax:" + data;
	}

}
