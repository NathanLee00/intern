package com.yueqian.epidemic.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping(value = "/ajax",produces ="text/html;charset=utf-8")
public class AjaxController {

    private Logger logger= Logger.getLogger(AjaxController.class);

    @RequestMapping("/ajaxDemo")
    @ResponseBody
    public String ajaxDemo(String userName){
        logger.debug("userName:"+userName);
        String msg="";
        if(userName.equals("admin")){
            msg="此用户名已经被占用了，请更换一下";
        }else{
            msg="此用户名可以使用！";
        }
        return msg;
    }
}
