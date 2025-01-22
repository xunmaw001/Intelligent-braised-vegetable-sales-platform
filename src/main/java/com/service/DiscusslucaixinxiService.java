package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusslucaixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusslucaixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusslucaixinxiView;


/**
 * 卤菜信息评论表
 *
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
public interface DiscusslucaixinxiService extends IService<DiscusslucaixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusslucaixinxiVO> selectListVO(Wrapper<DiscusslucaixinxiEntity> wrapper);
   	
   	DiscusslucaixinxiVO selectVO(@Param("ew") Wrapper<DiscusslucaixinxiEntity> wrapper);
   	
   	List<DiscusslucaixinxiView> selectListView(Wrapper<DiscusslucaixinxiEntity> wrapper);
   	
   	DiscusslucaixinxiView selectView(@Param("ew") Wrapper<DiscusslucaixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusslucaixinxiEntity> wrapper);
   	

}

