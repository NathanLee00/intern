package com.yueqian.epidemic.service;

import com.yueqian.epidemic.beans.ProvinceInfo;

import java.util.List;

public interface ProvinceService {
    List<ProvinceInfo> getProvinceNoDate(String date);

}
