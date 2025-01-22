package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.LucaifenleiDao;
import com.entity.LucaifenleiEntity;
import com.service.LucaifenleiService;
import com.entity.vo.LucaifenleiVO;
import com.entity.view.LucaifenleiView;

@Service("lucaifenleiService")
public class LucaifenleiServiceImpl extends ServiceImpl<LucaifenleiDao, LucaifenleiEntity> implements LucaifenleiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LucaifenleiEntity> page = this.selectPage(
                new Query<LucaifenleiEntity>(params).getPage(),
                new EntityWrapper<LucaifenleiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LucaifenleiEntity> wrapper) {
		  Page<LucaifenleiView> page =new Query<LucaifenleiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LucaifenleiVO> selectListVO(Wrapper<LucaifenleiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LucaifenleiVO selectVO(Wrapper<LucaifenleiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LucaifenleiView> selectListView(Wrapper<LucaifenleiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LucaifenleiView selectView(Wrapper<LucaifenleiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
