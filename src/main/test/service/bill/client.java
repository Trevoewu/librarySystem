package service.bill;

import Bean.Bill;
import Bean.Provider;
import Bean.Role;
import Bean.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import service.Pro.ProServiceImpl;
import service.role.RoleServiceImpl;
import service.user.UserServiceImpl;
import util.spring.SpringConfig;

import java.util.List;

public class client {
    private ApplicationContext applicationContext = new AnnotationConfigApplicationContext(util.spring.SpringConfig.class);
    @Test
    public void testBillAnnotation() throws Exception {
        BillService billServiceImpl = applicationContext.getBean("billServiceImpl", BillService.class);
        Bill bill = billServiceImpl.findBillById(33);
        System.out.println(bill);
    }
    @Test
    public void testProAnnotations() throws Exception {
        ProServiceImpl proServiceImpl = applicationContext.getBean("proServiceImpl", ProServiceImpl.class);
//        Provider pro = proServiceImpl.getProById(20);
        List<Provider> proList = proServiceImpl.getProList(null,null,1,5);
        proList.forEach(provider -> {
            System.out.println(provider);
        });
//        System.out.println(pro);
    }
    @Test
    public void testRole() throws Exception {
        RoleServiceImpl roleServiceImpl = applicationContext.getBean("roleServiceImpl", RoleServiceImpl.class);
        List<Role> roleList = roleServiceImpl.getRoleList(-1);
        for (Role role : roleList) {
            System.out.println(role);
        }
    }
    @Test
    public void testUser(){
        UserServiceImpl userService = applicationContext.getBean("userServiceImpl", UserServiceImpl.class);
        List<User> userlist = userService.getUserlist(null, 0, 1, 5);
        for (User user : userlist) {
            System.out.println(user);
        }

    }

}
