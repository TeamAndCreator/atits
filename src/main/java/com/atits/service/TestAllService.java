package com.atits.service;

import com.atits.entity.TestAll;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Transactional
@Service
public class TestAllService {
    public void save(TestAll testAll) {
    }

    public List<TestAll> findByPage(int iDisplayStart, int iDisplayLength) {
        return null;
    }

    public Long findByPageCunnt() {
        return null;
    }
}
