package com.dao;

import com.entity.LucaifenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.LucaifenleiVO;
import com.entity.view.LucaifenleiView;


/**
 * 卤菜分类
 * 
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
public interface LucaifenleiDao extends BaseMapper<LucaifenleiEntity> {
	
	List<LucaifenleiVO> selectListVO(@Param("ew") Wrapper<LucaifenleiEntity> wrapper);
	
	LucaifenleiVO selectVO(@Param("ew") Wrapper<LucaifenleiEntity> wrapper);
	
	List<LucaifenleiView> selectListView(@Param("ew") Wrapper<LucaifenleiEntity> wrapper);

	List<LucaifenleiView> selectListView(Pagination page,@Param("ew") Wrapper<LucaifenleiEntity> wrapper);
	
	LucaifenleiView selectView(@Param("ew") Wrapper<LucaifenleiEntity> wrapper);
	

}
