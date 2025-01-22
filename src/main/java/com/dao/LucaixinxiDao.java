package com.dao;

import com.entity.LucaixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LucaixinxiVO;
import com.entity.view.LucaixinxiView;


/**
 * 卤菜信息
 * 
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
public interface LucaixinxiDao extends BaseMapper<LucaixinxiEntity> {
	
	List<LucaixinxiVO> selectListVO(@Param("ew") Wrapper<LucaixinxiEntity> wrapper);
	
	LucaixinxiVO selectVO(@Param("ew") Wrapper<LucaixinxiEntity> wrapper);
	
	List<LucaixinxiView> selectListView(@Param("ew") Wrapper<LucaixinxiEntity> wrapper);

	List<LucaixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<LucaixinxiEntity> wrapper);
	
	LucaixinxiView selectView(@Param("ew") Wrapper<LucaixinxiEntity> wrapper);
	

}
