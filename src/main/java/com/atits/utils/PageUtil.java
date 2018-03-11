package com.atits.utils;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class PageUtil {

    public Map<String, String> pageParams(String params) {
        Map<String, String> map = new HashMap<String, String>();
        JSONArray jsonarray = JSONArray.fromObject(params);

        for (int i = 0; i < jsonarray.size(); i++) {
            JSONObject obj = (JSONObject) jsonarray.get(i);
            if (obj.get("name").equals("sEcho"))
                map.put("sEcho", obj.get("value").toString());
            if (obj.get("name").equals("iDisplayStart"))
                map.put("iDisplayStart", obj.get("value").toString());
            if (obj.get("name").equals("iDisplayLength"))
                map.put("iDisplayLength", obj.get("value").toString());
            if (obj.get("name").equals("sSearch"))
                map.put("sSearch", obj.get("value").toString());
        }
        return map;
    }


}
