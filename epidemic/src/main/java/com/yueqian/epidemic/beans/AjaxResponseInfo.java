package com.yueqian.epidemic.beans;

import java.util.List;

public class AjaxResponseInfo<T> {
    private Integer code;
    private String msg;  //错误信息
    private T data;  //要封闭的数据

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
