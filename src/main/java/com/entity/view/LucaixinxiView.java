package com.entity.view;

import com.entity.LucaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 卤菜信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
@TableName("lucaixinxi")
public class LucaixinxiView  extends LucaixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public LucaixinxiView(){
	}
 
 	public LucaixinxiView(LucaixinxiEntity lucaixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, lucaixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
