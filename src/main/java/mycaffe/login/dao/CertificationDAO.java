package mycaffe.login.dao;

import org.springframework.stereotype.Repository;

import mycaffe.common.dao.AbstractDAO;

@Repository("certificationDAO")
public class CertificationDAO extends AbstractDAO {
	
	public int getCertificationNumber(int certNumber) {
		
		return (Integer) selectOne("certification.getCertificationNumber", certNumber);
	}
}
