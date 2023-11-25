package in.vishwa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import in.vishwa.model.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {
}
