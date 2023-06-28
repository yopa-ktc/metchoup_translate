package com.metchoup.dashboard.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metchoup.dashboard.Modeles.Suggestion;
import com.metchoup.dashboard.Repository.SuggestionRespositorySQL;

@Service
public class SuggestionServiceImpl implements SuggestionService {

    @Autowired
    SuggestionRespositorySQL suggestionRespositorySQL;

    @Override
    public List<Suggestion> getAll() {
        return suggestionRespositorySQL.findAll();
    }

}