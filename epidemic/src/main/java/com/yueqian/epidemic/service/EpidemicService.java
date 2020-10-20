package com.yueqian.epidemic.service;

import com.yueqian.epidemic.beans.EpidemicDetailInfo;
import com.yueqian.epidemic.beans.EpidemicInfo;
import com.yueqian.epidemic.beans.ProvinceInfo;

import java.util.List;
import java.util.Map;

public interface EpidemicService {

    int SaveInfo(EpidemicInfo epidemicInfo);

    List<EpidemicDetailInfo> findLastData();
}
