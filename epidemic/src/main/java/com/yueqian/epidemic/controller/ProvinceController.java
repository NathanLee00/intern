package com.yueqian.epidemic.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.yueqian.epidemic.beans.AjaxResponseInfo;
import com.yueqian.epidemic.beans.ProvinceInfo;
import com.yueqian.epidemic.service.ProvinceService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
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
    public AjaxResponseInfo<List<ProvinceInfo>> getNoDataInput(String date){
        logger.debug("日期："+date);
        AjaxResponseInfo<List<ProvinceInfo>> responseInfo=new AjaxResponseInfo<>();
        List<ProvinceInfo> list=provinceService.getProvinceNoDate(date);
        if(!StringUtils.isEmpty(date)){
            list=provinceService.getProvinceNoDate(date);
            responseInfo.setData(list);
        }else{
           responseInfo.setCode(-1);
           responseInfo.setMsg("日期参数不正确");
        }
         return responseInfo;
    }
}
