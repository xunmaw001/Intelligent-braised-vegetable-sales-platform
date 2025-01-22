package com.entity.view;

import com.entity.LucaifenleiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 卤菜分类
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
@TableName("lucaifenlei")
public class LucaifenleiView  extends LucaifenleiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public LucaifenleiView(){
	}
 
 	public LucaifenleiView(LucaifenleiEntity lucaifenleiEntity){
 	try {
			BeanUtils.copyProperties(this, lucaifenleiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
