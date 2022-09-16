package com.br.law.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.br.law.service.user.ApplicationRegistrationService;
import com.br.law.service.user.TrialUserService;
import com.br.law.vo.Tb_001;
import com.br.law.vo.Tb_002;
import com.br.law.vo.Tb_005;
import com.br.law.vo.Tb_006;
import com.br.law.vo.Tb_007;
import com.br.law.vo.Tb_008;
import com.br.law.vo.Tb_009;

@Controller
@RequestMapping("/user/*")
public class ApplicationRegistrationUserController {

	private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(TrialUserController.class);
	
	@Autowired
	private TrialUserService trialUserService; 
	
	@Autowired
	private ApplicationRegistrationService applicationRegistrationService;
	
	
	@RequestMapping("user/main")
	public String main() {
		return"user/main";
	}
	
	@RequestMapping("user/register")
	public String register() {
		return"user/register";
	}
	//회원가입
	@RequestMapping("applicationRegistration")
	public String applicationRegistration() {	
		return"user/applicationRegistration";
	}
	
	@RequestMapping("applicationRegistrationProcess")
	public String applicationRegistrationProcess(HttpSession session, Tb_001 param) {
		applicationRegistrationService.userIns(param); 
		return"redirect:../user/main";
	}
	
	
	//등재신청 시작
	@RequestMapping("announcement")
	public String announcement(Model model) {
		List<Tb_002> list = applicationRegistrationService.asd();
		model.addAttribute("asd", list);
		System.out.println("어논 : " + model);
		
		return "user/announcement";
	}
	
	@RequestMapping("announcementProcess")
	public String announcementProcess(HttpSession session, Tb_002 param) {
		session.setAttribute("two", param);
		System.out.println(((Tb_002)session.getAttribute("two")).getAnnounce_proper_num());
		return "redirect:../user/userDetail";
	}
	
	
	@RequestMapping("userDetail")
	public String userDetail(Model model, HttpSession session, Tb_005 param) {
		int announce_proper_num = ((Tb_002)session.getAttribute("two")).getAnnounce_proper_num();
		int user_proper_num = ((Tb_001)session.getAttribute("user")).getUser_proper_num();
		
		//카운트
		int alpa = applicationRegistrationService.userDetailCount(user_proper_num, announce_proper_num);
		int beta = applicationRegistrationService.duplicate(announce_proper_num, user_proper_num);
		param.setUser_proper_num(user_proper_num);
		param.setAnnounce_proper_num(announce_proper_num);
		
		System.out.println("투 : " + announce_proper_num);
		System.out.println("유저 : " + user_proper_num);
		System.out.println("확인용 " + alpa);
		if(beta != 0) {
			return "redirect:../user/main";
		}else {
			//기존에 자료가 있다면 자료 값 불러옴 
			if(alpa != 0) {
				//자료가 없으면 불러오지 않음
				Tb_005 five = applicationRegistrationService.userDetailSel(param);
				model.addAttribute("five", five);
				System.out.println("확인1 : " +  model);
				model.addAttribute("count", alpa);
			}
		}
		return "user/userDetail";
	}
	
	
	@RequestMapping("userDetailInsProcess")
	public String userDetailInsProcess(HttpSession session, Model model, Tb_005 param) {
		int two = ((Tb_002)session.getAttribute("two")).getAnnounce_proper_num();
		int userNo = ((Tb_001)session.getAttribute("user")).getUser_proper_num();
		param.setUser_proper_num(userNo);
		param.setAnnounce_proper_num(two);
		
		Tb_005 five = applicationRegistrationService.userDetailIns(param);
		session.setAttribute("five", five);
		System.out.println("확인 : " + five);
		return "redirect:../user/univ";
	}
	
	@RequestMapping("userDetailUpProcess")
	public String userDetailUpProcess(HttpSession session, Model model, Tb_005 param) {
		int two = ((Tb_002)session.getAttribute("two")).getAnnounce_proper_num();
		int userNo = ((Tb_001)session.getAttribute("user")).getUser_proper_num();
		param.setUser_proper_num(userNo);
		param.setAnnounce_proper_num(two);
		
		Tb_005 five = applicationRegistrationService.userDetailUp(param);
		session.setAttribute("five", five);
		System.out.println("확인 : " + five);
		return "redirect:../user/univ";
	}
	
	@RequestMapping("univ")
	public String univ (HttpSession session, Model model, Tb_006 param){
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		
		int count = applicationRegistrationService.univCount(fiveNo);
		if(count != 0) {
			Tb_006 six = applicationRegistrationService.univSel(param);
			model.addAttribute("six", six);
			model.addAttribute("count", count);
			System.out.println("확인용 : " + model);	
		}
		return"user/univ";
	}
	
	@RequestMapping("univInsProcess")
	public String univInsProcess(HttpSession session, Tb_006 param) {
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		applicationRegistrationService.univIns(param);
		return "redirect:../user/career";
	}
	@RequestMapping("univUpProcess")
	public String univUpProcess(HttpSession session, Tb_006 param) {
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		applicationRegistrationService.univUp(param);
		return "redirect:../user/career";
	}
	
	
	@RequestMapping("career")
	public String career(HttpSession session, Model model, Tb_007 param) {
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		
		int count = applicationRegistrationService.careerCount(fiveNo);
		if(count != 0) {
			Tb_007 seven = applicationRegistrationService.careerSel(param);
			model.addAttribute("seven", seven);
			model.addAttribute("count", count);
			System.out.println("확인용 : " + model);	
		}
		return "user/career";
	}
	
