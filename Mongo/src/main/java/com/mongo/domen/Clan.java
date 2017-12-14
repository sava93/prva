/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mongo.domen;
 
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
 

 


/**
 *
 * @author setup
 */
 @Entity
 public class Clan implements Serializable {

 @Id
 
    private Long id;
  
 
 @Column(name = "kuca")
    private String ime;
 
    private String prezime;
 
    private String mesto;
 
    private String ulica;
 
    private String broj;
 
    private String email;
 
    private String kontaktTelefon;
 
  
    public Clan() {
    }

    public Clan(String ime, String prezime, String mesto, String ulica, String broj, String email, String kontaktTelefon) {
        this.ime = ime;
        this.prezime = prezime;
        this.mesto = mesto;
        this.ulica = ulica;
        this.broj = broj;
        this.email = email;
        this.kontaktTelefon = kontaktTelefon;
    }
    

    public Clan(Long clanid) {
        this.id = clanid;
    }

    public Clan(Long clanid, String ime, String prezime, String mesto, String ulica, String broj, String kontaktTelefon) {
        this.id = clanid;
        this.ime = ime;
        this.prezime = prezime;
        this.mesto = mesto;
        this.ulica = ulica;
        this.broj = broj;
        this.kontaktTelefon = kontaktTelefon;
    }

    public Long getClanid() {
        return id;
    }

    public void setClanid(Long clanid) {
        this.id = clanid;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getMesto() {
        return mesto;
    }

    public void setMesto(String mesto) {
        this.mesto = mesto;
    }

    public String getUlica() {
        return ulica;
    }

    public void setUlica(String ulica) {
        this.ulica = ulica;
    }

    public String getBroj() {
        return broj;
    }

    public void setBroj(String broj) {
        this.broj = broj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getKontaktTelefon() {
        return kontaktTelefon;
    }

    public void setKontaktTelefon(String kontaktTelefon) {
        this.kontaktTelefon = kontaktTelefon;
    }

  
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Clan)) {
            return false;
        }
        Clan other = (Clan) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "domen.Clan[ clanid=" + id + " ]";
    }
    
}
