package com.designus.www.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.designus.www.bean.Major;
import com.designus.www.bean.Member;
import com.designus.www.bean.MemberSearch;
import com.designus.www.bean.Question;
import com.designus.www.bean.QuestionReply;
import com.designus.www.bean.Report;

//import org.springframework.stereotype.Repository;

//@Repository
public interface IadminDao {

	List<MemberSearch> getrepInfo();

	List<MemberSearch> gettransInfo();

	Report getWriteCheck(@Param("rp_num") int rp_num);

	boolean getPermit(@Param("rp_num") int rp_num);

	boolean getPerfmit(@Param("rp_num") int rp_num);

	boolean getwarning(@Param("mb_id")String mb_id);

	List<MemberSearch> gettransforInfo();

	MemberSearch permitWriDetail(@Param("mb_id")String mb_id);

	boolean getreAuthorfuse(@Param("mb_id")String mb_id);

	boolean getreAuthoragree(@Param("mb_id")String mb_id);

	boolean getreAuthordelete(@Param("mb_id")String mb_id);

	List<Question> getquestionInfo();

	Question getquestionCheck(@Param("aq_num") int aq_num);
	
	
	
  
  
}
