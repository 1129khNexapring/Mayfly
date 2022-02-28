package org.oneday.mayfly.comments.service;

import java.util.List;


import org.oneday.mayfly.comments.domain.Comments;
import org.oneday.mayfly.comments.domain.CommentsPageInfo;

public interface CommentsService {

	public int registerComments(Comments comments);
	public int modifyComments(Comments comments);
	public int removeComments(int commentsNo);

	public Comments printOneByNo(Integer commentsNo);

	public List<Comments> printAll(CommentsPageInfo pi);

	public int getListCount();




}
