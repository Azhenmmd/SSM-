import com.zhen.mapper.BookMapper;
import com.zhen.pojo.Books;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;
public class Mytest {

    @Test
    public void Test1(){
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookMapper bean = applicationContext.getBean(BookMapper.class);
        Books books = bean.queryBooksById(1);
        System.out.println(books);
    }
}
