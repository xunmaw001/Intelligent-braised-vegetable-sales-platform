package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.LucaixinxiEntity;
import com.entity.view.LucaixinxiView;

import com.service.LucaixinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 卤菜信息
 * 后端接口
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
@RestController
@RequestMapping("/lucaixinxi")
public class LucaixinxiController {
    @Autowired
    private LucaixinxiService lucaixinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,LucaixinxiEntity lucaixinxi, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shangjia")) {
			lucaixinxi.setShangjiazhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<LucaixinxiEntity> ew = new EntityWrapper<LucaixinxiEntity>();
		PageUtils page = lucaixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, lucaixinxi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,LucaixinxiEntity lucaixinxi, 
		HttpServletRequest request){
        EntityWrapper<LucaixinxiEntity> ew = new EntityWrapper<LucaixinxiEntity>();
		PageUtils page = lucaixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, lucaixinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( LucaixinxiEntity lucaixinxi){
       	EntityWrapper<LucaixinxiEntity> ew = new EntityWrapper<LucaixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( lucaixinxi, "lucaixinxi")); 
        return R.ok().put("data", lucaixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(LucaixinxiEntity lucaixinxi){
        EntityWrapper< LucaixinxiEntity> ew = new EntityWrapper< LucaixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( lucaixinxi, "lucaixinxi")); 
		LucaixinxiView lucaixinxiView =  lucaixinxiService.selectView(ew);
		return R.ok("查询卤菜信息成功").put("data", lucaixinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        LucaixinxiEntity lucaixinxi = lucaixinxiService.selectById(id);
		lucaixinxi.setClicknum(lucaixinxi.getClicknum()+1);
		lucaixinxi.setClicktime(new Date());
		lucaixinxiService.updateById(lucaixinxi);
        return R.ok().put("data", lucaixinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        LucaixinxiEntity lucaixinxi = lucaixinxiService.selectById(id);
		lucaixinxi.setClicknum(lucaixinxi.getClicknum()+1);
		lucaixinxi.setClicktime(new Date());
		lucaixinxiService.updateById(lucaixinxi);
        return R.ok().put("data", lucaixinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody LucaixinxiEntity lucaixinxi, HttpServletRequest request){
    	lucaixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(lucaixinxi);

        lucaixinxiService.insert(lucaixinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody LucaixinxiEntity lucaixinxi, HttpServletRequest request){
    	lucaixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(lucaixinxi);

        lucaixinxiService.insert(lucaixinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody LucaixinxiEntity lucaixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(lucaixinxi);
        lucaixinxiService.updateById(lucaixinxi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        lucaixinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<LucaixinxiEntity> wrapper = new EntityWrapper<LucaixinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shangjia")) {
			wrapper.eq("shangjiazhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = lucaixinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,LucaixinxiEntity lucaixinxi, HttpServletRequest request,String pre){
        EntityWrapper<LucaixinxiEntity> ew = new EntityWrapper<LucaixinxiEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        
        params.put("order", "desc");
		PageUtils page = lucaixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, lucaixinxi), params), params));
        return R.ok().put("data", page);
    }







}
