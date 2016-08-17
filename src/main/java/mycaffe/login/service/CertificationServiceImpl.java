package mycaffe.login.service;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import mycaffe.login.dao.CertificationDAO;

@Service("certificationService")
public class CertificationServiceImpl implements CertificationService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="certificationDAO")
	private CertificationDAO certificationDAO;
	
	@Override
	public int getCertificationNumber(int certNumber) {
		// TODO Auto-generated method stub
		return certificationDAO.getCertificationNumber(certNumber);
	}

}
