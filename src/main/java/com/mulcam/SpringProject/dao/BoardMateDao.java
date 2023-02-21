package com.mulcam.SpringProject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.mulcam.SpringProject.entity.Board;
import com.mulcam.SpringProject.entity.BoardMate;
import com.mulcam.SpringProject.entity.User;
import com.mulcam.SpringProject.entity.UserInfo;

@Mapper
public interface BoardMateDao {
	@Insert("INSERT INTO boardMate VALUES(#{bid}, #{uid}, #{receiveUser}, DEFAULT);")
	void apply(BoardMate bMate);

	@Delete("DELETE FROM boardMate WHERE bid=#{bid} AND uid=#{uid} AND receiveUser=#{receiveUser};")
	void applyCancel(BoardMate bMate);
	
	@Delete("DELETE FROM boardMate WHERE bid=#{bid} AND uid=#{receiveUser} AND receiveUser=#{uid};")
	void applyCancel2(BoardMate bMate);
	
	@Insert("INSERT INTO boardRelationship VALUES(#{uid}, #{receiveUser}, 1, #{bid});")
	void applyAccept(BoardMate bMate);

	@Select("SELECT COUNT(*) FROM boardMate WHERE bid=#{bid} AND uid=#{uid} AND receiveUser = #{receiveUser};")
	int confirm(BoardMate bMate);

	@Select("SELECT COUNT(*) FROM boardRelationship WHERE uid=#{uid} AND uid2 = #{receiveUser}s AND bid=#{bid};")
	int confirm2(BoardMate bMate);
	
	@Select("SELECT b.uid, b.bid, b.bTitle, b.bCategory, b.bLocation, b.bAppointment, b.bUserCount, bm.receiveUser"
			+ "	FROM boardMate AS bm JOIN board AS b"
			+ "	WHERE bm.bid=b.bid AND bm.uid=#{uid};")
	List<Board> getApplyList(String uid);
	
	@Select("SELECT bm.bid, u.uid, u.likeExercise, u.gender, u.birthDate, bm.sendTime, b.bTitle"
			+ "	FROM userInfo AS u"
			+ "	JOIN boardMate AS bm"
			+ " JOIN board AS b"
			+ "	WHERE u.uid=bm.uid AND bm.bid=b.bid AND bm.receiveUser=#{uid} AND bm.bid=#{bid};")
	List<BoardMate> getReceiveList(String uid, int bid);
	
	@Select("SELECT * FROM board WHERE uid=#{uid}")
	List<Board> getMyList(String uid);
	
	@Select("SELECT b.uid, b.bid, b.bTitle, b.bCategory, b.bLocation, b.bAppointment, b.bUserCount"
			+ "	FROM board AS b JOIN boardRelationship as brs"
			+ "	WHERE b.bid=brs.bid AND brs.uid2=#{uid} AND brs.relationship=1;")
	List<Board> getDoneList(String uid);
	
}
