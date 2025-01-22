package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.LucaifenleiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.LucaifenleiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.LucaifenleiView;


/**
 * 卤菜分类
 *
 * @author 
 * @email 
 * @date 2022-04-08 09:06:15
 */
public interface LucaifenleiService extends IService<LucaifenleiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<LucaifenleiVO> selectListVO(Wrapper<LucaifenleiEntity> wrapper);
   	
   	LucaifenleiVO selectVO(@Param("ew") Wrapper<LucaifenleiEntity> wrapper);
   	
   	List<LucaifenleiView> selectListView(Wrapper<LucaifenleiEntity> wrapper);
   	
   	LucaifenleiView selectView(@Param("ew") Wrapper<LucaifenleiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<LucaifenleiEntity> wrapper);
   	

}

