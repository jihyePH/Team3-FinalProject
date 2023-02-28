package com.mulcam.SpringProject.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mulcam.SpringProject.entity.Board;
import com.mulcam.SpringProject.entity.BoardMate;
import com.mulcam.SpringProject.entity.MatchingUsers;
import com.mulcam.SpringProject.entity.User;
import com.mulcam.SpringProject.entity.UserInfo;
import com.mulcam.SpringProject.misc.ExerciseUtill;
import com.mulcam.SpringProject.service.BoardMateService;
import com.mulcam.SpringProject.service.UserService;
import com.mulcam.SpringProject.session.UserSession;

@Controller
@RequestMapping("/group")
public class BoardMateController {
	@Autowired private UserSession userSession;	
	@Autowired private BoardMateService service;
	@Autowired private UserService userService;
	@Autowired private ExerciseUtill exerciseUtill;
	
	/** 운동 참가 신청*/
	@ResponseBody
	@GetMapping("/apply")
	public String apply(int bid, String receiveUser) {
		String user = userSession.getUid();
		
		int bIsFull = service.getbIsFull(bid);
		if (bIsFull == 0 && user != receiveUser) {
			BoardMate bMate = new BoardMate(bid, user, receiveUser);
			service.apply(bMate);
			return "참가신청중";
		} else {
			return "참가신청";
		}
	}
	
	/** 운동 참가 취소*/
	@ResponseBody
	@GetMapping("/applyCancel")
	public String applyCancel(int bid, String receiveUser) {
		String user = userSession.getUid();
		
		BoardMate bMate = new BoardMate(bid, user, receiveUser);
		service.applyCancel(bMate);
		return "참가신청";
	}
	
	/** 운동 참가 거절*/
	@ResponseBody
	@GetMapping("/applyReject")
	public void applyReject(int bid, String receiveUser) {
		String user = userSession.getUid();
		
		BoardMate bMate = new BoardMate(bid, user, receiveUser);
		service.applyCancel2(bMate);
	}
	
	/** 운동 참가 수락*/
	@ResponseBody
	@GetMapping("/applyAccept")
	public void applyAccept(int bid, String receiveUser) {
		String user = userSession.getUid();
		
		BoardMate bMate = new BoardMate(bid, user, receiveUser);
		service.applyAccept(bMate);
		
		int count = service.getUserCount(bid);
		int applyCount = service.getApplyCount(bid);
		System.out.println(count + "*******" + applyCount);
		System.out.println(bid);
		if (applyCount < count) {
			service.increaseApplyCount(bid);
			if (applyCount + 1 == count) {
				service.updateIsFull(bid);
			}
		}
	}
	
	/** 운동 참가 보낸창 (guest) */
	@GetMapping("/applyList")
	public String applyForm(Model model) {
		String uid = userSession.getUid();
		List<Board> applyList = service.getApplyList(uid);
		
		model.addAttribute("applyList", applyList);
		return "group/applyList";
	}
	
	/** 운동 참가 수락/거절창 (host)*/
	@GetMapping("/applyPerson")
	public String receiveForm(HttpServletRequest req, Model model) {
		String uid = userSession.getUid();
		int bid = Integer.parseInt(req.getParameter("bid"));
		
		List<BoardMate> receiveList = service.getReceiveList(uid, bid);
		
		List<MatchingUsers> applyUserInfoList = new ArrayList<>();
		// 오늘자 연도(나이계산을 위해서)
		int year =  LocalDate.now().getYear();
		
		for (BoardMate bm : receiveList) {
			// 운동 참가 신청한 uid
			String applyUid = bm.getUid();
			
			// 나이계산
			int age = year - (bm.getBirthDate()/10000);
			
			// 관심운동 목록 가져오기
			String likeExercise = userService.getLikeExercise(applyUid);
			List<String> likeExerList = exerciseUtill.findExercise(likeExercise);
			
			// 닉네임 가져오기
			String nickname = userService.getNickname(applyUid);
			// 프로필사진 가져오기
			String uImage = userService.getUimage(applyUid);
			
			MatchingUsers applyUserInfo = new MatchingUsers(applyUid, nickname, uImage, age, likeExerList);
			applyUserInfoList.add(applyUserInfo);
		}
		
		model.addAttribute("infoList", applyUserInfoList);
		model.addAttribute("receiveList", receiveList);
		return "group/applyPerson";
	}
	
	/** 내가 쓴 게시글 보기 (host) */
	@GetMapping("/myWrite")
	public String myWriteForm(Model model) {
		String uid = userSession.getUid();
		List<Board> myList = service.getMyList(uid);
		model.addAttribute("myList", myList);
		return "group/myWrite";
	}
	
	/** 신청 완료 게시글 목록(guest) */
	@GetMapping("/applyDone")
	public String applyDoneForm(Model model) {
		String uid = userSession.getUid();
		List<Board> applyDoneList = service.getDoneList(uid);
		model.addAttribute("applyDoneList", applyDoneList);
		return "group/applyDone";
	}
	
	/** 정원 마감 게시글 목록(host) */
	@GetMapping("/groupMade")
	public String groupMadeForm(Model model) {
		String uid = userSession.getUid();
		List<Board> myDoneList = service.getMyDoneList(uid);
		
		Map<Integer, Board> map = new HashMap<>();
		for (Board b: myDoneList) {
			map.put(b.getBid(), b);
		}
		model.addAttribute("myDoneList", map.values());
		return "group/groupMade";
	}
	
	/** 운동 참가 수락된 사람 list (host)*/
	@GetMapping("/groupMateList")
	public String Form(HttpServletRequest req, Model model) {
		String uid = userSession.getUid();
		int bid = Integer.parseInt(req.getParameter("bid"));
		
		List<BoardMate> groupMateList = service.getGMList(uid, bid);
		
		List<MatchingUsers> applyUserInfoList = new ArrayList<>();
		// 오늘자 연도(나이계산을 위해서)
		int year =  LocalDate.now().getYear();
		
		for (BoardMate bm : groupMateList) {
			// 운동 참가 신청한 uid
			String applyUid = bm.getUid();
			
			// 나이계산
			int age = year - (bm.getBirthDate()/10000);
			
			// 관심운동 목록 가져오기
			String likeExercise = userService.getLikeExercise(applyUid);
			List<String> likeExerList = exerciseUtill.findExercise(likeExercise);
			
			// 닉네임 가져오기
			String nickname = userService.getNickname(applyUid);
			// 프로필사진 가져오기
			String uImage = userService.getUimage(applyUid);
			
			MatchingUsers applyUserInfo = new MatchingUsers(applyUid, nickname, uImage, age, likeExerList);
			applyUserInfoList.add(applyUserInfo);
		}
		
		model.addAttribute("infoList", applyUserInfoList);
		model.addAttribute("groupMateList", groupMateList);
		return "group/groupMateList";
	}
}
