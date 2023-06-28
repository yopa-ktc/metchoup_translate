package com.metchoup.dashboard.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.metchoup.dashboard.Modeles.Suggestion;

public interface SuggestionRespositorySQL extends JpaRepository<Suggestion, Integer> {

}