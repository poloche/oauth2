package org.plc.travelx.oauth2.domain.repository;

import org.plc.travelx.oauth2.domain.Credentials;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by poloche
 */
public interface CredentialRepository extends JpaRepository<Credentials,Long> {
    Credentials findByName(String name);
}