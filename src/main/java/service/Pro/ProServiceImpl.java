package service.Pro;

import Bean.Provider;
import dao.Pro.ProDao;
import dao.Pro.ProDaoImpl;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import util.DB;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
@Service
public class ProServiceImpl implements ProService{
   @Resource(name = "proDaoImpl")
    private ProDao proDao;

    @Override
    public boolean delPro( int id) {
        int affected = 0;
        try {
            Connection conn = DB.getConnection();
            affected = proDao.delPro(conn,id);
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return affected > 0 ? true : false;
    }

    @Override
    public boolean addPro( Provider pro) {
        int affected = 0;
        try {
            Connection conn = DB.getConnection();
            affected = proDao.addPro(conn,pro);
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return affected > 0 ? true : false;
    }

    @Override
    public Provider getProById(int id) {
        Provider pro = new Provider();
        try {
            Connection conn = DB.getConnection();
            pro = proDao.getProById(conn,id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return pro;
    }

    @Override
    public boolean updatePro(String key, Object value, int id) {
        int affected = 0;
        try {
            Connection conn = DB.getConnection();
            affected = proDao.updatePro(conn,key,value,id);
            conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return affected > 0 ? true : false;
    }

    @Override
    public int getProCount(String ProCode, String ProName) {
        int count = 0;
        try {
            Connection conn = DB.getConnection();
            count = proDao.getProCount(conn, ProCode, ProName);
            DB.close(conn,null,null);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        return count;
    }

    @Override
    public List<Provider> getProList(String ProCode, String ProName, int currPage, int pageSize) {
        List<Provider> proList;
        try {
            Connection conn = DB.getConnection();
            proList = proDao.getProList(conn, ProCode, ProName, currPage, pageSize);
            DB.close(conn,null,null);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return proList;
    }
}
