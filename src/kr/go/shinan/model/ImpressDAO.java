package kr.go.shinan.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.shinan.dto.ImpressDTO;
import kr.go.shinan.dto.PicDTO;
import kr.go.shinan.dto.TourDTO;

public class ImpressDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	
	public int fileUpload(PicDTO dto){
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.FILE_UPLOAD);
			pstmt.setString(1, dto.getTourno());
			pstmt.setString(2, dto.getPicname());
			pstmt.setInt(3, dto.getPos());
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}

	public ArrayList<PicDTO> JSONPicList(String tourno) {
		ArrayList<PicDTO> picList = new ArrayList<PicDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.JSON_PICLIST);
			pstmt.setString(1, tourno);
			rs = pstmt.executeQuery();
			while(rs.next()){
				PicDTO pic = new PicDTO();
				pic.setNo(rs.getInt("no"));
				pic.setTourno(rs.getString("tourno"));
				pic.setPicname(rs.getString("picname"));
				pic.setPos(rs.getInt("pos"));
				picList.add(pic);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return picList;
	}

	public int addImpress(ImpressDTO dto) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.ADD_IMPRESS);
			pstmt.setString(1, dto.getCate());
			/*pstmt.setString(2, dto.getTourNo());*/
			pstmt.setString(3, dto.getId());
			pstmt.setString(4, dto.getContent());
			pstmt.setDouble(5, dto.getStar());
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}

	public ArrayList<TourDTO> getTourList() {
		ArrayList<TourDTO> tourList = new ArrayList<TourDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.TOUR_LIST_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				TourDTO tour = new TourDTO();
				tour.setNo(rs.getInt("no"));
				tour.setTourno(rs.getString("tourno"));
				tour.setCate(rs.getString("cate"));
				tour.setPlace(rs.getString("place"));
				tour.setAddr(rs.getString("addr"));
				tourList.add(tour);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return tourList;
	}

	public ImpressDTO getImpress(int no) {
		ImpressDTO impress = new ImpressDTO();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.IMPRESS_LIST_DETAIL);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			while(rs.next()){
				impress.setNo(rs.getInt("no"));
				impress.setCate(rs.getString("cate"));
				/*impress.setTourno(rs.getString("tourno"));*/
				impress.setId(rs.getString("id"));
				impress.setContent(rs.getString("content"));
				impress.setStar(rs.getDouble("star"));
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return impress;
	}

	public int delTour(int no) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.TOUR_DEL);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}

	public int modifyTour(TourDTO dto) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//tourno=?, cate=?, place=?, comment1=?, comment2=?, addr=? where no=?
			pstmt = con.prepareStatement(Maria.MODIFY_TOUR);
			pstmt.setString(1, dto.getTourno());
			pstmt.setString(2, dto.getCate());
			pstmt.setString(3, dto.getPlace());
			pstmt.setString(4, dto.getComment1());
			pstmt.setString(5, dto.getComment2());
			pstmt.setString(6, dto.getAddr());
			pstmt.setInt(7, dto.getNo());
			cnt = pstmt.executeUpdate();
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}

	public ArrayList<TourDTO> JSONPlaceList() {
		ArrayList<TourDTO> tourList = new ArrayList<TourDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.TOUR_LIST_ALL);
			rs = pstmt.executeQuery();
			while(rs.next()){
				TourDTO tour = new TourDTO();
				tour.setNo(rs.getInt("no"));
				tour.setTourno(rs.getString("tourno"));
				tour.setCate(rs.getString("cate"));
				tour.setPlace(rs.getString("place"));
				tourList.add(tour);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return tourList;
	}

	public ArrayList<TourDTO> getTourCateList(String cate) {
		ArrayList<TourDTO> tourList = new ArrayList<TourDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.TOUR_CATE_LIST);
			pstmt.setString(1, cate); 
			rs = pstmt.executeQuery();
			while(rs.next()){
				TourDTO tour = new TourDTO();
				tour.setNo(rs.getInt("no"));
				tour.setTourno(rs.getString("tourno"));
				tour.setCate(rs.getString("cate"));
				tour.setPlace(rs.getString("place"));
				tour.setImgURL(rs.getString("picname"));
				tour.setComment1(rs.getString("comment1"));
				tour.setComment2(rs.getString("comment2"));
				tourList.add(tour);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
		} catch(Exception e){
			System.out.println("SQL 구문이 처리되지 못했거나 연산이 잘못되었습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return tourList;
	}
	
	public ArrayList<TourDTO> getTourSerachList(String place, String comment2, String keyword){
		ArrayList<TourDTO> tourList = new ArrayList<TourDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.TOUR_SEARCH_ALL_LIST);
			pstmt.setString(1, "%"+keyword+"%"); 
			pstmt.setString(2, "%"+keyword+"%");
			rs = pstmt.executeQuery();
			while(rs.next()){
				TourDTO tour = new TourDTO();
				tour.setNo(rs.getInt("no"));
				tour.setTourno(rs.getString("tourno"));
				tour.setCate(rs.getString("cate"));
				tour.setPlace(rs.getString("place"));
				tour.setComment1(rs.getString("comment1"));
				tour.setComment2(rs.getString("comment2"));
				tourList.add(tour);
			}
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(rs, pstmt, con);
		}
		return tourList;
}
}