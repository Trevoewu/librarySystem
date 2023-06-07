package service.bill;

import Bean.Bill;
import dao.bill.BillDao;
import dao.bill.BillDaoImpl;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import util.DB;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@Service()
public class BillServiceImpl implements BillService{
    @Resource()
    private BillDao billDao;
    @Override
    public boolean addBill(Bill bill) {
        int affectedRows = 0;
        Connection conn = null;
        try {
            conn = DB.getConnection();
            conn.setAutoCommit(false);
            affectedRows =  billDao.addBill(conn,bill);
            conn.commit();
        } catch (SQLException e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return affectedRows > 0 ? true : false;
    }

    @Override
    public Bill findBillById(int id) {
        Bill bill;
        try {
            Connection conn = DB.getConnection();
            bill = billDao.findById(conn, id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return bill;
    }

    @Override
    public boolean delBillById(int id) {
        int affected = 0;
        try {
            Connection conn = DB.getConnection();
            affected = billDao.delBill(conn, id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return affected > 0 ? true : false;
    }

    @Override
    public boolean updateBill(int id, String key, Object value) {
        int i = 0;
        Connection conn = null;
        try {
            conn = DB.getConnection();
            conn.setAutoCommit(false);
            i = billDao.updateBill(conn, id, key, value);
            conn.commit();
        } catch (SQLException e) {
            try {
                conn.rollback();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            }
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
       return i > 0 ? true : false;
    }

    @Override
    public Bill getBllById(int id) {
        Bill bill;
        try {
            Connection conn = DB.getConnection();
            bill = billDao.getBillById(conn, id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return bill;
    }

    @Override
    public int getBillCount(String productName, int proId) {
        int count = 0;
        try {
            Connection conn = DB.getConnection();
            count = billDao.getBillCount(conn, productName, proId);
            DB.close(conn,null,null);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return count;
    }

    @Override
    public List<Bill> getBillList(String productName, int proId, int currPage, int pageSize, int isPayment){
        List<Bill> billList = new ArrayList<>();
        try {
            Connection conn = DB.getConnection();
            billList = billDao.getBillList(conn, productName, proId, currPage, pageSize, isPayment);
            DB.close(conn,null,null);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return billList;
    }
}
