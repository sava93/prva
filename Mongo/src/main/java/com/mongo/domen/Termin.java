/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mongo.domen;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.data.annotation.Id;
 
import org.springframework.data.mongodb.core.mapping.DBRef;

/**
 *
 * @author setup
 */
 
public class Termin implements Serializable {
 
 @Id
    private Long terminid;
   
 
  @Temporal(TemporalType.TIMESTAMP)
    private Date vremeod;
 
    @Temporal(TemporalType.TIMESTAMP)
    private Date vremedo;
 
    private Boolean rezervisan;
 
    private Double cena;
 
    private String napomena;
  
    @DBRef
    private Teren terenid;
    @DBRef
    private Clan clanid;

    public Termin() {
    }

    public Termin(Long terminid) {
        this.terminid = terminid;
    }

    public Termin(Long terminid, Date vremeod, Date vremedo) {
        this.terminid = terminid;
        this.vremeod = vremeod;
        this.vremedo = vremedo;
    }

    public Termin(Date vremeod, Date vremedo, Teren terenid) {
        this.vremeod = vremeod;
        this.vremedo = vremedo;
        this.terenid = terenid;
    }
    
    public Long getTerminid() {
        return terminid;
    }

    public void setTerminid(Long terminid) {
        this.terminid = terminid;
    }

    public Date getVremeod() {
        return vremeod;
    }

    public void setVremeod(Date vremeod) {
        this.vremeod = vremeod;
    }

    public Date getVremedo() {
        return vremedo;
    }

    public void setVremedo(Date vremedo) {
        this.vremedo = vremedo;
    }

    public Boolean getRezervisan() {
        return rezervisan;
    }

    public void setRezervisan(Boolean rezervisan) {
        this.rezervisan = rezervisan;
    }

    public Double getCena() {
        return cena;
    }

    public void setCena(Double cena) {
        this.cena = cena;
    }

    public String getNapomena() {
        return napomena;
    }

    public void setNapomena(String napomena) {
        this.napomena = napomena;
    }

    public Teren getTerenid() {
        return terenid;
    }

    public void setTerenid(Teren terenid) {
        this.terenid = terenid;
    }

    public Clan getClanid() {
        return clanid;
    }

    public void setClanid(Clan clanid) {
        this.clanid = clanid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (terminid != null ? terminid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Termin)) {
            return false;
        }
        Termin other = (Termin) object;
        if ((this.terminid == null && other.terminid != null) || (this.terminid != null && !this.terminid.equals(other.terminid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "domen.Termin[ terminid=" + terminid + " ]";
    }
    
}
