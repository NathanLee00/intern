package com.yueqian.epidemic.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping(value = "/ajax",produces ="text/html;charset=utf-8")
public class AjaxController {

    private Logger logger= Logger.getLogger(AjaxController.class);

    @RequestMapping("/ajaxDemo")
    @ResponseBody
    public String ajaxDemo(String userName){
        logger.debug("userName:"+userName);
        Map<String,Object> map=new HashMap<String,Object>();
        String msg="";
        if(userName.equals("admin")){
            map.put("msg","此用户名已经被占用了，请更换一下");
        }else{
            map.put("msg","此用户名可以使用！");
        }
        ObjectMapper mapper=new ObjectMapper();
        String jsonstr=null;
        try{
            jsonstr=mapper.writeValueAsString(map);
            logger.debug("json内容:"+jsonstr);
        }catch (JsonProcessingException e){
            e.printStackTrace();
        }
        return jsonstr;
    }
}
