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


import com.dao.DiscusslucaixinxiDao;
import com.entity.DiscusslucaixinxiEntity;
import com.service.DiscusslucaixinxiService;
import com.entity.vo.DiscusslucaixinxiVO;
import com.entity.view.DiscusslucaixinxiView;

@Service("discusslucaixinxiService")
public class DiscusslucaixinxiServiceImpl extends ServiceImpl<DiscusslucaixinxiDao, DiscusslucaixinxiEntity> implements DiscusslucaixinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusslucaixinxiEntity> page = this.selectPage(
                new Query<DiscusslucaixinxiEntity>(params).getPage(),
                new EntityWrapper<DiscusslucaixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusslucaixinxiEntity> wrapper) {
		  Page<DiscusslucaixinxiView> page =new Query<DiscusslucaixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusslucaixinxiVO> selectListVO(Wrapper<DiscusslucaixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusslucaixinxiVO selectVO(Wrapper<DiscusslucaixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusslucaixinxiView> selectListView(Wrapper<DiscusslucaixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusslucaixinxiView selectView(Wrapper<DiscusslucaixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
