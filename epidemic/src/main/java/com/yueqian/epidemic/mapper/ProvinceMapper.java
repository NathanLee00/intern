package com.yueqian.epidemic.mapper;

import com.yueqian.epidemic.beans.ProvinceInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Mapper
public interface ProvinceMapper {


    @Select(value = "select province_id,province_name,province_py from provinces p where province_id not in(" +
            "   select e.province_id from epidemic e where e.data_year=#{arg0} and data_month=#{arg1} and data_day=#{arg2} " +
            " )ORDER BY p.province_id LIMIT 0,6;\n")
    public List<ProvinceInfo> getProvinceNoDateInput(int year,int month ,int day);
}
