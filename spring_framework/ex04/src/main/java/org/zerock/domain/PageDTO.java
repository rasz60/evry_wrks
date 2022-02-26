package org.zerock.domain;

import lombok.ToString;

@ToString
public class PageDTO {

	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int total;
	private Criteria criteria;
	
	public PageDTO(Criteria criteria, int total) {
		this.criteria = criteria;
		// 게시물의 총 개수
		this.total = total;

		this.endPage = (int)(Math.ceil(criteria.getPageNum() / 10.0)) * 10;		
		this.startPage = endPage - 9;

		this.prev = this.startPage > 1;
		
		int realEndPage = (int)( Math.ceil ((total * 1.0) / criteria.getAmount()) );
		endPage = endPage > realEndPage ? realEndPage : endPage;

		this.next = realEndPage > endPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria getCriteria() {
		return criteria;
	}

	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}
	
	
}
