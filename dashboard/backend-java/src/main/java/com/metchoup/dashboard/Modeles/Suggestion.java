package com.metchoup.dashboard.Modeles;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "suggestions")
public class Suggestion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "langue_source")
    private String langueSource;

    @Column(name = "langue_traduite")
    private String langueTraduite;

    @Column(name = "expression_source")
    private String expressionSource;

    @Column(name = "expression_traduite")
    private String expressionTraduite;

    @Column(name = "date_ajout")
    private Date dateAjout;

    @Column(name = "nom_audio")
    private String nomAudio;

    @Column(name = "email_personne")
    private String emailPersonne;

    // Constructeurs, getters et setters

    public Suggestion() {
    }

    public Suggestion(String langueSource, String langueTraduite, String expressionSource, String expressionTraduite,
            Date dateAjout, String nomAudio, String emailPersonne) {
        this.langueSource = langueSource;
        this.langueTraduite = langueTraduite;
        this.expressionSource = expressionSource;
        this.expressionTraduite = expressionTraduite;
        this.dateAjout = dateAjout;
        this.nomAudio = nomAudio;
        this.emailPersonne = emailPersonne;
    }

    /**
     * @return long return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return String return the langueSource
     */
    public String getLangueSource() {
        return langueSource;
    }

    /**
     * @param langueSource the langueSource to set
     */
    public void setLangueSource(String langueSource) {
        this.langueSource = langueSource;
    }

    /**
     * @return String return the langueTraduite
     */
    public String getLangueTraduite() {
        return langueTraduite;
    }

    /**
     * @param langueTraduite the langueTraduite to set
     */
    public void setLangueTraduite(String langueTraduite) {
        this.langueTraduite = langueTraduite;
    }

    /**
     * @return String return the expressionSource
     */
    public String getExpressionSource() {
        return expressionSource;
    }

    /**
     * @param expressionSource the expressionSource to set
     */
    public void setExpressionSource(String expressionSource) {
        this.expressionSource = expressionSource;
    }

    /**
     * @return String return the expressionTraduite
     */
    public String getExpressionTraduite() {
        return expressionTraduite;
    }

    /**
     * @param expressionTraduite the expressionTraduite to set
     */
    public void setExpressionTraduite(String expressionTraduite) {
        this.expressionTraduite = expressionTraduite;
    }

    /**
     * @return Date return the dateAjout
     */
    public Date getDateAjout() {
        return dateAjout;
    }

    /**
     * @param dateAjout the dateAjout to set
     */
    public void setDateAjout(Date dateAjout) {
        this.dateAjout = dateAjout;
    }

    /**
     * @return String return the nomAudio
     */
    public String getNomAudio() {
        return nomAudio;
    }

    /**
     * @param nomAudio the nomAudio to set
     */
    public void setNomAudio(String nomAudio) {
        this.nomAudio = nomAudio;
    }

    /**
     * @return String return the emailPersonne
     */
    public String getEmailPersonne() {
        return emailPersonne;
    }

    /**
     * @param emailPersonne the emailPersonne to set
     */
    public void setEmailPersonne(String emailPersonne) {
        this.emailPersonne = emailPersonne;
    }

}