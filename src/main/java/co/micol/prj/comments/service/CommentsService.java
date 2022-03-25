package co.micol.prj.comments.service;

import java.util.List;

public interface CommentsService {
	List<CommentsVO> commentsSelectList();
	CommentsVO commentsSelect(CommentsVO vo);
	int commentsInsert(CommentsVO vo);
	int commentsUpdate(CommentsVO vo);
	int commentsDelete(CommentsVO vo);
}
