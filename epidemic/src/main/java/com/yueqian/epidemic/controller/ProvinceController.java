package com.yueqian.epidemic.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.yueqian.epidemic.beans.ProvinceInfo;
import com.yueqian.epidemic.service.ProvinceService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/province")
public class ProvinceController {
    private Logger logger=Logger.getLogger(ProvinceController.class);

    @Autowired
    private ProvinceService provinceService;

    @ResponseBody
    @GetMapping("/ajax/noDataList")
    public List<ProvinceInfo> getNoDataInput(String date){
        logger.debug("日期："+date);
        List<ProvinceInfo> list=provinceService.getProvinceNoDate(date);
        ObjectMapper om=new ObjectMapper();

         return list;
    }
}
