package service.role;

import Bean.Role;
import dao.role.RoleDao;
import dao.role.RoleDaoImpl;
import dao.user.UserDao;
import dao.user.UserDaoImpl;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;
import util.DB;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@Service
public class RoleServiceImpl implements RoleService {
    @Resource(name = "roleDaoImpl")
    RoleDao roleDao;
    @Override
    public List<Role> getRoleList(int id) {
        List<Role> roles = new ArrayList<>();
        try {
            Connection conn = DB.getConnection();
            roles = roleDao.getRolelist(conn, id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return roles;
    }

}
