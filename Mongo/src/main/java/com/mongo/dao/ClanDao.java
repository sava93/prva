/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mongo.dao;

import com.mongo.domen.Clan;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 *
 * @author setup
 */
public interface ClanDao extends MongoRepository<Clan, Long>{
    
}
