package gov.iti.jets.persistance.DBManager;

import jakarta.persistence.*;

public final class Connection {
    private static EntityManagerFactory entityManagerFactory = null;

    private Connection() {}

    public static synchronized EntityManagerFactory getInstance() {
        if (entityManagerFactory == null) {
            entityManagerFactory = Persistence.createEntityManagerFactory("myPersistenceUnit");
        }
        return entityManagerFactory;
    }
}

