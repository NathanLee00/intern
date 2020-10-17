package com.yueqian.epidemic.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.yueqian.epidemic.beans.UserInfo;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping(value = "/ajax",produces ="text/html;charset=utf-8")
public class AjaxController {

    private Logger logger= Logger.getLogger(AjaxController.class);

    @RequestMapping("/ajaxDemo")
    @ResponseBody
    public String ajaxDemo(String userName) throws JsonProcessingException {
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
        List<UserInfo> list=new ArrayList<>();
        UserInfo userInfo1=new UserInfo();
        userInfo1.setUserAccount("23215");
        userInfo1.setUserId(1);
        userInfo1.setUserName("李华");
        userInfo1.setUserPassword("123456");
        UserInfo userInfo2=new UserInfo();
        userInfo2.setUserAccount("234536");
        userInfo2.setUserId(2);
        userInfo2.setUserName("张三");
        userInfo2.setUserPassword("123456");
        UserInfo userInfo3=new UserInfo();
        userInfo3.setUserAccount("765856");
        userInfo3.setUserId(3);
        userInfo3.setUserName("小明");
        userInfo3.setUserPassword("45547");
        list.add(userInfo1);
        list.add(userInfo2);
        list.add(userInfo3);

        String sa=mapper.writeValueAsString(list);
        return sa;
    }
}
