package com.yueqian.epidemic.service.impl;

import com.yueqian.epidemic.beans.EpidemicInfo;
import com.yueqian.epidemic.beans.ProvinceInfo;
import com.yueqian.epidemic.mapper.EpidemicMapper;
import com.yueqian.epidemic.mapper.ProvinceMapper;
import com.yueqian.epidemic.service.EpidemicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EpidemicServiceImpl implements EpidemicService {


    @Autowired
    private EpidemicMapper epidemicMapper;
    @Override
    public int SaveInfo(EpidemicInfo epidemicInfo) {
        epidemicMapper.epidemicDataInput(epidemicInfo);
        return 0;
    }
}
