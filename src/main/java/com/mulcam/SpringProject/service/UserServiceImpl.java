package com.mulcam.SpringProject.service;

import java.util.List;

import javax.annotation.Resource;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.SpringProject.dao.UserDao;
import com.mulcam.SpringProject.entity.MatchingCondition;
import com.mulcam.SpringProject.entity.Mate;
import com.mulcam.SpringProject.entity.User;
import com.mulcam.SpringProject.entity.UserInfo;
import com.mulcam.SpringProject.session.UserSession;

@Service
public class UserServiceImpl implements UserService{
	@Resource
	private UserSession userSession;
	
	@Autowired
	private UserDao userDao;

	@Override
	public void register(User u) {
		String cryptedPwd = BCrypt.hashpw(u.getPwd(), BCrypt.gensalt());
		u.setPwd(cryptedPwd);
		userDao.insert(u);
	}

	@Override
	public void registerInfo(UserInfo ui) {
		userDao.insertInfo(ui);
	}

	@Override
	public User getUser(String uid) {
		User user = userDao.getUser(uid);
		return user;
	}

	@Override
	public User getEmail(String email) {
		User user = userDao.getEmail(email);
		return user;
	}

	@Override
	public User getPhoneNum(String phoneNum) {
		User user = userDao.getPhoneNum(phoneNum);
		return user;
	}

	@Override
	public int login(String uid, String pwd) {
		try {
			User u = userDao.getUser(uid);
			if (u.getUid() != null) {	// uid가 존재
				if (BCrypt.checkpw(pwd, u.getPwd())) {		// 비밀번호 같은지 비교(암호화해서)
					// 로그인을 했을때 session에 정보 저장
					userSession.setUid(u.getUid());
					userSession.setUname(u.getUname());
					return UserService.CORRECT_LOGIN;
				}
				else {		
					// 비밀번호가 틀림, 로그인페이지로 다시이동
					return UserService.WRONG_PASSWORD;
				}
			} 	
		} catch(Exception e) {
			// uid가 없음
		}
		return UserService.UID_NOT_EXIST;
	}
	
	
	@Override
	public List<UserInfo> getCoincideInfo(String uid) {
		List<UserInfo> list = userDao.getCoincideInfo(uid);
		return list;
	}

	@Override
	public UserInfo getUserInfo(String sessionUid) {
			UserInfo userinfo = userDao.getUserInfo(sessionUid);
		return userinfo;
	}
	
	@Override
	public String getUname(String uid) {
		String uname = userDao.getUname(uid);
		return uname;
	}

	@Override
	public String getLikeExercise(String uid) {
		String exerciseList = userDao.getLikeExercise(uid);
		return exerciseList;
	}
	
	@Override
	public MatchingCondition getCondition(String uid) {
		MatchingCondition mC = userDao.getCondition(uid);
		return mC;
	}

	@Override
	public void insertCondition(MatchingCondition mC) {
		userDao.insertCondition(mC);
	}

	@Override
	public void updateCondition(MatchingCondition mC) {
		userDao.updateCondition(mC);
	}

	@Override
	public void update(User u, UserInfo ui) {
		userDao.update(u);
		userDao.updateInfo(ui);
	}

	@Override
	public void updatePwd(String uid, String newpwd) {
		String pwd = BCrypt.hashpw(newpwd, BCrypt.gensalt());
		userDao.updatePwd(uid, pwd);
	}

	@Override
	public String getUimage(String uid) {
		String profileImg = userDao.getUimage(uid);
		return profileImg;
	}



}
