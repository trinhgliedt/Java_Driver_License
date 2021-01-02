package com.tgliedt.relationship.repositories;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.tgliedt.relationship.models.License;

@Repository
public interface LicenseRepository extends CrudRepository<License, Long> {
	// this method retrieves all the Licenses from the database
    List<License> findAll();
    
//    List<License> findByArtistContaining(String searchStr);
//    List<License> findFirst10ByOrderByRatingDesc();
	
	
}
