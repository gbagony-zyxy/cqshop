package com.cqshop.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cqshop.util.JsonUtils;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JacksonJsonTest {

	public static void main(String[] args) {
		JacksonJsonTest jsonImple=new JacksonJsonTest();
        ObjectMapper mapper = new ObjectMapper();
        
        List dataList = new ArrayList();
        Map<String,Object> map = new HashMap<String,Object>();
        BaseObject object1 = new BaseObject();
        object1.setUserName("张三");

        object1.setWeight(65.5);
        object1.setHeight(170);
        object1.setSex(true);
        String[] score={"80","90","95"};
        object1.setArray(score);
        BaseObject object2=new BaseObject();  
        object2.setUserName("李四");
        object2.setWeight(75.5);
        object2.setHeight(171);
        object2.setSex(true); 
        score=new String[3];
        score[0]="65";
        score[1]="68";
        score[2]="75";
        object2.setArray(score);
        object1.setInnerObject(object2);
        dataList.add(object1); 
        map.put("baseObject", dataList);
        String json=JsonUtils.toJson(object1);
        System.out.println(json);

	}

}
