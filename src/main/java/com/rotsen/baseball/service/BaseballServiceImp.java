
package com.rotsen.baseball.service;

import com.rotsen.baseball.domain.Baseball;
import com.rotsen.baseball.repository.BaseballRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class BaseballServiceImp implements BaseballService{
    
    private final BaseballRepository baseballRepository;

    public BaseballServiceImp(BaseballRepository baseballRepository) {
        this.baseballRepository = baseballRepository;
    }

    @Override
    public List<Baseball> buscarDestacados(){
        return baseballRepository.findAll();

    }

}
