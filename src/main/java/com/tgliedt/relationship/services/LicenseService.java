package com.tgliedt.relationship.services;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.tgliedt.relationship.models.License;
import com.tgliedt.relationship.models.Person;
import com.tgliedt.relationship.repositories.LicenseRepository;

@Service
public class LicenseService {
	// adding the license repository as a dependency
    private final LicenseRepository licenseRepository;
    
    public LicenseService(LicenseRepository licenseRepository) {
        this.licenseRepository = licenseRepository;
    }
    // returns all the licenses
    public List<License> allLicenses() {
        return licenseRepository.findAll();
    }
    // creates a license
    public License createLicense(License b) {
    	System.out.println("-------------------Inside Create Lisence" + b.getExpirationDate());
    	Person person = b.getPerson();
    	b.setNumber(createLicenseNo(person));
        return licenseRepository.save(b);
    }
    
    public String createLicenseNo(Person person) {
    	String rawId = person.getId().toString();
    	int noOfZeros = (6 - rawId.length()); 
    	String licenseNumber = new String();
    	for (int i = 0; i <= noOfZeros; i++) {
    		licenseNumber += "0";
    	}
    	licenseNumber += rawId;
        return licenseNumber;
    }
    
    // retrieves a license
    public License findLicense(Long id) {
    	
        Optional<License> optionalLicense = licenseRepository.findById(id);
        if(optionalLicense.isPresent()) {
            return optionalLicense.get();
        } else {
            return null;
        }
    }
    
 // update a license
    public License updateLicense(License license) {
    	return licenseRepository.save(license);
    }
    
    public void deleteLicense(Long id) {
    	if (licenseRepository.existsById(id)) {
    		licenseRepository.deleteById(id);
    	}
	}
}
