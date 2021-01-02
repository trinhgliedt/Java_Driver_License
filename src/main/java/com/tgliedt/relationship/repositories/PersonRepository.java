package com.tgliedt.relationship.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.tgliedt.relationship.models.Person;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {
	// this method retrieves all the Persons from the database
    List<Person> findAll();
    
//    List<Person> findByArtistContaining(String searchStr);
//    List<Person> findFirst10ByOrderByRatingDesc();
	
	
}
