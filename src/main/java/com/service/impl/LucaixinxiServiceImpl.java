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


import com.dao.LucaixinxiDao;
import com.entity.LucaixinxiEntity;
import com.service.LucaixinxiService;
import com.entity.vo.LucaixinxiVO;
import com.entity.view.LucaixinxiView;

@Service("lucaixinxiService")
public class LucaixinxiServiceImpl extends ServiceImpl<LucaixinxiDao, LucaixinxiEntity> implements LucaixinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<LucaixinxiEntity> page = this.selectPage(
                new Query<LucaixinxiEntity>(params).getPage(),
                new EntityWrapper<LucaixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<LucaixinxiEntity> wrapper) {
		  Page<LucaixinxiView> page =new Query<LucaixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<LucaixinxiVO> selectListVO(Wrapper<LucaixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public LucaixinxiVO selectVO(Wrapper<LucaixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<LucaixinxiView> selectListView(Wrapper<LucaixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public LucaixinxiView selectView(Wrapper<LucaixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
