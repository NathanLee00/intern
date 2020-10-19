package com.yueqian.epidemic.mapper;

import com.yueqian.epidemic.beans.EpidemicInfo;
import com.yueqian.epidemic.beans.ProvinceInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EpidemicMapper {

    @Insert(value = "INSERT into epidemic(province_id,data_year,data_month,data_day,affirmed,suspected, " +
            "isolated,dead,cured,user_id,input_date) values(#{provinceId},#{dataYear},#{dataMonth},#{dataDay}, " +
            "#{affirmed},#{suspected},#{isolated},#{dead},#{cured},#{userId},#{inputDate});")
    int epidemicDataInput(EpidemicInfo epidemicInfo);

}
