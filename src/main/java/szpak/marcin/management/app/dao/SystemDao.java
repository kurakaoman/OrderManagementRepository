package szpak.marcin.management.app.dao;

import szpak.marcin.management.app.model.System;

import java.util.List;

public interface SystemDao {
    void add(System system);

    List<System> listSystem();

    void deleteSystem(Integer systemId);

    System findSystem(String name);

    void editSystem(System system);
}
