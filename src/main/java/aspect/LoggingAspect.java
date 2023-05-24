//package aspect;
//import org.aspectj.lang.JoinPoint;
//import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Before;
//
//import java.util.Date;
//
//@Aspect
//public class LoggingAspect {
//    // 切点表达式
//    //pointcut expression "execution([访问控制权限修饰符] 返回值类型 [全限定类名].方法名(形式参数列表) [异常])"
//    // (..) 参数类型和个数随意的方法
//    // 两个点“..”代表当前包以及子包下的所有类。
////    @Before("execution(* cn.loulanblog.spring.aop..*(..))")
////    // 这就是需要增强的代码（通知）
////    public void advice(){
////        System.out.println("我是一个通知");
////    }
//    @Before("execution(protected void servlet.user.Login.doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse))")
//    public void beforeMethodExecution(JoinPoint joinPoint) {
//        String methodName = joinPoint.getSignature().getName();
//        System.out.println(new Date() +":   用户登录中: " + methodName);
//    }
//    @Before("execution(protected void servlet.user.Logout.doGet(..))")
//    public void logOutLog(JoinPoint joinPoint){
//        System.out.println("用户登出..");
//    }
//    //
////
//
//    @Before("execution(protected void test.Logtest.Hello() )")
//    public void test(JoinPoint joinPoint){
//        System.out.println("execute test");
//    }
//}
