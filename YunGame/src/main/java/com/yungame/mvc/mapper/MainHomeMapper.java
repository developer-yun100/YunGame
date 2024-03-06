package com.yungame.mvc.mapper;

import com.yungame.mvc.dto.MainHomeDTO;
import com.yungame.mvc.dto.UserDTO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MainHomeMapper {

    // 회원 검색
    @Select("SELECT * FROM YUNDB.DBO.USERS WHERE USERID = #{userId} AND PASSWORD = #{password}")
    public UserDTO selectSessionUser(UserDTO paramDTO);
    // 회원 가입
    public int createUser(UserDTO paramDTO);

    // 게임 홍보글
    @Select("SELECT T1.*, T2.USERNAME FROM YUNDB.DBO.BOARD T1 INNER JOIN YUNDB.DBO.USERS T2 ON T1.USERID = T2.USERID WHERE BOARDTYPE = #{boardType}")
    public MainHomeDTO selectGamesBoardView(MainHomeDTO paramDTO);

    @Select("SELECT COUNT(*) AS totalCnt FROM YUNDB.DBO.BOARD WHERE BOARDTYPE = #{boardType}")
    public int selectBoardTotalCnout(MainHomeDTO paramDTO);

    // 게시글 보기
    @Select("EXEC YUNDB.DBO.SEL_BOARDVIEW #{seq}, #{boardType}")
    public MainHomeDTO selectBoardView(MainHomeDTO paramDTO);

    // 게시글 목록
    @Select("EXEC YUNDB.DBO.SEL_BOARDLIST #{boardType}, #{pageNumber}, #{pageGroupSize}, #{userName}, #{startDate}, #{endDate}")
    public List<MainHomeDTO> selectBoardList(MainHomeDTO paramDTO);

    // 게시글 등록
    @Insert("EXEC YUNDB.DBO.INS_BOARD #{userId}, #{title}, #{content}, #{boardType}")
    public int insertBoard(MainHomeDTO paramDTO);

}
