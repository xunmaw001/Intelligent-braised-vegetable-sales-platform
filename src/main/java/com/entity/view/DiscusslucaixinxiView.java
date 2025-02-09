package com.entity.view;

import com.entity.DiscusslucaixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 卤菜信息评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
@TableName("discusslucaixinxi")
public class DiscusslucaixinxiView  extends DiscusslucaixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusslucaixinxiView(){
	}
 
 	public DiscusslucaixinxiView(DiscusslucaixinxiEntity discusslucaixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, discusslucaixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
