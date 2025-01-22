package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LucaixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LucaixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LucaixinxiView;


/**
 * 卤菜信息
 *
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
public interface LucaixinxiService extends IService<LucaixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LucaixinxiVO> selectListVO(Wrapper<LucaixinxiEntity> wrapper);
   	
   	LucaixinxiVO selectVO(@Param("ew") Wrapper<LucaixinxiEntity> wrapper);
   	
   	List<LucaixinxiView> selectListView(Wrapper<LucaixinxiEntity> wrapper);
   	
   	LucaixinxiView selectView(@Param("ew") Wrapper<LucaixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LucaixinxiEntity> wrapper);
   	

}

