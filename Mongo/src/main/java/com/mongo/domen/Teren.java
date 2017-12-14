/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mongo.domen;

 
import java.io.Serializable;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
 

/**
 *
 * @author setup
 */
 @Document(collection = "teren")
public class Teren implements Serializable {

 
    @Id
    private Integer terenid;
     
    private String naziv;
    
   
   
    private String podloga;
 
 

    public Teren() {
    }

    public Teren(Integer terenid) {
        this.terenid = terenid;
    }

    public Teren(Integer terenid, String naziv, String podloga) {
        this.terenid = terenid;
        this.naziv = naziv;
        this.podloga = podloga;
    }

    public Integer getTerenid() {
        return terenid;
    }

    public void setTerenid(Integer terenid) {
        this.terenid = terenid;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public String getPodloga() {
        return podloga;
    }

    public void setPodloga(String podloga) {
        this.podloga = podloga;
    }

 

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (terenid != null ? terenid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Teren)) {
            return false;
        }
        Teren other = (Teren) object;
        if ((this.terenid == null && other.terenid != null) || (this.terenid != null && !this.terenid.equals(other.terenid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "domen.Teren[ terenid=" + terenid + " ]";
    }
    
}
