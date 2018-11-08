package woong.mybatis;

import java.io.Reader;
import java.util.List;
import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import woong.dto.WoongDTO;

public class WoongMapper {

 	private static SqlSessionFactory sqlSession;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("Configuration.xml");
			sqlSession = new SqlSessionFactoryBuilder().build(reader);
			reader.close(); 
		} catch (IOException e) {
      // Fail fast.
			throw new RuntimeException("Something bad happened while building "
					+ "the SqlMapClient instance." + e, e);
		}
	}
	
	public static List<WoongDTO> listWoong() {
		SqlSession session = sqlSession.openSession();
		List<WoongDTO> list = null;
		try{
			list = session.selectList("listWoong");
		} finally {
			session.close();
		}
		return list;
	}
}









