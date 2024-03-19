package com.zerock.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zerock.domain.BoardVO;
import com.zerock.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java ������ ���
// @ContextConfiguration(classes = {com.zerock.config.RootConfig.class})
@Log4j
public class BoardServiceTests {

	@Setter(onMethod_ = @Autowired)
	private BoardService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testRegister() {
		BoardVO vo = new BoardVO();
		vo.setTitle("���� �ۼ��ϴ� ��");
		vo.setContent("���� �ۼ��ϴ� ����");
		vo.setWriter("newbie");
		
		service.register(vo);
		
		log.info("������ �Խñ��� ��ȣ: "+vo.getBno());
	}
	
	@Test
	public void testGetList() {
		service.getList(new Criteria(2, 10)).forEach(board -> log.info(board));
	}
	
	@Test
	public void testGet() {
		log.info(service.get(2L));
	}
	
	@Test
	public void testDelete() {
		
		// �Խù� ��ȣ�� ���� ���� Ȯ�� �� �׽�Ʈ�� ��
		log.info("REMOVE RESULT: " +service.remove(2L));
	}

	@Test
	public void testUpdate() {
		
		BoardVO vo = service.get(1L);
		if(vo == null) return;
		
		vo.setTitle("���� �����մϴ�.");
		log.info("MODIFY RESULT: "+service.modify(vo));
	}
}
