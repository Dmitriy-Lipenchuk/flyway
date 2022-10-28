plugins {
    application
}

group = "ru.gamesphere"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

application {
    mainClass.set("ru.gamesphere.Main")
}

dependencies {
    implementation("org.postgresql:postgresql:42.5.0")
    implementation("org.flywaydb:flyway-core:9.6.0")
}
