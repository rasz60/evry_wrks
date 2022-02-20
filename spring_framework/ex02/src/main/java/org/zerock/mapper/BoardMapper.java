package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;
import org.zerock.domain.BoardVO;

public interface BoardMapper {
	
	@Select("SELECT * FROM tbl_board ORDER BY bno DESC")
	List<BoardVO> getList();
	
	@Insert("INSERT INTO tbl_board(bno, title, content, writer) VALUES (seq_board.nextval, #{title}, #{content}, #{writer})")
	void insert(BoardVO bVo);
	
	@Insert("INSERT INTO tbl_board(bno, title, content, writer) VALUES (seq_board.nextval, #{title}, #{content}, #{writer})")
	@SelectKey(statement="SELECT seq_board.currval FROM dual", before = false, keyProperty="bno", resultType=Long.class)
	void insertSelectKey(BoardVO bVo);
	// selectKey는 insert를 실행하고 현재 키의 값을 가져온다.
	
	@Select("SELECT * FROM tbl_board WHERE bno=#{bno}")
	BoardVO read(Long bvo);
	
	@Delete("DELETE FROM tbl_board WHERE bno=#{bno}")
	int delete(Long bvo);
	
	@Update("UPDATE tbl_board SET title=#{title}, content= #{content}, writer = #{writer}, updatedate = SYSDATE WHERE bno = #{bno}")
	int update(BoardVO bvo);
}