	@RequestMapping("careerInsProcess")
	public String careerInsProcess(HttpSession session, Tb_007 param) {
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		applicationRegistrationService.careerIns(param);
		return "redirect:../user/license";
	}
	@RequestMapping("careerUpProcess")
	public String careerUpProcess(HttpSession session, Tb_007 param) {
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		applicationRegistrationService.careerUp(param);
		return "redirect:../user/license";
	}
	
	@RequestMapping("license")
	public String license(HttpSession session, Model model, Tb_008 param) {
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		
		int count = applicationRegistrationService.licenceCount(fiveNo);
		if(count != 0) {
			Tb_008 eight = applicationRegistrationService.licenceSel(param);
			model.addAttribute("eight", eight);
			model.addAttribute("count", count);
			System.out.println("확인용 : " + model);	
		}
		return "user/license";
	}
	
	@RequestMapping("licenseInsProcess")
	public String licenseInsProcess(HttpSession session, Tb_008 param){
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		applicationRegistrationService.licenseIns(param);
		return "redirect:../user/fileUpload";
	}
	@RequestMapping("licenseUpProcess")
	public String licenseUpProcess(HttpSession session, Tb_008 param){
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		param.setAplcn_dtls_proper_num(fiveNo);
		applicationRegistrationService.licenseUp(param);
		return "redirect:../user/fileUpload";
	}
	
	@RequestMapping("user/fileUpload")
	public String fileUpload() {
		return "user/fileUpload";
	}
	
	@RequestMapping("user/multiFileUpload")
	public String requestupload1(HttpSession session, MultipartHttpServletRequest request, Tb_009 upload) {
		
		
		List<MultipartFile> fileList = request.getFiles("file");
		ArrayList<Tb_009> list = new ArrayList<Tb_009>();
		
		String[] code = request.getParameterValues("file_code");
		String[] type = request.getParameterValues("file_type");
		
		int fiveNo = ((Tb_005)session.getAttribute("five")).getAplcn_dtls_proper_num();
		
		Tb_001 one = (Tb_001)session.getAttribute("user");
//		Tb_002 two = (Tb_002)session.getAttribute("two");
//		Tb_005 five = (Tb_005)session.getAttribute("five");
//		Tb_006 six = (Tb_006)session.getAttribute("six");
//		Tb_007 seven = (Tb_007)session.getAttribute("seven");
//		Tb_008 eight = (Tb_008)session.getAttribute("eight");
//		
		int userNo  = one.getUser_proper_num();
		String userName = one.getUser_name();
//		
//		six.setAplcn_dtls_proper_num(fiveNo);
//		seven.setAplcn_dtls_proper_num(fiveNo);
//		eight.setAplcn_dtls_proper_num(fiveNo);
//		five.setAnnounce_proper_num(two.getAnnounce_proper_num());
//		five.setUser_proper_num(userNo);
		
		
		
		int i = 0;
		for(MultipartFile file : fileList) {
			
//			if(file.isEmpty()) {
//				System.out.println("값이 없어영");
//				continue;
//			}
			String path ="C:/uploadFiles/";
			
			String originFileName = file.getOriginalFilename();
			
			
			String nameFile = System.currentTimeMillis() + originFileName;
			
			LOGGER.debug("이건 로거" + userName);
			
			File userFolder = new File(path + userNo + userName);
			System.out.println("확인용 : " + userNo + "," + userName);
			if(!userFolder.exists()) {
				userFolder.mkdirs();
			}
			
			try {
				file.transferTo(new File(path + userNo + userName + "/" + nameFile));
				System.out.println("테스트 : " + path + userNo + userName + nameFile);
			}catch(IllegalStateException e) {
				e.printStackTrace();
			}catch(IOException e) {
				e.printStackTrace();
			}
			
			//첨부파일 모든거 집어넣기
			Tb_009 image = new Tb_009();
			image.setOriginal_file_name(originFileName);
			image.setFile_path(userFolder + "/" + nameFile);
			image.setFile_code(code[i]);
			image.setFile_type(type[i]);
			LOGGER.debug("code" + code[i]);
			image.setAplcn_dtls_proper_num(fiveNo);
			
			list.add(image);
			i++;
		}
		
		
//		applicationRegistrationService.userDetailUp(five);
//		applicationRegistrationService.univIns(six);
//		applicationRegistrationService.careerIns(seven);
//		applicationRegistrationService.licenseIns(eight);
		applicationRegistrationService.uploadFilesIns(list);
		applicationRegistrationService.UserDetailExam(fiveNo);
		
		
		return "redirect:../user/main";
	}
	
//	@RequestMapping("example")
//	public String example(int user_proper_num, int announce_proper_num, Model model) {
//		int alpa = applicationRegistrationService.userDetailCdt(user_proper_num, announce_proper_num);
//		if(alpa == 0) {
//			
//		}else {
//			Tb_005 five = applicationRegistrationService.selFiveFirst(user_proper_num, announce_proper_num);
//			model.addAttribute("ss", five);
//			model.addAttribute("count", alpa);
//		}
//		
//		return "user/example";
//	}
	
	
	
}
