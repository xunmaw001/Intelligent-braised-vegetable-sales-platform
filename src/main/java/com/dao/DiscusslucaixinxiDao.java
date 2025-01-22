package com.dao;

import com.entity.DiscusslucaixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusslucaixinxiVO;
import com.entity.view.DiscusslucaixinxiView;


/**
 * 卤菜信息评论表
 * 
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
public interface DiscusslucaixinxiDao extends BaseMapper<DiscusslucaixinxiEntity> {
	
	List<DiscusslucaixinxiVO> selectListVO(@Param("ew") Wrapper<DiscusslucaixinxiEntity> wrapper);
	
	DiscusslucaixinxiVO selectVO(@Param("ew") Wrapper<DiscusslucaixinxiEntity> wrapper);
	
	List<DiscusslucaixinxiView> selectListView(@Param("ew") Wrapper<DiscusslucaixinxiEntity> wrapper);

	List<DiscusslucaixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusslucaixinxiEntity> wrapper);
	
	DiscusslucaixinxiView selectView(@Param("ew") Wrapper<DiscusslucaixinxiEntity> wrapper);
	

}
