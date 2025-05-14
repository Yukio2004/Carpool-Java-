package com.caelan.caelancarpool.mapper;

import com.caelan.caelancarpool.pojo.AddressList;
import com.caelan.caelancarpool.pojo.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.time.LocalTime;
import java.util.List;

@Mapper
public interface UserMapper {

    public List<Integer> timeMatchD(@Param("departure") LocalTime departure, @Param("day") String day, @Param("timeDiff") int seconds);
    public List<Integer> timeMatchL(@Param("leaving") LocalTime leaving, @Param("day") String day, @Param("timeDiff")int seconds);
    public List<AddressList> findAddress(@Param("ids") List<Integer> ids);
    public List<UserInfo> finalMatch(@Param("ids") List<Integer> ids);
}
/*
    //Tuesday Matching
    @Select("select user_id from tuesday " +
            "where abs(timestampdiff(minute,departure_time1,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time2,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time3,#{departure}))<=20")
    public List<String> timeMatchTuesdayD(@Param("departure") LocalTime departure);

    @Select("select user_id from tuesday " +
            "where abs(timestampdiff(minute,leaving_time1,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time2,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time3,#{leaving}))<=20")
    public List<UserInfo> timeMatchTuesdayL(@Param("leaving") LocalTime leaving);


    //Wednesday Matching
    @Select("select user_id from wednesday " +
            "where abs(timestampdiff(minute,departure_time1,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time2,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time3,#{departure}))<=20")
    public List<String> timeMatchWednesdayD(@Param("departure") LocalTime departure);

    @Select("select user_id from wednesday " +
            "where abs(timestampdiff(minute,leaving_time1,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time2,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time3,#{leaving}))<=20")
    public List<UserInfo> timeMatchWednesdayL(@Param("leaving") LocalTime leaving);


    //Thursday Matching
    @Select("select user_id from thursday " +
            "where abs(timestampdiff(minute,departure_time1,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time2,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time3,#{departure}))<=20")
    public List<String> timeMatchThursdayD(@Param("departure") LocalTime departure);

    @Select("select user_id from thursday " +
            "where abs(timestampdiff(minute,leaving_time1,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time2,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time3,#{leaving}))<=20")
    public List<UserInfo> timeMatchThursdayL(@Param("leaving") LocalTime leaving);

    //Friday Matching
    @Select("select user_id from friday " +
            "where abs(timestampdiff(minute,departure_time1,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time2,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time3,#{departure}))<=20")
    public List<String> timeMatchFridayD(@Param("departure") LocalTime departure);

    @Select("select user_id from friday " +
            "where abs(timestampdiff(minute,leaving_time1,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time2,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time3,#{leaving}))<=20")
    public List<UserInfo> timeMatchFridayL(@Param("leaving") LocalTime leaving);

    //Saturday
    @Select("select user_id from saturday " +
            "where abs(timestampdiff(minute,departure_time1,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time2,#{departure}))<=20 " +
            "or abs(timestampdiff(minute,departure_time3,#{departure}))<=20")
    public List<String> timeMatchSaturdayD(@Param("departure") LocalTime departure);

    @Select("select user_id from saturday " +
            "where abs(timestampdiff(minute,leaving_time1,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time2,#{leaving}))<=20 " +
            "or abs(timestampdiff(minute,leaving_time3,#{leaving}))<=20")
    public List<UserInfo> timeMatchSaturdayL(@Param("leaving") LocalTime leaving);
}
*/