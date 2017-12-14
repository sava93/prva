package com.mongo;

import com.mongo.dao.ClanDao;
import com.mongo.dao.TerenDao;
import com.mongo.dao.TerminDao;
import com.mongo.domen.Clan;
import com.mongo.domen.Teren;
import com.mongo.domen.Termin;
import java.util.Date;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class MongoApplication implements CommandLineRunner {

    @Autowired
    ClanDao clanDao;

    @Autowired
    TerenDao terenDao;

    @Autowired
    TerminDao terminDao;

    public static void main(String[] args) {
        SpringApplication.run(MongoApplication.class, args);
    }

    @Override
    public void run(String... strings) throws Exception {
        
      Teren ternen=new Teren(2, "Teren B", "Sljaka");
      terenDao.save(ternen);
    }

}
