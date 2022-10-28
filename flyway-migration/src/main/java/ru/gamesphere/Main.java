package ru.gamesphere;

import org.flywaydb.core.Flyway;

public class Main {

    public static final String CONNECTION = "jdbc:postgresql://localhost:5432/";
    public static final String DB_NAME = "flyway";
    public static final String USERNAME = "postgres";
    public static final String PASSWORD = "123456789";

    public static void main(String[] args) {
        final Flyway flyway = Flyway
                .configure()
                .dataSource(CONNECTION + DB_NAME, USERNAME, PASSWORD)
                .locations("db")
                .load();
        flyway.migrate();
    }
}
