package tje.Service;

import java.util.List;

import tje.DTO.RentalList;
import tje.DTO.User;

public interface UserService {

	// 회원가입
	public int signUp(User user);
	
	// 회원조회
	public User select(String id);
	
	// 회원 삭제
	public int delete(String id); 
	
	// 회원 대출 내역 조회
	public RentalList select(int no);
	
	// 회원 목록
	public List<User> list();
}