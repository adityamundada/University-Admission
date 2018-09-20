import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cg.uas.controller.*;
import com.cg.uas.dao.IApplicantDao;
import com.cg.uas.dao.IMACDao;
import com.cg.uas.entities.LoginBean;
import com.cg.uas.exception.UniversityException;

import static org.junit.Assert.*;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {TestBeanConfig.class})
public class UserControllerTest {
	
	@Autowired
	private IMACDao dao;
	
	@Test
	public void validateUser_Test_Positive() {
		try {
			dao.viewAllScheduledPrograms();
		} catch (UniversityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}