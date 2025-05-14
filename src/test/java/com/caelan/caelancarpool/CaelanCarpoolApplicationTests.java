package com.caelan.caelancarpool;

import com.caelan.caelancarpool.pojo.AddressList;
import com.caelan.caelancarpool.pojo.UserInfo;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.caelan.caelancarpool.mapper.UserMapper;

import java.time.LocalTime;
import java.util.List;

@SpringBootTest
class CaelanCarpoolApplicationTests {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void test() {
        List<Integer> x = List.of(1,2,3,4,5,6,7,8,9,10);
        List<UserInfo> a;
        a = userMapper.finalMatch(x);
        for (int i = 0; i < a.size() ; i++) {
            System.out.println(a.get(i).toString());
        }

    }

}
