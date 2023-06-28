package com.metchoup.dashboard.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.metchoup.dashboard.Modeles.Suggestion;
import com.metchoup.dashboard.Services.SuggestionServiceImpl;

@RestController
@RequestMapping("/")
public class SuggestionController {

    @Autowired
    SuggestionServiceImpl suggestionServiceImpl;

    @CrossOrigin
    @GetMapping("/suggestions/v1")
    public List<Suggestion> getSuggestions() {
        return suggestionServiceImpl.getAll();
    }

}